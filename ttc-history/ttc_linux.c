#include "ttc_linux.h"

#include <stdio.h>

int ttc_linux_print_xdp_attach_plan(const ttc_xdp_attach_spec_t *spec) {
    if (spec == NULL) {
        return -1;
    }

    printf("# XDP attach plan\n");
    printf("ip link set dev %s xdp obj %s sec %s\n",
           spec->ifname,
           spec->object_path,
           spec->section_name);
    printf("# flags: %u\n", spec->xdp_flags);
    printf("# next: use AF_XDP or perf/ring buffer to export canonical bytes to user space\n");
    return 0;
}

int ttc_linux_print_af_xdp_plan(const char *ifname, uint32_t queue_id) {
    if (ifname == NULL) {
        return -1;
    }
    printf("# AF_XDP plan\n");
    printf("bind raw socket to ifname=%s queue=%u\n", ifname, queue_id);
    printf("map ingress packet bytes into replay feed\n");
    printf("emit receipts to stdout, fifo, or unix socket\n");
    return 0;
}

int ttc_linux_print_cgroup_plan(const char *group_name) {
    if (group_name == NULL) {
        return -1;
    }
    printf("# cgroup v2 plan\n");
    printf("mkdir -p /sys/fs/cgroup/%s\n", group_name);
    printf("echo '+cpu +memory +pids' > /sys/fs/cgroup/cgroup.subtree_control\n");
    printf("echo $$ > /sys/fs/cgroup/%s/cgroup.procs\n", group_name);
    return 0;
}
