#ifndef TTC_POSIX_H
#define TTC_POSIX_H

#include <stddef.h>
#include <stdint.h>

#include "ttc_core.h"

#ifdef __cplusplus
extern "C" {
#endif

int ttc_run_stdio(ttc_state_t *state);
int ttc_run_fifo(ttc_state_t *state, const char *path);
int ttc_run_unix_socket(ttc_state_t *state, const char *path);
int ttc_write_receipts_fd(int fd, const ttc_step_receipt_t *receipts, size_t count);

#ifdef __cplusplus
}
#endif

#endif
