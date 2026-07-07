# kernel_adjacent_c_project

A combined C project with two CLI tools:

- **ttc** — Trinity TTC core (replay, stdio, FIFO, Unix socket, XDP/cgroup plans)
- **polyform** — SVG barcode renderer (polyform, beetag, aztec, maxicode, smith chart)

## Build

```sh
make
```

## TTC CLI Usage

Replay a hex stream:

```sh
./bin/ttc replay-hex 2b2c2d2e2f1b1c1d1e1f41424344
```

Run on stdin:

```sh
printf 'ABC' | ./bin/ttc stdio
```

FIFO mode:

```sh
./bin/ttc fifo /tmp/ttc.fifo
# in another shell
printf 'ABC' > /tmp/ttc.fifo
```

Unix socket mode:

```sh
./bin/ttc unix /tmp/ttc.sock
# in another shell
python3 - <<'PY'
import socket
s=socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
s.connect('/tmp/ttc.sock')
s.sendall(b'ABC')
s.close()
PY
```

Print Linux adapter plans:

```sh
./bin/ttc xdp-plan eth0 linux/xdp_stub.bpf.o xdp
./bin/ttc afxdp-plan eth0 0
./bin/ttc cgroup-plan ttc-demo
```

## Polyform CLI Usage

Inspect a codepoint:

```sh
./bin/polyform inspect 0123456789
```

Generate SVG files:

```sh
./bin/polyform polyform-svg 0123456789 out/polyform.svg
./bin/polyform beetag-svg 12345 out/beetag.svg
./bin/polyform aztec-svg 0123456789 out/aztec.svg
./bin/polyform maxicode-svg 0123456789 out/maxicode.svg
./bin/polyform smith-svg out/smith.svg
./bin/polyform rods-svg 7 out/rods.svg
./bin/polyform guess-svg 1 100 out/guess.svg
```

## Files

- `include/ttc_core.h` — TTC constitutional ABI
- `src/ttc_core.c` — deterministic replay core
- `src/ttc_posix.c` — POSIX transport runners
- `src/ttc_linux.c` — Linux adapter plan printers
- `include/svg.h` — SVG rendering API
- `src/svg.c` — SVG output implementation
- `include/pf.h` — polyform/core API
- `linux/xdp_stub.bpf.c` — tiny XDP ingress stub
- `docs/ARCHITECTURE.md` — ring model and invariants

## Notes

This project does **not** yet implement:

- real libbpf loading
- AF_XDP zero-copy ring setup
- a standards-complete Aztec/MaxiCode/BEEtag encoder
- your final frozen runtime law

It is a portable systems skeleton aimed at getting as close to kernel as possible without making the core depend on the kernel.