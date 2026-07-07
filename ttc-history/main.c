#define _POSIX_C_SOURCE 200809L

#include "ttc_core.h"
#include "ttc_linux.h"
#include "ttc_posix.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void usage(const char *argv0) {
    fprintf(stderr,
            "usage:\n"
            "  %s replay-hex HEXBYTES\n"
            "  %s stdio\n"
            "  %s fifo PATH\n"
            "  %s unix PATH\n"
            "  %s xdp-plan IFNAME OBJ SEC\n"
            "  %s afxdp-plan IFNAME QUEUE\n"
            "  %s cgroup-plan NAME\n",
            argv0, argv0, argv0, argv0, argv0, argv0, argv0);
}

static int parse_hex(const char *s, uint8_t *out, size_t cap, size_t *len_out) {
    size_t len = 0;
    while (*s != '\0') {
        unsigned value;
        if (s[0] == ' ' || s[0] == ':' || s[0] == '-' || s[0] == ',') {
            ++s;
            continue;
        }
        if (sscanf(s, "%2x", &value) != 1) {
            return -1;
        }
        if (len >= cap) {
            return -1;
        }
        out[len++] = (uint8_t)value;
        s += 2;
    }
    *len_out = len;
    return 0;
}

static int cmd_replay_hex(const char *arg) {
    uint8_t bytes[1024];
    size_t len = 0;
    size_t count = 0;
    size_t i;
    ttc_state_t state;
    ttc_step_receipt_t receipts[1024];

    ttc_init(&state);
    if (parse_hex(arg, bytes, sizeof(bytes), &len) < 0) {
        fprintf(stderr, "bad hex input\n");
        return 1;
    }
    if (ttc_replay_bytes(&state, bytes, len, receipts, len, &count) != TTC_STATUS_OK) {
        fprintf(stderr, "replay failed\n");
        return 1;
    }
    for (i = 0; i < count; ++i) {
        printf("tick=%llu input=%02x state=%u winner=%u flags=%u digest=%08x\n",
               (unsigned long long)receipts[i].tick,
               (unsigned)receipts[i].input,
               (unsigned)receipts[i].state,
               (unsigned)receipts[i].winner,
               (unsigned)receipts[i].flags,
               (unsigned)receipts[i].step_digest);
    }
    return 0;
}

int main(int argc, char **argv) {
    ttc_state_t state;
    ttc_init(&state);

    if (argc < 2) {
        usage(argv[0]);
        return 1;
    }

    if (strcmp(argv[1], "replay-hex") == 0 && argc >= 3) {
        return cmd_replay_hex(argv[2]);
    }
    if (strcmp(argv[1], "stdio") == 0) {
        return ttc_run_stdio(&state) == 0 ? 0 : 1;
    }
    if (strcmp(argv[1], "fifo") == 0 && argc >= 3) {
        return ttc_run_fifo(&state, argv[2]) == 0 ? 0 : 1;
    }
    if (strcmp(argv[1], "unix") == 0 && argc >= 3) {
        return ttc_run_unix_socket(&state, argv[2]) == 0 ? 0 : 1;
    }
    if (strcmp(argv[1], "xdp-plan") == 0 && argc >= 5) {
        ttc_xdp_attach_spec_t spec;
        spec.ifname = argv[2];
        spec.object_path = argv[3];
        spec.section_name = argv[4];
        spec.xdp_flags = 0;
        return ttc_linux_print_xdp_attach_plan(&spec) == 0 ? 0 : 1;
    }
    if (strcmp(argv[1], "afxdp-plan") == 0 && argc >= 4) {
        return ttc_linux_print_af_xdp_plan(argv[2], (uint32_t)strtoul(argv[3], NULL, 10)) == 0 ? 0 : 1;
    }
    if (strcmp(argv[1], "cgroup-plan") == 0 && argc >= 3) {
        return ttc_linux_print_cgroup_plan(argv[2]) == 0 ? 0 : 1;
    }

    usage(argv[0]);
    return 1;
}
