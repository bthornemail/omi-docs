#ifndef TTC_CORE_H
#define TTC_CORE_H

#include <stddef.h>
#include <stdint.h>

#include "pf.h"

#ifdef __cplusplus
extern "C" {
#endif

#define TTC_TRACE_CAPACITY 1024u
#define TTC_EVENT_CAPACITY 256u
#define TTC_ADDRESS_LANES 8u

typedef uint64_t ttc_word40_t;

enum {
    TTC_STATUS_OK = 0,
    TTC_STATUS_OVERFLOW = 1,
    TTC_STATUS_BAD_INPUT = 2
};

typedef enum {
    TTC_EVENT_NONE = 0,
    TTC_EVENT_INPUT = 1,
    TTC_EVENT_STEP = 2,
    TTC_EVENT_RECEIPT = 3
} ttc_event_kind_t;

typedef struct {
    uint64_t tick;
    uint8_t input;
    uint8_t state;
    uint8_t winner;
    uint8_t flags;
    uint16_t reserved;
    uint32_t step_digest;
} ttc_step_receipt_t;

typedef struct {
    uint64_t tick;
    uint8_t kind;
    uint8_t a;
    uint8_t b;
    uint8_t c;
    uint32_t data;
} ttc_trace_event_t;

typedef struct {
    uint64_t tick;
    uint8_t current_state;
    uint8_t previous_state;
    uint8_t winner;
    uint8_t chirality;
    uint8_t header8[8];
    uint8_t lane;
    uint8_t channel;
    uint8_t slot;
    uint8_t flags;
    uint8_t omicron_mode;
    uint32_t step_digest;
    uint32_t artifact_hash;
    size_t trace_count;
    ttc_trace_event_t trace[TTC_TRACE_CAPACITY];
} ttc_state_t;

void ttc_init(ttc_state_t *state);
uint32_t ttc_step(ttc_state_t *state, uint8_t input, ttc_step_receipt_t *receipt);
uint32_t ttc_replay_bytes(ttc_state_t *state,
                          const uint8_t *bytes,
                          size_t length,
                          ttc_step_receipt_t *receipts,
                          size_t receipt_capacity,
                          size_t *receipt_count);

ttc_word40_t ttc_pack_word40(const uint8_t bytes[5]);
void ttc_unpack_word40(ttc_word40_t word, uint8_t bytes[5]);
uint32_t ttc_fnv1a32(const void *data, size_t length);
void ttc_project_header8(const ttc_state_t *state, uint8_t out_header8[8]);

void ttc_set_omicron_mode(ttc_state_t *state, pf_control_mode_t mode);
void ttc_toggle_omicron_mode(ttc_state_t *state);

#ifdef __cplusplus
}
#endif

#endif
