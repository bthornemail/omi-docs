#include "ttc_core.h"
#include "pf.h"

#include <string.h>

#define TTC_WORD40_MASK UINT64_C(0x000000ffffffffff)
#define TTC_FLAG_ESC 0x01u
#define TTC_FLAG_BOUNDARY 0x02u
#define TTC_FLAG_OMICRON_MODE 0x04u
#define TTC_OMICRON_THRESHOLD 420u

static uint64_t ttc_derive_codepoint(uint8_t previous_state, uint8_t input, uint64_t tick) {
    uint64_t cp = 0;
    cp |= (uint64_t)previous_state << 32;
    cp |= (uint64_t)input << 24;
    cp |= (uint64_t)(tick & 0x00ffffffULL);
    return cp & TTC_WORD40_MASK;
}

static uint8_t ttc_pick_winner_from_continuation(const pf_continuation_t *cont, 
                                                   uint8_t previous_state, 
                                                   uint8_t input, 
                                                   uint64_t tick) {
    uint64_t cp = ttc_derive_codepoint(previous_state, input, tick);
    pf_codepoint40_t codepoint;
    if (!pf_codepoint_from_u64(cp, &codepoint)) {
        return (uint8_t)(cp % 7u);
    }
    
    pf_polyform_t poly;
    if (!pf_polyform_from_codepoint(&codepoint, &poly)) {
        return (uint8_t)(cp % 7u);
    }
    
    uint8_t poly_winner = (uint8_t)((codepoint.groups5[0] + codepoint.groups5[1] + codepoint.groups5[2]) % 7u);
    
    uint8_t cont_output = pf_continuation_execute(cont, (uint8_t)(poly_winner ^ input));
    
    return (uint8_t)((poly_winner + cont_output) % 7u);
}

static uint8_t ttc_next_state_from_continuation(const pf_continuation_t *cont,
                                                 uint8_t previous_state, 
                                                 uint8_t input, 
                                                 uint8_t winner) {
    uint64_t cp = ttc_derive_codepoint(previous_state, input, 0);
    pf_codepoint40_t codepoint;
    if (!pf_codepoint_from_u64(cp, &codepoint)) {
        return (uint8_t)((previous_state + input + winner) & 0x3fu);
    }
    
    pf_polyform_t poly;
    if (!pf_polyform_from_codepoint(&codepoint, &poly)) {
        return (uint8_t)((previous_state + input + winner) & 0x3fu);
    }
    
    uint8_t basis_offset = (uint8_t)poly.basis;
    uint8_t rank_offset = (uint8_t)poly.rank << 2;
    uint8_t group_offset = (uint8_t)poly.group;
    
    uint8_t base_state = (uint8_t)((basis_offset + rank_offset + group_offset + previous_state + input + winner) & 0x3fu);
    
    uint8_t cont_output = pf_continuation_execute(cont, base_state);
    
    return (uint8_t)((base_state + cont_output) & 0x3fu);
}

static uint32_t ttc_step_digest_local(uint64_t tick,
                                      uint8_t prev_state,
                                      uint8_t curr_state,
                                      uint8_t input,
                                      uint8_t winner) {
    uint8_t bytes[12];
    bytes[0] = (uint8_t)(tick >> 0);
    bytes[1] = (uint8_t)(tick >> 8);
    bytes[2] = (uint8_t)(tick >> 16);
    bytes[3] = (uint8_t)(tick >> 24);
    bytes[4] = (uint8_t)(tick >> 32);
    bytes[5] = (uint8_t)(tick >> 40);
    bytes[6] = (uint8_t)(tick >> 48);
    bytes[7] = (uint8_t)(tick >> 56);
    bytes[8] = prev_state;
    bytes[9] = curr_state;
    bytes[10] = input;
    bytes[11] = winner;
    return ttc_fnv1a32(bytes, sizeof(bytes));
}

uint32_t ttc_fnv1a32(const void *data, size_t length) {
    const uint8_t *p = (const uint8_t *)data;
    uint32_t h = UINT32_C(2166136261);
    size_t i;
    for (i = 0; i < length; ++i) {
        h ^= p[i];
        h *= UINT32_C(16777619);
    }
    return h;
}

void ttc_init(ttc_state_t *state) {
    size_t i;
    memset(state, 0, sizeof(*state));
    for (i = 0; i < 8; ++i) {
        state->header8[i] = (uint8_t)i;
    }
    state->omicron_mode = PF_MODE_ASYMMETRIC;
}

ttc_word40_t ttc_pack_word40(const uint8_t bytes[5]) {
    ttc_word40_t word = 0;
    word |= (ttc_word40_t)bytes[0] << 32;
    word |= (ttc_word40_t)bytes[1] << 24;
    word |= (ttc_word40_t)bytes[2] << 16;
    word |= (ttc_word40_t)bytes[3] << 8;
    word |= (ttc_word40_t)bytes[4] << 0;
    return word & TTC_WORD40_MASK;
}

void ttc_unpack_word40(ttc_word40_t word, uint8_t bytes[5]) {
    word &= TTC_WORD40_MASK;
    bytes[0] = (uint8_t)(word >> 32);
    bytes[1] = (uint8_t)(word >> 24);
    bytes[2] = (uint8_t)(word >> 16);
    bytes[3] = (uint8_t)(word >> 8);
    bytes[4] = (uint8_t)(word >> 0);
}

void ttc_project_header8(const ttc_state_t *state, uint8_t out_header8[8]) {
    uint64_t cp = ttc_derive_codepoint(state->current_state, 0, state->tick);
    pf_codepoint40_t codepoint;
    if (pf_codepoint_from_u64(cp, &codepoint)) {
        pf_polyform_t poly;
        if (pf_polyform_from_codepoint(&codepoint, &poly)) {
            size_t i;
            for (i = 0; i < 8; ++i) {
                out_header8[i] = (uint8_t)((codepoint.groups5[i] + state->lane + i) & 0xffu);
            }
            return;
        }
    }
    size_t i;
    for (i = 0; i < 8; ++i) {
        out_header8[i] = (uint8_t)((state->header8[i] + state->lane + i) & 0xffu);
    }
}

static void ttc_trace(ttc_state_t *state, uint8_t kind, uint8_t a, uint8_t b, uint8_t c, uint32_t data) {
    if (state->trace_count < TTC_TRACE_CAPACITY) {
        ttc_trace_event_t *ev = &state->trace[state->trace_count++];
        ev->tick = state->tick;
        ev->kind = kind;
        ev->a = a;
        ev->b = b;
        ev->c = c;
        ev->data = data;
    }
}

void ttc_set_omicron_mode(ttc_state_t *state, pf_control_mode_t mode) {
    if (!state) return;
    state->omicron_mode = mode;
    state->flags = (state->flags & ~TTC_FLAG_OMICRON_MODE) | 
                   (mode == PF_MODE_CIRCULAR ? TTC_FLAG_OMICRON_MODE : 0);
}

void ttc_toggle_omicron_mode(ttc_state_t *state) {
    if (!state) return;
    if (state->omicron_mode == PF_MODE_ASYMMETRIC) {
        ttc_set_omicron_mode(state, PF_MODE_CIRCULAR);
    } else {
        ttc_set_omicron_mode(state, PF_MODE_ASYMMETRIC);
    }
}

uint32_t ttc_step(ttc_state_t *state, uint8_t input, ttc_step_receipt_t *receipt) {
    uint8_t prev = state->current_state;
    uint8_t winner;
    uint8_t curr;
    
    pf_continuation_t cont;
    pf_continuation_init(&cont, state->omicron_mode);
    
    if (state->omicron_mode == PF_MODE_CIRCULAR) {
        pf_continuation_add_cell(&cont, PF_BASIS_SQUARE);
        pf_continuation_add_cell(&cont, PF_BASIS_TRIANGLE);
        pf_continuation_add_cell(&cont, PF_BASIS_HEXAGON);
        pf_omicron(&cont);
    } else {
        pf_continuation_add_cell(&cont, PF_BASIS_SQUARE);
        pf_continuation_add_cell(&cont, PF_BASIS_TRIANGLE);
        pf_gnomon(&cont);
    }
    
    winner = ttc_pick_winner_from_continuation(&cont, prev, input, state->tick + 1u);
    curr = ttc_next_state_from_continuation(&cont, prev, input, winner);
    
    uint8_t flags = 0;
    
    state->tick += 1u;
    state->previous_state = prev;
    state->current_state = curr;
    state->winner = winner;
    state->chirality = (uint8_t)((state->tick ^ input ^ curr) & 0x01u);
    state->lane = (uint8_t)(winner & 0x07u);
    state->channel = (uint8_t)((curr >> 1) & 0x07u);
    state->slot = (uint8_t)((input ^ curr) & 0x0fu);

    if (input == 0x1b) {
        flags |= TTC_FLAG_ESC;
    }
    if (input >= 0x1c && input <= 0x1f) {
        flags |= TTC_FLAG_BOUNDARY;
    }
    
    if (state->omicron_mode == PF_MODE_CIRCULAR) {
        flags |= TTC_FLAG_OMICRON_MODE;
    }
    
    state->flags = flags;

    uint64_t cp = ttc_derive_codepoint(prev, input, state->tick);
    pf_codepoint40_t codepoint;
    if (pf_codepoint_from_u64(cp, &codepoint)) {
        pf_polyform_t poly;
        if (pf_polyform_from_codepoint(&codepoint, &poly)) {
            size_t i;
            for (i = 0; i < 8; ++i) {
                state->header8[i] = codepoint.groups5[i];
            }
            state->header8[6] = input;
            state->header8[7] = curr;
        } else {
            state->header8[0] = 0x00u;
            state->header8[1] = 0x1bu;
            state->header8[2] = 0x1cu;
            state->header8[3] = 0x1du;
            state->header8[4] = 0x1eu;
            state->header8[5] = 0x1fu;
            state->header8[6] = input;
            state->header8[7] = curr;
        }
    } else {
        state->header8[0] = 0x00u;
        state->header8[1] = 0x1bu;
        state->header8[2] = 0x1cu;
        state->header8[3] = 0x1du;
        state->header8[4] = 0x1eu;
        state->header8[5] = 0x1fu;
        state->header8[6] = input;
        state->header8[7] = curr;
    }

    state->step_digest = ttc_step_digest_local(state->tick, prev, curr, input, winner);
    state->artifact_hash = ttc_fnv1a32(state->header8, sizeof(state->header8));

    ttc_trace(state, TTC_EVENT_INPUT, input, prev, curr, state->artifact_hash);
    ttc_trace(state, TTC_EVENT_STEP, winner, state->lane, state->slot, state->step_digest);
    ttc_trace(state, TTC_EVENT_RECEIPT, (uint8_t)state->omicron_mode, state->chirality, state->channel, state->step_digest);

    if (receipt != NULL) {
        receipt->tick = state->tick;
        receipt->input = input;
        receipt->state = curr;
        receipt->winner = winner;
        receipt->flags = flags;
        receipt->reserved = 0;
        receipt->step_digest = state->step_digest;
    }
    
    if (curr % TTC_OMICRON_THRESHOLD == 0) {
        ttc_toggle_omicron_mode(state);
    }
    
    return TTC_STATUS_OK;
}

uint32_t ttc_replay_bytes(ttc_state_t *state,
                          const uint8_t *bytes,
                          size_t length,
                          ttc_step_receipt_t *receipts,
                          size_t receipt_capacity,
                          size_t *receipt_count) {
    size_t i;
    size_t produced = 0;

    if ((bytes == NULL && length != 0u) || (receipt_count == NULL)) {
        return TTC_STATUS_BAD_INPUT;
    }

    for (i = 0; i < length; ++i) {
        if (receipts != NULL && produced >= receipt_capacity) {
            *receipt_count = produced;
            return TTC_STATUS_OVERFLOW;
        }
        ttc_step(state, bytes[i], receipts != NULL ? &receipts[produced] : NULL);
        produced += 1u;
    }

    *receipt_count = produced;
    return TTC_STATUS_OK;
}
