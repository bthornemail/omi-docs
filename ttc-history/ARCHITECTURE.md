# Kernel-adjacent TTC C layout

## Combined Project

This project contains two CLI tools:

- **ttc** — Trinity TTC core (replay, stdio, FIFO, Unix socket, XDP/cgroup plans)
- **polyform** — SVG barcode renderer (polyform, beetag, aztec, maxicode, smith chart)

## Constitutional center

The core is the only authoritative layer.
It is intentionally small:

- `ttc_core.h`
- `ttc_core.c`
- fixed-width integers only
- deterministic step receipts
- canonical 40-bit packing helpers
- no filesystem, sockets, svg, browser, or linux kernel dependencies

## Rings

### Ring 0 — freestanding law core
- deterministic replay
- polyform frozen runtime law (pf.h, pf.c)
- 40-bit codepoint derivation from (tick, input, prev_state)
- polyform parsing: basis/rank/group → winner and state transition
- continuation CPS transform (gnomon, omicron operator)
- asymmetric/circular mode switching
- address derivation
- step digest
- header8 projection helper

### Ring 1 — POSIX substrate
- stdin/stdout
- FIFO
- unix domain socket

### Ring 2 — Linux-near adapters
- XDP attach plan printer
- AF_XDP plan printer
- cgroup v2 plan printer
- eBPF XDP stub in `linux/xdp_stub.bpf.c`

### Ring 3 — projection surfaces
Deliberately omitted from this pass.
The law core should be able to run without them.

## Invariants

1. The core must compile without kernel headers.
2. The XDP program must never contain constitutional replay logic.
3. User/kernel handoff carries bytes or small receipts only.
4. SVG or UI belongs downstream of replay, not inside replay.

## Continuation Brick Architecture

### Control Modes

| Mode | Structure | Continuation Type | Barcode Transport |
|------|-----------|-------------------|-------------------|
| **Asymmetric** | Linear chain | Function composition | Aztec Code (spiral) |
| **Circular** | Doubly-linked cycle | Recursive fixpoint | Code 16K (stacked rows) |

### The Omicron Operator

The Omicron is the **fixed point of the gnomon** — when the polyform reaches its
natural cycle boundary (tick % 420 == 0), the mode toggles:

- `PF_MODE_ASYMMETRIC` → forward-only continuations (function composition)
- `PF_MODE_CIRCULAR` → doubly-linked continuations (recursive fixpoint)

### Continuation Cell Structure

Each cell in the continuation chain:
- `shape`: square, triangle, hexagon, etc.
- `mode`: asymmetric or circular
- `next`: forward continuation pointer
- `prev`: backward continuation pointer (circular mode)
- `transform_index`: cell's contribution to the transform

### CPS Transform

The `pf_continuation_transform()` function applies the cell's shape-based
transform to the input value:

```c
// Shape-specific transforms:
SQUARE:         (input + transform_index) % 64
TRIANGLE:       (input ^ transform_index) % 64
HEXAGON:        ((input * 3) + transform_index) % 64
RHOMBUS:        ((input ^ 0xAA) + transform_index) % 64
OCTAGON_SQUARE: ((input ^ 0x55) + transform_index) % 64
CIRCLE_ARC:     ((input + 1) * transform_index) % 64
GOLDEN_TRIANGLE: ((input * 5) + transform_index + 3) % 64
```

### Execution Modes

**Asymmetric (linear)**: Traverse forward through all cells, applying transforms.

**Circular**: Traverse with optional reversal — when `value % 420 == 0`,
reverse direction to implement the recursive fixpoint.

## Near-term path

1. ~~Replace the toy winner/state transition with your frozen constitutional law.~~ **DONE**: polyform frozen runtime law integrated.
2. ~~Continuation brick architecture.~~ **DONE**: asymmetric/circular modes with CPS transform.
3. Add real receipt serialization format.
4. Add AF_XDP userspace reader.
5. Add libbpf loader.
6. Add optional no-libc freestanding build target.
