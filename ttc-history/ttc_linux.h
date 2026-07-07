#ifndef TTC_LINUX_H
#define TTC_LINUX_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    const char *ifname;
    const char *object_path;
    const char *section_name;
    uint32_t xdp_flags;
} ttc_xdp_attach_spec_t;

int ttc_linux_print_xdp_attach_plan(const ttc_xdp_attach_spec_t *spec);
int ttc_linux_print_af_xdp_plan(const char *ifname, uint32_t queue_id);
int ttc_linux_print_cgroup_plan(const char *group_name);

#ifdef __cplusplus
}
#endif

#endif
