#define _POSIX_C_SOURCE 200809L

#include "ttc_posix.h"

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/un.h>
#include <unistd.h>

static int ttc_process_fd(ttc_state_t *state, int fd) {
    uint8_t buf[256];
    ssize_t nread;
    while ((nread = read(fd, buf, sizeof(buf))) > 0) {
        size_t i;
        for (i = 0; i < (size_t)nread; ++i) {
            ttc_step_receipt_t receipt;
            (void)ttc_step(state, buf[i], &receipt);
            dprintf(STDOUT_FILENO,
                    "%llu,%u,%u,%u,%u,%u\n",
                    (unsigned long long)receipt.tick,
                    (unsigned)receipt.input,
                    (unsigned)receipt.state,
                    (unsigned)receipt.winner,
                    (unsigned)receipt.flags,
                    (unsigned)receipt.step_digest);
        }
    }
    return (nread < 0) ? -1 : 0;
}

int ttc_write_receipts_fd(int fd, const ttc_step_receipt_t *receipts, size_t count) {
    size_t i;
    for (i = 0; i < count; ++i) {
        const ttc_step_receipt_t *r = &receipts[i];
        if (dprintf(fd,
                    "%llu,%u,%u,%u,%u,%u\n",
                    (unsigned long long)r->tick,
                    (unsigned)r->input,
                    (unsigned)r->state,
                    (unsigned)r->winner,
                    (unsigned)r->flags,
                    (unsigned)r->step_digest) < 0) {
            return -1;
        }
    }
    return 0;
}

int ttc_run_stdio(ttc_state_t *state) {
    return ttc_process_fd(state, STDIN_FILENO);
}

int ttc_run_fifo(ttc_state_t *state, const char *path) {
    int fd;
    if (mkfifo(path, 0666) < 0 && errno != EEXIST) {
        return -1;
    }
    fd = open(path, O_RDONLY);
    if (fd < 0) {
        return -1;
    }
    if (ttc_process_fd(state, fd) < 0) {
        close(fd);
        return -1;
    }
    close(fd);
    return 0;
}

int ttc_run_unix_socket(ttc_state_t *state, const char *path) {
    int server_fd;
    int client_fd;
    struct sockaddr_un addr;

    server_fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (server_fd < 0) {
        return -1;
    }

    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, path, sizeof(addr.sun_path) - 1);
    unlink(path);

    if (bind(server_fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        close(server_fd);
        return -1;
    }
    if (listen(server_fd, 1) < 0) {
        close(server_fd);
        unlink(path);
        return -1;
    }

    client_fd = accept(server_fd, NULL, NULL);
    if (client_fd < 0) {
        close(server_fd);
        unlink(path);
        return -1;
    }

    if (ttc_process_fd(state, client_fd) < 0) {
        close(client_fd);
        close(server_fd);
        unlink(path);
        return -1;
    }

    close(client_fd);
    close(server_fd);
    unlink(path);
    return 0;
}
