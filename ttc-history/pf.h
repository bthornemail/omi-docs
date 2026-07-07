#ifndef PF_H
#define PF_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#define PF_MAX_CELLS 256
#define PF_WORD5_MASK 0x1Fu
#define PF_CODEPOINT_BITS 40u

typedef enum {
    PF_BASIS_SQUARE,
    PF_BASIS_TRIANGLE,
    PF_BASIS_HEXAGON,
    PF_BASIS_RHOMBUS,
    PF_BASIS_OCTAGON_SQUARE,
    PF_BASIS_CIRCLE_ARC,
    PF_BASIS_GOLDEN_TRIANGLE,
    PF_BASIS_UNKNOWN
} pf_basis_t;

typedef enum {
    PF_RANK_PLANAR,
    PF_RANK_VOXEL,
    PF_RANK_SURFACE,
    PF_RANK_UNKNOWN
} pf_rank_t;

typedef enum {
    PF_GROUP_POLYOMINO,
    PF_GROUP_POLYHEX,
    PF_GROUP_POLYIAMOND,
    PF_GROUP_POLYCUBE,
    PF_GROUP_POLYSTICK,
    PF_GROUP_UNKNOWN
} pf_group_t;

typedef struct {
    int x;
    int y;
    int z;
} pf_cell_t;

typedef struct {
    pf_basis_t basis;
    pf_rank_t rank;
    pf_group_t group;
    unsigned degree;
    size_t cell_count;
    pf_cell_t cells[PF_MAX_CELLS];
} pf_polyform_t;

typedef struct {
    uint8_t groups5[8];
} pf_codepoint40_t;

typedef struct {
    uint8_t matrix[5][5];
    uint16_t identity15;
    uint16_t error10;
} pf_beetag_t;

typedef enum {
    PF_MODE_ASYMMETRIC = 0,
    PF_MODE_CIRCULAR = 1
} pf_control_mode_t;

typedef struct pf_continuation_cell {
    pf_basis_t shape;
    pf_control_mode_t mode;
    struct pf_continuation_cell *next;
    struct pf_continuation_cell *prev;
    uint8_t transform_index;
} pf_continuation_cell_t;

typedef struct {
    pf_control_mode_t mode;
    pf_continuation_cell_t *entry;
    pf_continuation_cell_t *exit;
    size_t cell_count;
} pf_continuation_t;

typedef uint8_t pf_omicron_t;

bool pf_codepoint_from_u64(uint64_t value, pf_codepoint40_t *out);
uint64_t pf_codepoint_to_u64(const pf_codepoint40_t *cp);
void pf_codepoint_to_bytes5x8(const pf_codepoint40_t *cp, uint8_t out[5]);

bool pf_polyform_from_codepoint(const pf_codepoint40_t *cp, pf_polyform_t *out);
void pf_polyform_grow_gnomon(pf_polyform_t *poly);

bool pf_beetag_from_identity(uint16_t identity, pf_beetag_t *out);
int pf_beetag_hamming_distance(const pf_beetag_t *a, const pf_beetag_t *b);

const char *pf_basis_name(pf_basis_t basis);
const char *pf_rank_name(pf_rank_t rank);
const char *pf_group_name(pf_group_t group);

void pf_continuation_init(pf_continuation_t *cont, pf_control_mode_t mode);
void pf_continuation_add_cell(pf_continuation_t *cont, pf_basis_t shape);
pf_continuation_cell_t *pf_gnomon(pf_continuation_t *cont);
void pf_omicron(pf_continuation_t *cont);
pf_control_mode_t pf_toggle_mode(pf_omicron_t omicron_flag);
uint8_t pf_continuation_transform(const pf_continuation_cell_t *cell, uint8_t input);
uint8_t pf_continuation_execute(const pf_continuation_t *cont, uint8_t start_input);

#endif
