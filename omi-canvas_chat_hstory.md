# Update Blackboard Evaluation

> /home/main/omi/docs/Gnomic Omicron Blackboard Evaluation.md  have a new update and this is where we left off at /home/main/omi/session-ses_0c53.md

<details><summary>14 previous messages</summary>

> I’ll pick up from the session notes and the updated evaluation doc, then identify what changed and what still needs doing.
>
> The session note is mainly a migration plan for the `omi-canon` spine. The updated blackboard evaluation doc adds concrete pipeline content, so I’m checking whether the canon already reflects any of that before editing.
>
> The earlier restructure has already been applied: `omi-canon` now has the 00-20 spine. The likely remaining task is to fold the new Blackboard Evaluation material into the canonical Blackboard/OMI-Lisp/Constitution docs cleanly.
>
> I’m going to update `10-BLACKBOARD.md` rather than duplicating the source note wholesale. The canon file should absorb the new pipeline as stable doctrine: citation, truth gates, decision tables, operator selection, Karnaugh reduction, combinator/delta stages, closure, notation, canvas attribution, and attestation.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canon/10-BLACKBOARD.md` (+246 -12)
>
> </details>
>
> `10-BLACKBOARD.md` now carries the new update as canonical construction-surface doctrine. I’m checking the index docs for stale “evaluation surface” wording so the spine stays consistent.
>
> There are stale index references in `README.md` and `19-CONSTITUTION.md`, and `tree.txt` still shows the old 13-file spine. I’m updating those so the new canonical ordering and the blackboard wording agree.
>
> <details><summary>Edited 2 files</summary>
>
> - Wrote `./omi-canon/19-CONSTITUTION.md` (+1 -1)
> - Wrote `./omi-canon/README.md` (+6 -6)
>
> </details>
>
> The README and constitution references are aligned now. I’m regenerating the repository tree snapshot because it still listed the pre-restructure filenames.
>
> The new tree snapshot is short and clean, so I’m writing that exact `tree -L 2` view into `tree.txt`.
>
> I’ve updated the tree snapshot. I’m doing a final consistency pass for stale wording and reviewing the diff before I wrap up.
>
> One wording issue surfaced in the new blackboard text: `F0`-`FE` are the non-closure rows and `FF` is the closure row, so I’m tightening that sentence.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canon/10-BLACKBOARD.md` (+1 -1)
>
> </details>
>
> That correction is in. I’m doing one last status check so I can report exactly what changed.
</details>

Picked up from `session-ses_0c53.md` and folded the new Blackboard Evaluation update into the canon.

Changed:
- [10-BLACKBOARD.md](./omi-canon/10-BLACKBOARD.md): reframed Blackboard as the canonical construction surface and added the full resolution pipeline: citation, truth gates, decision tables, Wittgenstein selection, Karnaugh reduction, combinators, Delta transition, closure, notation, canvas attribution, receipt, and attestation.
- [README.md](./omi-canon/README.md): updated stale “evaluation surface” language to “resolution/construction surface.”
- [19-CONSTITUTION.md](./omi-canon/19-CONSTITUTION.md): updated the Blackboard spine description.
- [tree.txt](./omi-canon/tree.txt): regenerated to match the current 00-20 spine.

Verification: checked for stale `evaluation surface` / `lazily evaluates` references in the updated index files; none remain.

> Here is the Haskell Pure Type repo /home/main/omi/omi-canvas that we are mkaing a canvas projector over the omi porject and this is the lasted poroject we've been building /home/main/omi/omi-isa but we relgated the official Coq proofs that prove what we are doing in /home/main/omi/omi-axioms
>
> That makes sense. From what you've uploaded, you've reached a natural handoff point. The session already captures the major architectural decisions we've converged on for **omi-canvas** and the canon restructure.
>
> If you're moving to Codex, I'd use the following as the starting contract rather than asking it to rediscover the architecture.
>
> ### Current architectural direction
>
> The project is no longer centered on "executing Lisp." It is becoming a **deterministic construction engine**.
>
> The canonical flow is now:
>
> ```text
> Cosmology
>     ↓
> Ontology
>     ↓
> Doctrine
>     ↓
> Foundations
>     ↓
> Atomic Kernel
>     ↓
> Pure Algorithms
>     ↓
> Formal Proofs
>     ↓
> ISA
>     ↓
> Protocol
>     ↓
> OMI-Lisp Declarations
>     ↓
> Blackboard
>     ↓
> Projection Faces
>     ↓
> Gauge Interrupts
>     ↓
> Surface Applications
>     ↓
> Wave Surface Interpreter
>     ↓
> IMO Ports
>     ↓
> Distributed Open World
>     ↓
> Buffer Framing
>     ↓
> Version Control
>     ↓
> Constitution
>     ↓
> Glossary
> ```
>
> The important shift is that the **Blackboard** is now the canonical evaluation surface, while geometry becomes something that appears later as a projection of accepted relations rather than an earlier mathematical prerequisite.
>
> ---
>
> ### Canonical evaluation pipeline
>
> The execution pipeline is now closer to digital logic than to an interpreter:
>
> ```text
> Declaration
>     ↓
> Canonical OMI---IMO Citation
>     ↓
> Truth Gate
>     ↓
> Decision Table
>     ↓
> Wittgenstein Operator
>     ↓
> Karnaugh Reduction
>     ↓
> Combinator
>     ↓
> Delta
>     ↓
> Blackboard
>     ↓
> Projection Face
>     ↓
> Receipt + Attestation
> ```
>
> The important distinction is that the system now produces **canonical citation and attribution**, not merely receipts.
>
> ---
>
> ### JSON Canvas becomes an encoding
>
> Instead of treating JSON Canvas as just a visualization format, you're treating it as a **projection of the canonical graph**.
>
> Roughly:
>
> ```text
> node.id
>     = OMI---IMO identity
>
> node.type
>     = o---o/---/?---?@---@ relation frame
>
> node.width
>     = data length
>
> node.height
>     = encoding base
>     (base4/base16/base60/etc.)
>
> node.x
> node.y
>     = derived address offsets
>
> node.color
>     = gauge lane
> ```
>
> Edges become constitutional relations:
>
> ```text
> fromSide / toSide
>     = citation slots
>
> toEnd
>     = proof polarity
>
> arrow
>     = constructive proof
>
> none
>     = falsification proof
>
> label
>     = invariant / algorithm / operator
> ```
>
> That gives the canvas semantic meaning rather than purely visual meaning.
>
> ---
>
> ### Constitutional Grid
>
> The current model has become
>
> ```text
> 8 Questions
> ×
> 7 Algorithms
> ×
> 4 Citation Slots
> ×
> 2 Proof Forms
> =
> 448 constitutional cells
> ```
>
> where every cell can also carry a **Wittgenstein operator (0–15)**.
>
> ---
>
> ### Next refinement
>
> The piece I think is most valuable to implement next is what you were describing at the end of this conversation:
>
> Treat the **16 Wittgenstein operators** as the **canonical local operator alphabet**.
>
> Instead of being separate from the gauge system:
>
> ```text
> Gauge
> ```
>
> ↓
>
> ```text
> Wittgenstein operator
> ```
>
> ↓
>
> ```text
> Truth Gate row
> ```
>
> ↓
>
> ```text
> Decision Table
> ```
>
> ↓
>
> ```text
> Karnaugh region
> ```
>
> ↓
>
> ```text
> Combinator
> ```
>
> ↓
>
> ```text
> Blackboard configuration
> ```
>
> In other words, the gauge selects the logical operator, the operator indexes the truth-gate row, and the truth-gate row feeds the decision table. That gives you one deterministic chain from framing bytes to logical reduction.
>
> ---
>
> One suggestion for Codex: ask it to focus on **the Haskell type engine**, not the documentation. The next high-value milestone is to make these ideas first-class types:
>
> * `Gauge`
> * `WittgensteinOperator`
> * `TruthGate`
> * `DecisionTable`
> * `KarnaughMap`
> * `Combinator`
> * `Blackboard`
> * `ProjectionFace`
> * `Attestation`
>
> with total functions between each stage. That would make the Haskell implementation directly reflect the canonical pipeline you've now established.

<details><summary>7 previous messages</summary>

> I’ll ground this in the three repos before proposing implementation work: `omi-canvas` for the Haskell type engine, `omi-isa` for the current project shape, and `omi-axioms` for the proof boundary. No edits, just inspection.
>
> The first pass shows `omi-canvas` is a small Haskell repo with core modules already present, while `omi-isa` is the C/firmware implementation and `omi-axioms` is the Coq proof source. I’m going deeper into the Haskell module boundaries and build commands so the plan can be implementable, not abstract.
>
> The current Haskell already contains an early version of the gauge/decision-table ideas inside `OMI.Lisp`, but the target pipeline types are not separated yet. I’m checking the rest of `OMI.Lisp`, the relation helpers, and whether this repo has a formal build manifest or is compiled directly with GHC.
>
> There’s no Cabal/Stack manifest in the active `omi-canvas` root; it looks like direct GHC modules with old `.hi/.o` artifacts committed or present. I’m checking module exports and existing compile behavior so the plan can include the minimum build scaffolding needed.
>
> I’ve confirmed a few important facts: `omi-canvas` compiles with direct GHC today, has no package manifest, and already has partial gauge/Wittgenstein/decision-table code mixed into `OMI.Lisp`. Before I finalize a plan, there are a few product/architecture choices that are not discoverable from the repos.
>
> I’ll treat that strictness answer as: new stages may be defined, but their fields must be composed from OMI-defined kernel/domain types rather than borrowing arbitrary external domain types. I’m checking the existing canvas dev-docs for whether v1 should emit JSON Canvas files or only build typed projections.
>
> Plan
>
> # Haskell OMI Canvas Type Engine Plan
>
> ## Summary
> Implement the next milestone in `/home/main/omi/omi-canvas` as a pure Haskell type engine for the canonical pipeline:
>
> `Declaration -> Citation -> TruthGate -> DecisionTable -> WittgensteinOperator -> KarnaughMap -> Combinator -> Delta -> Blackboard -> ProjectionFace -> Attestation`
>
> Keep this milestone scoped to `omi-canvas`. Treat `/home/main/omi/omi-isa` as the C/firmware reference and `/home/main/omi/omi-axioms` as the proof boundary, but do not modify either repo.
>
> ## Key Changes
> - Add a minimal Cabal package for repeatable builds:
>   - library exposing `OMI.Kernel`, `OMI.Core`, `OMI.Relation`, `OMI.Lisp`, `OMI.Canvas`, and new pipeline modules
>   - existing `app/Main.hs` as a compile target
>   - a small test target using only local OMI-defined values
> - Refactor the current mixed `OMI.Lisp` gauge/decision-table logic into first-class modules:
>   - `OMI.Gauge`: `Gauge`, `GaugePreHeader`, `isGauge`, `gaugeToOperator`
>   - `OMI.Wittgenstein`: 16 canonical operators, code/nibble/truth-vector mapping
>   - `OMI.TruthGate`: `TruthGate`, `TruthGateRow`, canonical gate family names
>   - `OMI.DecisionTable`: typed decision table and table extraction from `SExpr`
>   - `OMI.Karnaugh`: `KarnaughMap`, reduced region representation, deterministic reduction entrypoint
>   - `OMI.Pipeline`: total stage functions between the canonical stages
> - Preserve the strict OMI type discipline:
>   - new domain types are `data`/`newtype` wrappers over already-defined OMI kernel values such as `Bit`, `Nibble`, `Byte`, `Word16`, `Word32`, `Relation`, `SExpr`, and lists of those
>   - no arbitrary external JSON/Text/Map domain types in the core pipeline
>   - no partial stage transitions for the public pipeline; invalid input returns an OMI-defined failure stage rather than crashing
> - Update `OMI.Canvas` to model typed projection only:
>   - `ProjectionFace`, `CanvasNode`, `CanvasEdge`, `Canvas`
>   - node identity comes from canonical `OMI---IMO` citation represented as an OMI relation
>   - edges represent constitutional relations: citation slots, proof polarity, and operator attribution
>   - no `.canvas` JSON file emission in this milestone
>
> ## Interfaces
> - Public stage functions:
>   - `citeDeclaration :: SExpr -> Citation`
>   - `selectGauge :: Citation -> Gauge`
>   - `gaugeToWittgenstein :: Gauge -> WittgensteinOperator`
>   - `classifyTruthGate :: Citation -> Gauge -> TruthGate`
>   - `decisionFromGate :: TruthGate -> DecisionTable`
>   - `reduceKarnaugh :: DecisionTable -> KarnaughMap`
>   - `buildCombinator :: KarnaughMap -> Combinator`
>   - `applyDelta :: Combinator -> Delta`
>   - `constructBlackboard :: Delta -> Blackboard`
>   - `projectFace :: Blackboard -> ProjectionFace`
>   - `attestProjection :: ProjectionFace -> Attestation`
> - Public all-in-one helper:
>   - `resolveDeclaration :: SExpr -> Attestation`
> - Existing parser behavior remains available:
>   - `parseBytes :: [Byte] -> [SExpr]`
>   - decision-table parsing continues to accept the current S-expression shape
>
> ## Test Plan
> - Build checks:
>   - `cabal build all`
>   - `ghc -isrc -fforce-recomp -fno-code app/Main.hs` remains valid during transition
> - Unit tests:
>   - all 16 `F0..FF` gauge bytes map to the expected operator code `0..15`
>   - `FF 00 1C 1D 1E 1F 20 FF` matches as canonical pre-header
>   - non-`F*` gauge bytes are rejected or represented as an OMI-defined invalid stage
>   - a minimal OMI-Lisp declaration parses, cites, resolves, projects, and attests
>   - a decision-table S-expression extracts into the typed `DecisionTable`
>   - tautology `FF` produces the closure operator path
>   - contradiction `F0` produces the contradiction operator path
> - Regression checks:
>   - existing active modules still compile with `NoImplicitPrelude`
>   - no changes are required in `omi-isa` or `omi-axioms`
>
> ## Assumptions
> - This milestone is `omi-canvas` only.
> - Add Cabal as the official local build scaffold.
> - The core engine uses only OMI-defined kernel/domain types; any new type must be defined in `omi-canvas` before use.
> - Typed canvas projection is the output for this milestone; JSON Canvas 1.0 emission is deferred.
> - Coq proofs remain official in `omi-axioms`; Haskell mirrors the proven concepts but does not attempt to generate or modify Coq.
</details>

One remaining implementation boundary matters: “canvas projector” could mean typed projection only, or actual `.canvas` JSON output. The archived EDSL has JSON Canvas machinery, but the active root only has relation-wrapped canvas types.

> PLEASE IMPLEMENT THIS PLAN:
> # Haskell OMI Canvas Type Engine Plan
>
> ## Summary
> Implement the next milestone in `/home/main/omi/omi-canvas` as a pure Haskell type engine for the canonical pipeline:
>
> `Declaration -> Citation -> TruthGate -> DecisionTable -> WittgensteinOperator -> KarnaughMap -> Combinator -> Delta -> Blackboard -> ProjectionFace -> Attestation`
>
> Keep this milestone scoped to `omi-canvas`. Treat `/home/main/omi/omi-isa` as the C/firmware reference and `/home/main/omi/omi-axioms` as the proof boundary, but do not modify either repo.
>
> ## Key Changes
> - Add a minimal Cabal package for repeatable builds:
>   - library exposing `OMI.Kernel`, `OMI.Core`, `OMI.Relation`, `OMI.Lisp`, `OMI.Canvas`, and new pipeline modules
>   - existing `app/Main.hs` as a compile target
>   - a small test target using only local OMI-defined values
> - Refactor the current mixed `OMI.Lisp` gauge/decision-table logic into first-class modules:
>   - `OMI.Gauge`: `Gauge`, `GaugePreHeader`, `isGauge`, `gaugeToOperator`
>   - `OMI.Wittgenstein`: 16 canonical operators, code/nibble/truth-vector mapping
>   - `OMI.TruthGate`: `TruthGate`, `TruthGateRow`, canonical gate family names
>   - `OMI.DecisionTable`: typed decision table and table extraction from `SExpr`
>   - `OMI.Karnaugh`: `KarnaughMap`, reduced region representation, deterministic reduction entrypoint
>   - `OMI.Pipeline`: total stage functions between the canonical stages
> - Preserve the strict OMI type discipline:
>   - new domain types are `data`/`newtype` wrappers over already-defined OMI kernel values such as `Bit`, `Nibble`, `Byte`, `Word16`, `Word32`, `Relation`, `SExpr`, and lists of those
>   - no arbitrary external JSON/Text/Map domain types in the core pipeline
>   - no partial stage transitions for the public pipeline; invalid input returns an OMI-defined failure stage rather than crashing
> - Update `OMI.Canvas` to model typed projection only:
>   - `ProjectionFace`, `CanvasNode`, `CanvasEdge`, `Canvas`
>   - node identity comes from canonical `OMI---IMO` citation represented as an OMI relation
>   - edges represent constitutional relations: citation slots, proof polarity, and operator attribution
>   - no `.canvas` JSON file emission in this milestone
>
> ## Interfaces
> - Public stage functions:
>   - `citeDeclaration :: SExpr -> Citation`
>   - `selectGauge :: Citation -> Gauge`
>   - `gaugeToWittgenstein :: Gauge -> WittgensteinOperator`
>   - `classifyTruthGate :: Citation -> Gauge -> TruthGate`
>   - `decisionFromGate :: TruthGate -> DecisionTable`
>   - `reduceKarnaugh :: DecisionTable -> KarnaughMap`
>   - `buildCombinator :: KarnaughMap -> Combinator`
>   - `applyDelta :: Combinator -> Delta`
>   - `constructBlackboard :: Delta -> Blackboard`
>   - `projectFace :: Blackboard -> ProjectionFace`
>   - `attestProjection :: ProjectionFace -> Attestation`
> - Public all-in-one helper:
>   - `resolveDeclaration :: SExpr -> Attestation`
> - Existing parser behavior remains available:
>   - `parseBytes :: [Byte] -> [SExpr]`
>   - decision-table parsing continues to accept the current S-expression shape
>
> ## Test Plan
> - Build checks:
>   - `cabal build all`
>   - `ghc -isrc -fforce-recomp -fno-code app/Main.hs` remains valid during transition
> - Unit tests:
>   - all 16 `F0..FF` gauge bytes map to the expected operator code `0..15`
>   - `FF 00 1C 1D 1E 1F 20 FF` matches as canonical pre-header
>   - non-`F*` gauge bytes are rejected or represented as an OMI-defined invalid stage
>   - a minimal OMI-Lisp declaration parses, cites, resolves, projects, and attests
>   - a decision-table S-expression extracts into the typed `DecisionTable`
>   - tautology `FF` produces the closure operator path
>   - contradiction `F0` produces the contradiction operator path
> - Regression checks:
>   - existing active modules still compile with `NoImplicitPrelude`
>   - no changes are required in `omi-isa` or `omi-axioms`
>
> ## Assumptions
> - This milestone is `omi-canvas` only.
> - Add Cabal as the official local build scaffold.
> - The core engine uses only OMI-defined kernel/domain types; any new type must be defined in `omi-canvas` before use.
> - Typed canvas projection is the output for this milestone; JSON Canvas 1.0 emission is deferred.
> - Coq proofs remain official in `omi-axioms`; Haskell mirrors the proven concepts but does not attempt to generate or modify Coq.

<details><summary>12 previous messages</summary>

> I’ll implement this inside `/home/main/omi/omi-canvas` only. I’m going to keep the core modules dependency-light and preserve the current `NoImplicitPrelude` style, then add Cabal and tests around it.
>
> I’m going to add the new pipeline modules rather than forcing a risky large rewrite of `OMI.Lisp` in one pass. The existing parser and byte helpers stay stable; the new modules make the canonical stages first-class and Cabal builds them repeatably.
>
> <details><summary>Created 7 files</summary>
>
> - Wrote `./omi-canvas/omi-canvas.cabal` (+38 -0)
> - Wrote `./omi-canvas/src/OMI/DecisionTable.hs` (+54 -0)
> - Wrote `./omi-canvas/src/OMI/Gauge.hs` (+44 -0)
> - Wrote `./omi-canvas/src/OMI/Karnaugh.hs` (+23 -0)
> - Wrote `./omi-canvas/src/OMI/Pipeline.hs` (+114 -0)
> - Wrote `./omi-canvas/src/OMI/TruthGate.hs` (+100 -0)
> - Wrote `./omi-canvas/src/OMI/Wittgenstein.hs` (+99 -0)
>
> </details>
>
> The Cabal file and first-class pipeline modules are in place. I’m updating the active canvas module and entrypoint now, then I’ll add focused tests and compile everything.
>
> <details><summary>Created a file, edited 2 files</summary>
>
> - Wrote `./omi-canvas/app/Main.hs` (+4 -1)
> - Wrote `./omi-canvas/src/OMI/Canvas.hs` (+54 -7)
> - Wrote `./omi-canvas/test/Spec.hs` (+107 -0)
>
> </details>
>
> The typed canvas changes and test target are added. I expect a few compile issues from the old unqualified module exports, so I’m running the build now and will tighten imports where needed.
>
> `cabal` is not installed in this environment, so I’ll still add the Cabal scaffold but verify with direct GHC. The first GHC failure is just the new `main` signature needing an explicit Prelude import in this minimalist module.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/app/Main.hs` (+2 -0)
>
> </details>
>
> I’m compiling the new modules directly now, including the pipeline and tests, since that covers what Cabal would build once available.
>
> The direct GHC command can’t compile the app and test together because both are `Main`; I’m compiling them as separate targets, which matches the Cabal layout.
>
> The app target compiles. The new module compile exposed exactly the expected old/new name overlap from `OMI.Lisp`; I’m tightening imports so the new first-class stage names own their namespace.
>
> <details><summary>Edited 4 files</summary>
>
> - Wrote `./omi-canvas/src/OMI/DecisionTable.hs` (+1 -1)
> - Wrote `./omi-canvas/src/OMI/Karnaugh.hs` (+1 -1)
> - Wrote `./omi-canvas/src/OMI/Pipeline.hs` (+1 -1)
> - Wrote `./omi-canvas/src/OMI/Wittgenstein.hs` (+1 -1)
>
> </details>
</details>

Imports are cleaned up. I’m rerunning the pipeline and test compiles.

> nstalled cabal and ghc

<details><summary>28 previous messages</summary>

> Thanks. I’ll switch back to the intended Cabal checks and use them as the primary verification, then fix whatever the package build surfaces.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `ghc --version`
> - Ran `cabal --version`
> - Ran `git status --short`
>
> </details>
>
> Cabal is available now. I’m running the full package build and test path so we can finish against the actual scaffold.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal build all`
>
> </details>
>
> Cabal is building through the new modules; the first real issue is missing local byte constants for a few uppercase gate-name letters. I’m adding those OMI byte definitions in `OMI.TruthGate`.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/TruthGate.hs` (+12 -0)
>
> </details>
>
> I’m rerunning the Cabal build after that fix.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal build all`
>
> </details>
>
> The next issue is namespace overlap from the older modules each defining their own tiny `Bool`. I’m narrowing the imports in `OMI.Pipeline` so it uses the Lisp truth values and relation accessors without ambiguity.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/Pipeline.hs` (+10 -1)
>
> </details>
>
> I’m rerunning Cabal.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal build all`
>
> </details>
>
> The library and executable now build with Cabal. I’m running the test suite next; if it passes, I’ll also run the original direct GHC regression check.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal test all`
>
> </details>
>
> The test compile found one test fixture using a byte constant that isn’t exported by `OMI.Lisp`. I’ll keep the fixture inside the OMI-defined byte constructors rather than expanding public exports for a test-only value.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/test/Spec.hs` (+1 -1)
>
> </details>
>
> I’m rerunning the tests.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal test all`
>
> </details>
>
> The Cabal test suite passes. I’m running the direct GHC regression check and a final status/diff review.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
> - Ran `git status --short`
> - Ran `git diff --stat`
>
> </details>
>
> Build artifacts appeared under `dist-newstyle/`. I’m checking ignore rules; if Cabal artifacts aren’t ignored yet, I’ll add that small project hygiene change.
>
> <details><summary>Explored a search, ran 2 commands</summary>
>
> <details><summary>Explored a search</summary>
>
> - Searched for `.gitignore` in `.`
>
> </details>
>
> - Ran `git diff -- app/Main.hs src/OMI/Canvas.hs`
>
> - Ran `git diff --no-index /dev/null omi-canvas.cabal || true`
>
> </details>
>
> There is no root `.gitignore`, so I’m adding one for Cabal/GHC artifacts. That keeps the new build scaffold from polluting git status.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./omi-canvas/.gitignore` (+3 -0)
>
> </details>
>
> I’m doing the final verification pass with Cabal build/test, direct GHC, and git status after ignoring build artifacts.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `cabal build all`
> - Ran `cabal test all`
> - Ran `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> </details>
>
> All verification commands pass. I’m collecting the final change summary and checking that only intended files are modified.
>
> <details><summary>Explored a list, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> - Ran `git diff --stat -- . ':(exclude)dist-newstyle'`
>
> <details><summary>Explored a list</summary>
>
> - Listed files in `OMI`
>
> </details>
>
> </details>
</details>

Implemented the Haskell OMI Canvas type engine milestone in `/home/main/omi/omi-canvas`.

What changed:
- Added `omi-canvas.cabal` with library, executable, and test targets.
- Added first-class pipeline modules:
  - `OMI.Gauge`
  - `OMI.Wittgenstein`
  - `OMI.TruthGate`
  - `OMI.DecisionTable`
  - `OMI.Karnaugh`
  - `OMI.Pipeline`
- Updated `OMI.Canvas` with typed projection support: `ProjectionFace`, constitutional edge attribution, citation-slot/proof/operator fields.
- Updated `app/Main.hs` into a valid executable entrypoint.
- Added `test/Spec.hs` covering gauge/operator mapping, canonical pre-header, invalid gauge handling, declaration resolution, decision-table extraction, tautology, and contradiction.
- Added root `.gitignore` for Cabal/GHC artifacts.

Verification passed:
- `cabal build all`
- `cabal test all`
- `ghc -isrc -fforce-recomp -fno-code app/Main.hs`

I did not modify `/home/main/omi/omi-isa` or `/home/main/omi/omi-axioms`.

> Excellent checkpoint.
>
> What matters most is that this is now verified through the real package path:
>
> ```text
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> And the module boundary is clean:
>
> ```text
> Gauge → Wittgenstein → TruthGate → DecisionTable → Karnaugh → Pipeline → Canvas
> ```
>
> I’d have Codex do one final semantic review next:
>
> ```text
> Confirm every exported type reduces to an OMI relation or projection.
> Confirm no module treats Canvas as authority.
> Confirm TruthGate/DecisionTable/Karnaugh declare and reduce, but do not accept.
> Confirm Pipeline ends in attestation/receipt boundary.
> ```
>
> Then commit this as the **Haskell type-engine milestone**.

<details><summary>6 previous messages</summary>

> I’ll do a non-mutating semantic review of the current `omi-canvas` changes and build a precise commit plan from that. I won’t edit or commit while we’re in planning mode.
>
> <details><summary>Explored 7 files, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored 7 files</summary>
>
> - Read `./src/OMI/Gauge.hs`
> - Read `./src/OMI/Wittgenstein.hs`
> - Read `./src/OMI/TruthGate.hs`
> - Read `./src/OMI/DecisionTable.hs`
> - Read `./src/OMI/Karnaugh.hs`
> - Read `./src/OMI/Pipeline.hs`
> - Read `./src/OMI/Canvas.hs`
>
> </details>
>
> - Ran `cabal test all && ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> </details>
>
> The semantic review surfaced one important boundary detail: because these modules currently have open module headers, all constructors and helper functions are exported. That means callers can directly construct `Attestation`, `ProjectionFace`, `TruthGate`, etc., instead of being forced through the pipeline. For the milestone commit, I’d plan one small hardening pass before committing: add explicit export lists that expose the type names and stage functions, but hide boundary constructors where construction must be canonical.
>
> User input response
>
> - Should the milestone commit include explicit export lists to enforce the semantic boundary?
>   - Harden exports (Recommended)
>
> Plan
>
> # Haskell Type-Engine Semantic Hardening + Commit Plan
>
> ## Summary
> Before committing the Haskell type-engine milestone, perform one semantic hardening pass in `/home/main/omi/omi-canvas`: add explicit module export lists so callers can observe and advance the canonical pipeline, but cannot forge boundary objects like `Attestation` or `ProjectionFace` directly.
>
> ## Key Changes
> - Add explicit export lists to the new pipeline modules:
>   - expose type names such as `Gauge`, `WittgensteinOperator`, `TruthGate`, `DecisionTable`, `KarnaughMap`, `Combinator`, `Delta`, `Blackboard`, `Attestation`
>   - hide constructors for semantic boundary types where direct construction would bypass the pipeline
>   - expose canonical constructors/functions only: `mkGauge`, `gaugeToOperator`, `truthGateFromGauge`, `decisionTableFromSExpr`, `reduceKarnaughMap`, and the public `OMI.Pipeline` stage functions
> - Keep `Canvas` non-authoritative:
>   - expose projection/accessor functions
>   - hide or restrict direct `ProjectionFace` construction so projection comes from `projectFace` or `projectProjectionFace`
>   - do not add JSON Canvas emission
> - Preserve the current implementation scope:
>   - no changes to `/home/main/omi/omi-isa`
>   - no changes to `/home/main/omi/omi-axioms`
>   - no semantic rewrite of the already passing pipeline logic
>
> ## Semantic Review Criteria
> - Confirm every public type is built from OMI-defined kernel/domain values or typed projection wrappers.
> - Confirm `Canvas` remains a projection surface, not an acceptance authority.
> - Confirm `TruthGate`, `DecisionTable`, and `Karnaugh` classify/declare/reduce but do not accept.
> - Confirm `Pipeline` is the only public path ending at the attestation boundary.
>
> ## Test Plan
> - Run:
>   - `cabal build all`
>   - `cabal test all`
>   - `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
> - Confirm the existing tests still cover:
>   - all `F0..FF` gauge mappings
>   - canonical pre-header match
>   - invalid gauge handling
>   - declaration resolution to attestation
>   - decision-table extraction
>   - `FF` tautology and `F0` contradiction
>
> ## Commit
> - Stage only intended `omi-canvas` files, excluding `dist-newstyle/` and generated `.hi`/`.o` artifacts.
> - Commit message:
>   - `Add Haskell OMI canvas type engine`
>
> Plan implementation
>
> Status: completed
> # Haskell Type-Engine Semantic Hardening + Commit Plan
>
> ## Summary
> Before committing the Haskell type-engine milestone, perform one semantic hardening pass in `/home/main/omi/omi-canvas`: add explicit module export lists so callers can observe and advance the canonical pipeline, but cannot forge boundary objects like `Attestation` or `ProjectionFace` directly.
>
> ## Key Changes
> - Add explicit export lists to the new pipeline modules:
>   - expose type names such as `Gauge`, `WittgensteinOperator`, `TruthGate`, `DecisionTable`, `KarnaughMap`, `Combinator`, `Delta`, `Blackboard`, `Attestation`
>   - hide constructors for semantic boundary types where direct construction would bypass the pipeline
>   - expose canonical constructors/functions only: `mkGauge`, `gaugeToOperator`, `truthGateFromGauge`, `decisionTableFromSExpr`, `reduceKarnaughMap`, and the public `OMI.Pipeline` stage functions
> - Keep `Canvas` non-authoritative:
>   - expose projection/accessor functions
>   - hide or restrict direct `ProjectionFace` construction so projection comes from `projectFace` or `projectProjectionFace`
>   - do not add JSON Canvas emission
> - Preserve the current implementation scope:
>   - no changes to `/home/main/omi/omi-isa`
>   - no changes to `/home/main/omi/omi-axioms`
>   - no semantic rewrite of the already passing pipeline logic
>
> ## Semantic Review Criteria
> - Confirm every public type is built from OMI-defined kernel/domain values or typed projection wrappers.
> - Confirm `Canvas` remains a projection surface, not an acceptance authority.
> - Confirm `TruthGate`, `DecisionTable`, and `Karnaugh` classify/declare/reduce but do not accept.
> - Confirm `Pipeline` is the only public path ending at the attestation boundary.
>
> ## Test Plan
> - Run:
>   - `cabal build all`
>   - `cabal test all`
>   - `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
> - Confirm the existing tests still cover:
>   - all `F0..FF` gauge mappings
>   - canonical pre-header match
>   - invalid gauge handling
>   - declaration resolution to attestation
>   - decision-table extraction
>   - `FF` tautology and `F0` contradiction
>
> ## Commit
> - Stage only intended `omi-canvas` files, excluding `dist-newstyle/` and generated `.hi`/`.o` artifacts.
> - Commit message:
>   - `Add Haskell OMI canvas type engine`
</details>

> PLEASE IMPLEMENT THIS PLAN:
> # Haskell Type-Engine Semantic Hardening + Commit Plan
>
> ## Summary
> Before committing the Haskell type-engine milestone, perform one semantic hardening pass in `/home/main/omi/omi-canvas`: add explicit module export lists so callers can observe and advance the canonical pipeline, but cannot forge boundary objects like `Attestation` or `ProjectionFace` directly.
>
> ## Key Changes
> - Add explicit export lists to the new pipeline modules:
>   - expose type names such as `Gauge`, `WittgensteinOperator`, `TruthGate`, `DecisionTable`, `KarnaughMap`, `Combinator`, `Delta`, `Blackboard`, `Attestation`
>   - hide constructors for semantic boundary types where direct construction would bypass the pipeline
>   - expose canonical constructors/functions only: `mkGauge`, `gaugeToOperator`, `truthGateFromGauge`, `decisionTableFromSExpr`, `reduceKarnaughMap`, and the public `OMI.Pipeline` stage functions
> - Keep `Canvas` non-authoritative:
>   - expose projection/accessor functions
>   - hide or restrict direct `ProjectionFace` construction so projection comes from `projectFace` or `projectProjectionFace`
>   - do not add JSON Canvas emission
> - Preserve the current implementation scope:
>   - no changes to `/home/main/omi/omi-isa`
>   - no changes to `/home/main/omi/omi-axioms`
>   - no semantic rewrite of the already passing pipeline logic
>
> ## Semantic Review Criteria
> - Confirm every public type is built from OMI-defined kernel/domain values or typed projection wrappers.
> - Confirm `Canvas` remains a projection surface, not an acceptance authority.
> - Confirm `TruthGate`, `DecisionTable`, and `Karnaugh` classify/declare/reduce but do not accept.
> - Confirm `Pipeline` is the only public path ending at the attestation boundary.
>
> ## Test Plan
> - Run:
>   - `cabal build all`
>   - `cabal test all`
>   - `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
> - Confirm the existing tests still cover:
>   - all `F0..FF` gauge mappings
>   - canonical pre-header match
>   - invalid gauge handling
>   - declaration resolution to attestation
>   - decision-table extraction
>   - `FF` tautology and `F0` contradiction
>
> ## Commit
> - Stage only intended `omi-canvas` files, excluding `dist-newstyle/` and generated `.hi`/`.o` artifacts.
> - Commit message:
>   - `Add Haskell OMI canvas type engine`

<details><summary>16 previous messages</summary>

> I’ll apply the hardening without changing the pipeline semantics: add explicit export lists, route projection construction through accessors, update tests away from hidden constructors, then run the three checks and commit only intended files.
>
> <details><summary>Explored 3 files, ran a command</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored 3 files</summary>
>
> - Read `./src/OMI/Canvas.hs`
> - Read `./src/OMI/Pipeline.hs`
> - Read `./test/Spec.hs`
>
> </details>
>
> </details>
>
> I’m going to hide boundary constructors by adding explicit export lists, and add small accessor/validity functions where tests or downstream code need to observe results without forging them.
>
> <details><summary>Edited 7 files</summary>
>
> - Wrote `./omi-canvas/src/OMI/Canvas.hs` (+21 -1)
> - Wrote `./omi-canvas/src/OMI/DecisionTable.hs` (+15 -2)
> - Wrote `./omi-canvas/src/OMI/Gauge.hs` (+18 -2)
> - Wrote `./omi-canvas/src/OMI/Karnaugh.hs` (+7 -1)
> - Wrote `./omi-canvas/src/OMI/Pipeline.hs` (+31 -9)
> - Wrote `./omi-canvas/src/OMI/TruthGate.hs` (+17 -2)
> - Wrote `./omi-canvas/src/OMI/Wittgenstein.hs` (+35 -1)
>
> </details>
>
> Constructor hiding exposed a couple of legitimate internal dependencies: family names are canonical values rather than acceptance boundaries, and truth-gate classification should observe gauges through public accessors. I’m adjusting those plus the tests.
>
> <details><summary>Edited 2 files</summary>
>
> - Wrote `./omi-canvas/src/OMI/TruthGate.hs` (+7 -5)
> - Wrote `./omi-canvas/test/Spec.hs` (+10 -10)
>
> </details>
>
> The tests now observe validity and attestation through public functions rather than constructors. I’m running the build to catch any remaining export-list issues.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal build all`
>
> </details>
>
> Cabal build passes after export hardening. I’m running tests and direct GHC next.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `cabal test all`
> - Ran `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> </details>
>
> The verification commands pass. I’m doing a final hygiene check, then I’ll stage only the source/package/test files and create the milestone commit.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `git diff --check`
> - Ran `git status --short`
> - Ran `git diff --stat -- . ':(exclude)dist-newstyle'`
>
> </details>
>
> The working tree only has the intended milestone files. I’m staging those explicitly and committing with the requested message.
>
> <details><summary>Ran a command</summary>
>
> - Ran `git add .gitignore omi-canvas.cabal app/Main.hs src/OMI/Canvas.hs src/OMI/DecisionTable.hs src/OMI/Gauge.hs src/OMI/Karnaugh.hs src/OMI/Pipeline.hs src/OMI/TruthGate.hs src/OMI/Wittgenstein.hs test/Spec.hs && git commit -m "Add Haskell OMI canvas type engine"`
>
> </details>
>
> The commit was created. I’m checking the final repository status and commit summary now.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `git status --short`
> - Ran `git log -1 --oneline --stat`
>
> </details>
</details>

Implemented the semantic hardening and committed it.

Commit:
`a97d66f Add Haskell OMI canvas type engine`

Confirmed:
- Explicit export lists now constrain the public surface.
- `ProjectionFace` and `Attestation` constructors are hidden; callers use projection/attestation functions and accessors.
- `Canvas` remains a projection surface, not an authority.
- `TruthGate`, `DecisionTable`, and `Karnaugh` expose classification/declaration/reduction functions, not acceptance.
- `Pipeline` remains the path to the attestation boundary.

Verification passed before commit:
- `cabal build all`
- `cabal test all`
- `ghc -isrc -fforce-recomp -fno-code app/Main.hs`

Final `git status` is clean.

> That’s a clean milestone.
>
> The important part is not just that it builds; it now enforces the doctrine in the API:
>
> ```text
> constructors hidden
> ↓
> callers cannot forge authority
> ↓
> Canvas projects
> ↓
> TruthGate / DecisionTable / Karnaugh reduce
> ↓
> Pipeline reaches attestation boundary
> ```
>
> Commit to anchor:
>
> ```text
> a97d66f Add Haskell OMI canvas type engine
> ```
>
> I’d label this checkpoint:
>
> ```text
> OMI Canvas Type Engine v0
> ```
>
> Next natural step is to document the public API as the canonical handoff surface for Codex/agents.
>
> Add a README.md SKILLS.md AGENTS.md to start n /home/main/omi/omi-canvas

<details><summary>6 previous messages</summary>

> I’ll add the three repo-facing handoff docs in `omi-canvas`: a README for the public API/checkpoint, AGENTS for contributor/agent rules, and SKILLS for the local capabilities and verification workflow.
>
> <details><summary>Explored 2 files, a search, ran a command</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored 2 files, a search</summary>
>
> - Searched for `README.md` in `omi-canvas`
> - Read `~/omi/omi-canon/AGENTS.md`
> - Read `~/omi/omi-canon/SKILLS.md`
>
> </details>
>
> </details>
>
> There are no existing root docs in `omi-canvas`, and the working tree is clean. I’m adding focused repo-local docs, not copying the larger portal guidance wholesale.
>
> <details><summary>Created 3 files</summary>
>
> - Wrote `./omi-canvas/AGENTS.md` (+55 -0)
> - Wrote `./omi-canvas/README.md` (+83 -0)
> - Wrote `./omi-canvas/SKILLS.md` (+83 -0)
>
> </details>
>
> The three handoff docs are in place. I’m checking them and running the lightweight package checks to make sure the repo still builds with the new root files present.
>
> <details><summary>Explored 3 files, ran 2 commands</summary>
>
> - Ran `cabal build all && cabal test all && ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> - Ran `git status --short`
>
> <details><summary>Explored 3 files</summary>
>
> - Read `./README.md`
> - Read `./AGENTS.md`
> - Read `./SKILLS.md`
>
> </details>
>
> </details>
</details>

Added the repo handoff docs in `/home/main/omi/omi-canvas`:

- [README.md](./omi-canvas/README.md): labels `OMI Canvas Type Engine v0`, documents the public API boundary, module flow, checkpoint commit, verification, and repo boundaries.
- [AGENTS.md](./omi-canvas/AGENTS.md): gives agent rules for preserving the type-engine doctrine and Canvas non-authority.
- [SKILLS.md](./omi-canvas/SKILLS.md): captures repeatable workflows for type-engine, API review, OMI-Lisp/decision-table, canvas projection, and cross-repo boundary work.

Verification passed:
- `cabal build all`
- `cabal test all`
- `ghc -isrc -fforce-recomp -fno-code app/Main.hs`

Current status: the three docs are uncommitted new files.

> Can you do a final review of the .hs code in /home/main/omi/omi-canvas/archive to see if we are missing anything important

<details><summary>10 previous messages</summary>

> I’ll review the archived Haskell as source material against the current `OMI Canvas Type Engine v0`, focusing on important capabilities we may have left behind rather than doing a broad line-by-line audit. No edits.
>
> <details><summary>Explored 3 searches</summary>
>
> - Searched for `*.hs` in `archive`
> - Searched for `*.hs` in `src`
> - Searched for `module |data |newtype |class |type |::|encode|decode|Canvas|Event|Snapshot|Receipt|Attestation|Gauge|Karnaugh|Wittgenstein|Fano|Mnemonic|NDJSON|JSON|Aeson|SHA|hash|validate|canonical|test|Spec` in `archive`
>
> </details>
>
> The archive is much larger than the active v0 engine: it contains a full JSON Canvas EDSL, Markdown evidence tooling, Mnemonic/Fano canvas emitters, snapshot/ULP/runtime subsystems, and many golden/property tests. I’m narrowing the review to what is important for the current type-engine trajectory rather than trying to resurrect everything.
>
> <details><summary>Explored 7 files</summary>
>
> - Read `./archive/src/Desktop/CanvasEDSL.hs`
> - Read `./archive/src/MnemonicManifold/Spec.hs`
> - Read `./archive/src/MnemonicManifold/Ids.hs`
> - Read `./archive/src/MnemonicManifold/Emit.hs`
> - Read `./archive/src/ULP/Types.hs`
> - Read `./archive/src/ULP/Merkle.hs`
> - Read `./archive/src/ULP/Canonical.hs`
>
> </details>
>
> The most relevant archive pieces so far are not the runtime/network subsystems; they are the JSON Canvas EDSL, Mnemonic/Fano event projection, and canonical hash/Merkle material. I’m checking edge/event semantics and snapshot canonical validation to separate “important later” from “should be folded into v0 soon.”
>
> <details><summary>Explored 9 files</summary>
>
> - Read `./archive/src/Desktop/CanvasEDSL.hs`
> - Read `./archive/src/Snapshot/Scheduler/Types.hs`
> - Read `./archive/src/Snapshot/Scheduler/Validate.hs`
> - Read `./archive/src/Snapshot/Scheduler/Union.hs`
> - Read `./archive/src/Snapshot/Types.hs`
> - Read `./archive/src/Snapshot/Encode.hs`
> - Read `./archive/src/AlgorithmicClock.hs`
> - Read `./archive/src/oracle.hs`
> - Read `./archive/src/Stream.hs`
>
> </details>
>
> A few archive files have quality problems or old assumptions, so I would not import archive code wholesale. The valuable pieces are patterns and tests to adapt under the new OMI-native type discipline. I’m doing one more pass over archive tests and manifest/extraction tooling because those are likely the best source of missing verification, not runtime feature code.
>
> <details><summary>Explored 3 files, a search, a list, ran a command</summary>
>
> <details><summary>Explored 3 files</summary>
>
> - Read `./archive/src/Desktop/MdExtract.hs`
> - Read `./archive/src/Desktop/MdManifest.hs`
> - Read `./archive/src/Desktop/MdVerifyEvidence.hs`
>
> </details>
>
> - Ran `for f in archive/test/*.hs; do printf '\n--- %s ---\n' "$f"; sed -n '1,120p' "$f"; done`
>
> <details><summary>Explored a search, a list</summary>
>
> - Searched for `FAIL|TODO|undefined|error \"|error\(|partial|unsafe|fromJust|head |tail |read |!!|duplicate|Invalid|authority|golden|property|QuickCheck|Hspec` in `archive`
> - Listed files in `test`
>
> </details>
>
> </details>
>
> I have enough signal now. I’m pulling exact line references for the archive items I’d treat as important follow-ups or caution flags.
>
> <details><summary>Explored 7 files</summary>
>
> - Read `./archive/src/MnemonicManifold/Spec.hs`
> - Read `./archive/src/MnemonicManifold/Emit.hs`
> - Read `./archive/src/Desktop/CanvasEDSL.hs`
> - Read `./archive/test/TestMnemonicManifold.hs`
> - Read `./archive/test/TestMdExtract.hs`
> - Read `./archive/src/AlgorithmicClock.hs`
> - Read `./archive/src/Desktop/CanvasEDSL.hs`
>
> </details>
</details>

**Findings**

1. **Important, but intentionally deferred: JSON Canvas adapter**
   Archive has a full JSON Canvas 1.0 EDSL with nodes, edges, sides, end shapes, colors, and NDJSON events in [CanvasEDSL.hs](./omi-canvas/archive/src/Desktop/CanvasEDSL.hs:12). This is the main thing missing if the next step is real `.canvas` or event output.
   Do not import it wholesale: it exposes constructors openly, uses `Text`/Aeson domain models, and has a duplicated unreachable parse branch in [CanvasEDSL.hs](./omi-canvas/archive/src/Desktop/CanvasEDSL.hs:288). Adapt it later behind an adapter boundary.

2. **Important semantic material: Fano/Mnemonic projection**
   Archive has concrete Fano point/line closure logic in [Spec.hs](./omi-canvas/archive/src/MnemonicManifold/Spec.hs:50) and canvas event projection in [Emit.hs](./omi-canvas/archive/src/MnemonicManifold/Emit.hs:106). This looks valuable for future `ProjectionFace` semantics: closure counts, observer/centroid events, line invariants, and deterministic IDs.

3. **Missing verification style: provenance/evidence tests**
   Archive’s Markdown extraction tests verify determinism, golden output, evidence spans, tamper rejection, canvas pointers, and manifests in [TestMdExtract.hs](./omi-canvas/archive/test/TestMdExtract.hs:36). This is directly relevant to attestation/receipt discipline. Current v0 tests are enough for the milestone, but not yet enough for provenance-grade handoff.

4. **Missing stronger property/golden tests**
   Archive has a mature testing pattern: golden roundtrips, idempotency, rejection vectors, and QuickCheck properties. For v0, the next useful test additions would be pipeline determinism, attestation stability, invalid input staying non-authoritative, and projection accessors preserving relation fields.

5. **Do not migrate wholesale: Snapshot/ULP/Runtime**
   Snapshot, scheduler, ULP, runtime, gossip, and storage are substantial but belong to a different layer. They use `ByteString`, Aeson, IO, network/storage authority, and open data models. They are useful reference material, not missing from the pure OMI-native type engine.

6. **Caution: AlgorithmicClock is reference-only**
   [AlgorithmicClock.hs](./omi-canvas/archive/src/AlgorithmicClock.hs:75) has useful pure bitwise clock ideas, but also self-noted mismatches around “reflection”/order behavior in [AlgorithmicClock.hs](./omi-canvas/archive/src/AlgorithmicClock.hs:241). Keep it as conceptual reference, not v0 code.

**Bottom line:** nothing critical is missing from `OMI Canvas Type Engine v0`. The most important future imports are, in order: a hardened JSON Canvas adapter, Fano/Mnemonic projection semantics, provenance/manifest verification, and stronger golden/property tests.

> Full plan:
>
> ```text
> 1. Keep v0 pure core stable
> ```
>
> Do not rewrite the type engine. Current milestone stays:
>
> ```text
> Gauge → Wittgenstein → TruthGate → DecisionTable → Karnaugh → Pipeline → Canvas
> ```
>
> ---
>
> ```text
> 2. Add Markdown adapter
> ```
>
> Purpose:
>
> ```text
> Markdown → OMI citation tree
> ```
>
> It should extract:
>
> ```text
> front matter
> omi-lisp fences
> decision-table blocks
> canvas blocks
> evidence spans
> FS/GS/RS/US scope
> ```
>
> Markdown finds declarations. It does not accept.
>
> ---
>
> ```text
> 3. Add Canvas adapter
> ```
>
> Purpose:
>
> ```text
> Pipeline output → JSON Canvas
> ```
>
> Mapping:
>
> ```text
> node.id     = omi---imo citation
> node.text   = o---o/---/?---?@---@ attribution
> edges       = constitutional transitions
> edge sides  = citation slots
> edge end    = proof form
> color       = gauge / operator lane
> ```
>
> Canvas displays. It does not accept.
>
> ---
>
> ```text
> 4. Add Memory layer
> ```
>
> Types:
>
> ```text
> Bitboard
> BitBlip
> Blackboard
> MemoryFace
> CarrierFace
> ReconcileState
> VersionWitness
> ```
>
> Rule:
>
> ```text
> Bitboard = vertices
> Bit-blip = edges
> Blackboard = resolved face
> ```
>
> ---
>
> ```text
> 5. Add carrier memory faces
> ```
>
> Initial faces:
>
> ```text
> FIFO
> inode
> mmap
> eMMC BOOT0
> eMMC BOOT1
> eMMC SECURE
> eMMC USER
> ```
>
> They carry state. They do not accept.
>
> ---
>
> ```text
> 6. Add reconciliation pipeline
> ```
>
> Flow:
>
> ```text
> Bitboard
> ↓
> Bit-blip
> ↓
> Blackboard face
> ↓
> Reconcile
> ↓
> VersionWitness
> ↓
> Receipt / Attestation
> ```
>
> ---
>
> ```text
> 7. Connect to OMI-VCS
> ```
>
> OMI-VCS records accepted reconciliation:
>
> ```text
> parent receipt
> scope
> carrier face
> bitboard witness
> bit-blip transition
> blackboard face
> result
> ```
>
> ---
>
> ```text
> 8. Add tests
> ```
>
> Minimum tests:
>
> ```text
> Markdown extraction is deterministic
> Tampered evidence is rejected
> Canvas projection is deterministic
> Canvas cannot accept authority
> Bitboard + bit-blip resolve same blackboard face
> Carrier faces cannot accept
> VCS records only receipted reconciliation
> ```
>
> ---
>
> ```text
> 9. Leave runtime archived
> ```
>
> Do not pull in:
>
> ```text
> Runtime/Net
> Snapshot
> ULP
> Gossip
> Storage
> ```
>
> yet.
>
> Use them only as references for later.
>
> ---
>
> Final target:
>
> ```text
> Markdown supplies evidence.
> OMI-Lisp supplies declarations.
> Truth gates reduce rules.
> Karnaugh minimizes logic.
> Pipeline creates attestation.
> Canvas projects diagrams.
> Bitboard/bit-blip resolve blackboard memory.
> VCS records accepted reconciliation.
> Receipt accepts.
> ```
>
> User context
>
> Attachments:
> - i want to use the markdown and the canvasEDSL of course normalzed but i want to…: `~/.codex/attachments/059854a6-8af9-4174-ab5d-0704c6927f17/pasted-text.txt`

<details><summary>5 previous messages</summary>

> I’ll ground this against the current `omi-canvas` state and the pasted attachment, then turn it into a decision-complete implementation plan. I’ll only inspect; no edits while planning.
>
> <details><summary>Explored 5 files, a search, ran a command</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `~/.codex/attachments/059854a6-8af9-4174-ab5d-0704c6927f17/pasted-text.txt`
>
> </details>
>
> - Ran `git status --short`
>
> <details><summary>Explored 4 files, a search</summary>
>
> - Searched for `*.hs` in `.`
> - Read `./omi-canvas.cabal`
> - Read `./README.md`
> - Read `./AGENTS.md`
> - Read `./SKILLS.md`
>
> </details>
>
> </details>
>
> Context compaction
>
> Source: automatic
> Status: completed
>
> Plan
>
> # OMI Canvas Adapter + Memory Plan
>
> ## Summary
> Keep the committed v0 type engine stable and add adapter layers around it. Markdown becomes an evidence/declaration discovery surface, JSON Canvas becomes a projection surface, memory/reconciliation becomes a typed witness layer, and only receipt/attestation remains authoritative.
>
> The v0 core flow stays unchanged:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> ## Key Changes
>
> ### Preserve v0 Core
> - Do not rewrite the existing type engine or public stage functions.
> - Keep `OMI.Gauge`, `OMI.Wittgenstein`, `OMI.TruthGate`, `OMI.DecisionTable`, `OMI.Karnaugh`, `OMI.Pipeline`, and typed `OMI.Canvas` as the authority boundary.
> - Treat current uncommitted `README.md`, `AGENTS.md`, and `SKILLS.md` as docs for this milestone and update them as part of the adapter work.
>
> ### Markdown Adapter
> - Add an adapter module, e.g. `OMI.Markdown`, with Markdown-specific types kept outside the pure core.
> - Extract, without accepting:
>   - front matter
>   - `omi` / `omi-lisp` fences
>   - decision-table fences
>   - canvas fences
>   - evidence spans
>   - `FS` / `GS` / `RS` / `US` scope metadata
> - Produce a typed `MarkdownExtraction` / citation-tree candidate structure that can feed existing OMI-Lisp parsing and pipeline functions later.
> - Add evidence verification:
>   - store document path/id, byte span, line span, block kind, block index, and source hash
>   - `verifyEvidence` recomputes the span hash and rejects tampered evidence
> - Default scope parsing:
>   - first parse explicit fence attributes like `fs=`, `gs=`, `rs=`, `us=`
>   - then parse recognizable OMI scope markers inside the block
>   - otherwise represent scope as an OMI-defined empty/unknown scope value
>
> ### JSON Canvas Adapter
> - Normalize useful ideas from `archive/src/Desktop/CanvasEDSL.hs`, but do not import it wholesale.
> - Add an adapter module, e.g. `OMI.Canvas.JSON`, that converts typed pipeline output to JSON Canvas.
> - Mapping:
>   - `node.id` from canonical `OMI---IMO` citation relation
>   - `node.text` from attribution relation text
>   - edges from constitutional transitions
>   - edge sides from citation slots
>   - edge end from proof form
>   - color from gauge/operator lane
> - JSON Canvas types may use adapter-level `Text`, `ByteString`, and `aeson`; these must not enter the v0 core pipeline.
> - Canvas adapter exposes projection/encoding functions only. It must not construct `Attestation`, accept declarations, or become authority.
>
> ### Memory, Carrier, Reconciliation, VCS
> - Add `OMI.Memory` with:
>   - `Bitboard`
>   - `BitBlip`
>   - `MemoryFace`
>   - `CarrierFace`
>   - `ReconcileState`
>   - `VersionWitness`
> - Preserve the public `Blackboard` name by moving or re-exporting the existing pipeline `Blackboard` type through the memory layer without changing behavior.
> - Define:
>   - `Bitboard = vertices`
>   - `BitBlip = edges`
>   - `Blackboard = resolved face`
> - Add carrier faces as typed labels only:
>   - `FIFO`
>   - `inode`
>   - `mmap`
>   - `eMMC BOOT0`
>   - `eMMC BOOT1`
>   - `eMMC SECURE`
>   - `eMMC USER`
> - Add `OMI.Reconcile`:
>   - `resolveBlackboard :: Bitboard -> BitBlip -> Blackboard`
>   - `reconcile :: Blackboard -> CarrierFace -> ReconcileState`
>   - `witnessVersion :: ReconcileState -> VersionWitness`
>   - receipt/attestation conversion only through existing authority boundary
> - Add `OMI.VCS` as a typed record layer for accepted reconciliation:
>   - parent receipt
>   - scope
>   - carrier face
>   - bitboard witness
>   - bit-blip transition
>   - blackboard face
>   - result
> - VCS record creation requires an existing receipt/attestation. It must not accept raw reconciliation.
>
> ## Tests
> - Keep existing tests for:
>   - all `F0..FF` gauge mappings
>   - canonical pre-header match
>   - invalid gauge handling
>   - declaration resolution to attestation
>   - decision-table extraction
>   - `FF` tautology path
>   - `F0` contradiction path
> - Add tests for:
>   - Markdown extraction is deterministic
>   - tampered evidence span is rejected
>   - Markdown finds declarations but does not attest
>   - JSON Canvas projection is deterministic
>   - Canvas adapter cannot construct authority
>   - `Bitboard + BitBlip` resolves the same `Blackboard` face deterministically
>   - carrier faces carry state but cannot accept
>   - VCS records only receipted reconciliation
> - Run:
>   - `cabal build all`
>   - `cabal test all`
>   - `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> ## Assumptions
> - Scope is still `/home/main/omi/omi-canvas` only.
> - `/home/main/omi/omi-isa` and `/home/main/omi/omi-axioms` remain untouched.
> - Archive modules are references only.
> - Do not pull in `Runtime/Net`, `Snapshot`, `ULP`, `Gossip`, or `Storage`.
> - Adapter modules may use external serialization libraries, but core pipeline modules remain OMI-defined type discipline only.
> - Final authority remains receipt/attestation, not Markdown, Canvas, carrier faces, or VCS records.
>
> Plan implementation
>
> Status: completed
> # OMI Canvas Adapter + Memory Plan
>
> ## Summary
> Keep the committed v0 type engine stable and add adapter layers around it. Markdown becomes an evidence/declaration discovery surface, JSON Canvas becomes a projection surface, memory/reconciliation becomes a typed witness layer, and only receipt/attestation remains authoritative.
>
> The v0 core flow stays unchanged:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> ## Key Changes
>
> ### Preserve v0 Core
> - Do not rewrite the existing type engine or public stage functions.
> - Keep `OMI.Gauge`, `OMI.Wittgenstein`, `OMI.TruthGate`, `OMI.DecisionTable`, `OMI.Karnaugh`, `OMI.Pipeline`, and typed `OMI.Canvas` as the authority boundary.
> - Treat current uncommitted `README.md`, `AGENTS.md`, and `SKILLS.md` as docs for this milestone and update them as part of the adapter work.
>
> ### Markdown Adapter
> - Add an adapter module, e.g. `OMI.Markdown`, with Markdown-specific types kept outside the pure core.
> - Extract, without accepting:
>   - front matter
>   - `omi` / `omi-lisp` fences
>   - decision-table fences
>   - canvas fences
>   - evidence spans
>   - `FS` / `GS` / `RS` / `US` scope metadata
> - Produce a typed `MarkdownExtraction` / citation-tree candidate structure that can feed existing OMI-Lisp parsing and pipeline functions later.
> - Add evidence verification:
>   - store document path/id, byte span, line span, block kind, block index, and source hash
>   - `verifyEvidence` recomputes the span hash and rejects tampered evidence
> - Default scope parsing:
>   - first parse explicit fence attributes like `fs=`, `gs=`, `rs=`, `us=`
>   - then parse recognizable OMI scope markers inside the block
>   - otherwise represent scope as an OMI-defined empty/unknown scope value
>
> ### JSON Canvas Adapter
> - Normalize useful ideas from `archive/src/Desktop/CanvasEDSL.hs`, but do not import it wholesale.
> - Add an adapter module, e.g. `OMI.Canvas.JSON`, that converts typed pipeline output to JSON Canvas.
> - Mapping:
>   - `node.id` from canonical `OMI---IMO` citation relation
>   - `node.text` from attribution relation text
>   - edges from constitutional transitions
>   - edge sides from citation slots
>   - edge end from proof form
>   - color from gauge/operator lane
> - JSON Canvas types may use adapter-level `Text`, `ByteString`, and `aeson`; these must not enter the v0 core pipeline.
> - Canvas adapter exposes projection/encoding functions only. It must not construct `Attestation`, accept declarations, or become authority.
>
> ### Memory, Carrier, Reconciliation, VCS
> - Add `OMI.Memory` with:
>   - `Bitboard`
>   - `BitBlip`
>   - `MemoryFace`
>   - `CarrierFace`
>   - `ReconcileState`
>   - `VersionWitness`
> - Preserve the public `Blackboard` name by moving or re-exporting the existing pipeline `Blackboard` type through the memory layer without changing behavior.
> - Define:
>   - `Bitboard = vertices`
>   - `BitBlip = edges`
>   - `Blackboard = resolved face`
> - Add carrier faces as typed labels only:
>   - `FIFO`
>   - `inode`
>   - `mmap`
>   - `eMMC BOOT0`
>   - `eMMC BOOT1`
>   - `eMMC SECURE`
>   - `eMMC USER`
> - Add `OMI.Reconcile`:
>   - `resolveBlackboard :: Bitboard -> BitBlip -> Blackboard`
>   - `reconcile :: Blackboard -> CarrierFace -> ReconcileState`
>   - `witnessVersion :: ReconcileState -> VersionWitness`
>   - receipt/attestation conversion only through existing authority boundary
> - Add `OMI.VCS` as a typed record layer for accepted reconciliation:
>   - parent receipt
>   - scope
>   - carrier face
>   - bitboard witness
>   - bit-blip transition
>   - blackboard face
>   - result
> - VCS record creation requires an existing receipt/attestation. It must not accept raw reconciliation.
>
> ## Tests
> - Keep existing tests for:
>   - all `F0..FF` gauge mappings
>   - canonical pre-header match
>   - invalid gauge handling
>   - declaration resolution to attestation
>   - decision-table extraction
>   - `FF` tautology path
>   - `F0` contradiction path
> - Add tests for:
>   - Markdown extraction is deterministic
>   - tampered evidence span is rejected
>   - Markdown finds declarations but does not attest
>   - JSON Canvas projection is deterministic
>   - Canvas adapter cannot construct authority
>   - `Bitboard + BitBlip` resolves the same `Blackboard` face deterministically
>   - carrier faces carry state but cannot accept
>   - VCS records only receipted reconciliation
> - Run:
>   - `cabal build all`
>   - `cabal test all`
>   - `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> ## Assumptions
> - Scope is still `/home/main/omi/omi-canvas` only.
> - `/home/main/omi/omi-isa` and `/home/main/omi/omi-axioms` remain untouched.
> - Archive modules are references only.
> - Do not pull in `Runtime/Net`, `Snapshot`, `ULP`, `Gossip`, or `Storage`.
> - Adapter modules may use external serialization libraries, but core pipeline modules remain OMI-defined type discipline only.
> - Final authority remains receipt/attestation, not Markdown, Canvas, carrier faces, or VCS records.
</details>

> here some references /home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI eMMC Boot Target Example.md
> /home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI eMMC Target as Tetrahedral Centroid Memory Model.md
> /home/main/omi/omi-tetragrammatron/dev-docs/archive/The Uniform Bitboard, Pre-Language, OMI-Lisp, and Pseudo-Persistent Open World Substrate.md
> /home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Version Control from Place-Value Notation, Betti-Schlafli Interpretation, and Seed Objects.md
> /home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Pre-Language Control Envelope Authority - Replacing LL-MM-NN with FS-GS-RS-US.md
> /home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Notation Citations Are Not Identified By Hashes.md
> /home/main/omi/omi-tetragrammatron/dev-docs/archive/The OMI Uniform Bitboard.md

<details><summary>6 previous messages</summary>

> I’ll fold these into the plan by reading them as doctrine references, not implementation targets. I’m going to extract the parts that affect adapter/memory/VCS boundaries and leave the runtime pieces out.
>
> <details><summary>Explored 3 files</summary>
>
> - Read `./omi-tetragrammatron/dev-docs/archive/OMI eMMC Target as Tetrahedral Centroid Memory Model.md`
> - Read `./omi-tetragrammatron/dev-docs/archive/OMI eMMC Boot Target Example.md`
> - Read `./omi-tetragrammatron/dev-docs/archive/The Uniform Bitboard, Pre-Language, OMI-Lisp, and Pseudo-Persistent Open World Substrate.md`
>
> </details>
>
> The eMMC references sharpen one boundary: BOOT0/BOOT1/SECURE/USER are carrier incidence faces, not proof sources. I’m checking the VCS, FS/GS/RS/US, citation, and bitboard references now so the plan names the right witness objects.
>
> <details><summary>Explored 4 files</summary>
>
> - Read `./omi-tetragrammatron/dev-docs/archive/OMI Pre-Language Control Envelope Authority - Replacing LL-MM-NN with FS-GS-RS-US.md`
> - Read `./omi-tetragrammatron/dev-docs/archive/OMI Version Control from Place-Value Notation, Betti-Schlafli Interpretation, and Seed Objects.md`
> - Read `./omi-tetragrammatron/dev-docs/archive/The OMI Uniform Bitboard.md`
> - Read `./omi-tetragrammatron/dev-docs/archive/OMI Notation Citations Are Not Identified By Hashes.md`
>
> </details>
>
> Plan
>
> # OMI Canvas Adapter, Memory, and VCS Plan
>
> ## Summary
> Keep the committed v0 Haskell type engine stable and add surrounding adapter/witness layers. Markdown discovers evidence, JSON Canvas projects accepted relations, memory models bitboard/bit-blip state, carrier faces stage state, and VCS records only receipted reconciliation.
>
> Core v0 remains:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> ## Key Changes
>
> ### Markdown Adapter
> - Add `OMI.Markdown` as an adapter layer, not an authority layer.
> - Extract:
>   - front matter
>   - OMI-Lisp fences
>   - decision-table fences
>   - canvas fences
>   - evidence spans
>   - `FS` / `GS` / `RS` / `US` scope metadata
> - Output a typed Markdown extraction/citation-tree candidate that can feed existing OMI-Lisp parsing.
> - Evidence spans may carry byte offsets, line offsets, block kind, and external checksum metadata for tamper detection.
> - Hashes/checksums must never become OMI identity; identity remains the addressed `omi---imo` relation and place-value cascade.
> - Markdown can find declarations and reject tampered evidence, but it cannot accept or attest.
>
> ### JSON Canvas Adapter
> - Add `OMI.Canvas.JSON` or equivalent adapter module.
> - Normalize useful CanvasEDSL ideas from archive, but do not import the old runtime wholesale.
> - Convert typed projection output to JSON Canvas:
>   - `node.id` = canonical OMI-IMO citation relation
>   - `node.text` = `o---o/---/?---?@---@` attribution
>   - edges = constitutional transitions
>   - edge sides = citation slots
>   - edge end = proof form
>   - color = gauge/operator lane
> - Canvas remains display/projection only. It cannot validate, accept, receipt, or construct `Attestation`.
>
> ### Memory And Carrier Layer
> - Add `OMI.Memory` with:
>   - `Bitboard`
>   - `BitBlip`
>   - `MemoryFace`
>   - `CarrierFace`
>   - `ReconcileState`
>   - `VersionWitness`
> - Preserve the public `Blackboard` boundary by reusing or re-exporting the existing pipeline `Blackboard` type rather than creating a conflicting authority type.
> - Model:
>   - `Bitboard = vertices / place-value witness`
>   - `BitBlip = edges / transition witness`
>   - `Blackboard = resolved face`
> - Add carrier faces as typed staging labels:
>   - `FIFO`
>   - `inode`
>   - `mmap`
>   - `eMMC BOOT0`
>   - `eMMC BOOT1`
>   - `eMMC SECURE`
>   - `eMMC USER`
> - eMMC faces follow the reference doctrine:
>   - `BOOT0` and `BOOT1` stage boot candidates
>   - `SECURE` carries receipt/rollback/authentication witnesses
>   - `USER` carries ordinary OMI data
>   - none of these accepts state
>
> ### Reconciliation And VCS
> - Add `OMI.Reconcile` for:
>
> ```text
> Bitboard
> -> BitBlip
> -> Blackboard face
> -> ReconcileState
> -> VersionWitness
> -> Receipt / Attestation
> ```
>
> - Add `OMI.VCS` for receipted reconciliation records containing:
>   - parent receipt
>   - `FS` / `GS` / `RS` / `US` scope
>   - carrier face
>   - bitboard witness
>   - bit-blip transition
>   - blackboard face
>   - result
> - VCS must require an existing receipt or attestation before recording acceptance.
> - Version identity is scoped place-value relation, not file hash or line diff.
>
> ## Tests
> - Keep existing v0 tests for gauge mapping, pre-header matching, invalid gauge handling, declaration resolution, decision-table extraction, tautology, and contradiction.
> - Add tests for:
>   - deterministic Markdown extraction
>   - tampered evidence rejection
>   - Markdown cannot attest
>   - deterministic JSON Canvas projection
>   - Canvas cannot construct authority
>   - `Bitboard + BitBlip` resolves the same `Blackboard` face deterministically
>   - carrier faces cannot accept
>   - VCS records only receipted reconciliation
>   - hash/checksum metadata cannot replace citation identity
> - Run:
>
> ```text
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Scope remains `/home/main/omi/omi-canvas` only.
> - `/home/main/omi/omi-isa` and `/home/main/omi/omi-axioms` remain untouched.
> - Archive runtime modules stay reference-only: no `Runtime/Net`, `Snapshot`, `ULP`, `Gossip`, or `Storage`.
> - Adapter modules may use serialization libraries, but core pipeline modules keep OMI-defined domain types.
> - Final authority remains receipt/attestation, not Markdown, Canvas, carrier faces, hashes, or VCS records.
>
> Plan implementation
>
> Status: completed
> # OMI Canvas Adapter, Memory, and VCS Plan
>
> ## Summary
> Keep the committed v0 Haskell type engine stable and add surrounding adapter/witness layers. Markdown discovers evidence, JSON Canvas projects accepted relations, memory models bitboard/bit-blip state, carrier faces stage state, and VCS records only receipted reconciliation.
>
> Core v0 remains:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> ## Key Changes
>
> ### Markdown Adapter
> - Add `OMI.Markdown` as an adapter layer, not an authority layer.
> - Extract:
>   - front matter
>   - OMI-Lisp fences
>   - decision-table fences
>   - canvas fences
>   - evidence spans
>   - `FS` / `GS` / `RS` / `US` scope metadata
> - Output a typed Markdown extraction/citation-tree candidate that can feed existing OMI-Lisp parsing.
> - Evidence spans may carry byte offsets, line offsets, block kind, and external checksum metadata for tamper detection.
> - Hashes/checksums must never become OMI identity; identity remains the addressed `omi---imo` relation and place-value cascade.
> - Markdown can find declarations and reject tampered evidence, but it cannot accept or attest.
>
> ### JSON Canvas Adapter
> - Add `OMI.Canvas.JSON` or equivalent adapter module.
> - Normalize useful CanvasEDSL ideas from archive, but do not import the old runtime wholesale.
> - Convert typed projection output to JSON Canvas:
>   - `node.id` = canonical OMI-IMO citation relation
>   - `node.text` = `o---o/---/?---?@---@` attribution
>   - edges = constitutional transitions
>   - edge sides = citation slots
>   - edge end = proof form
>   - color = gauge/operator lane
> - Canvas remains display/projection only. It cannot validate, accept, receipt, or construct `Attestation`.
>
> ### Memory And Carrier Layer
> - Add `OMI.Memory` with:
>   - `Bitboard`
>   - `BitBlip`
>   - `MemoryFace`
>   - `CarrierFace`
>   - `ReconcileState`
>   - `VersionWitness`
> - Preserve the public `Blackboard` boundary by reusing or re-exporting the existing pipeline `Blackboard` type rather than creating a conflicting authority type.
> - Model:
>   - `Bitboard = vertices / place-value witness`
>   - `BitBlip = edges / transition witness`
>   - `Blackboard = resolved face`
> - Add carrier faces as typed staging labels:
>   - `FIFO`
>   - `inode`
>   - `mmap`
>   - `eMMC BOOT0`
>   - `eMMC BOOT1`
>   - `eMMC SECURE`
>   - `eMMC USER`
> - eMMC faces follow the reference doctrine:
>   - `BOOT0` and `BOOT1` stage boot candidates
>   - `SECURE` carries receipt/rollback/authentication witnesses
>   - `USER` carries ordinary OMI data
>   - none of these accepts state
>
> ### Reconciliation And VCS
> - Add `OMI.Reconcile` for:
>
> ```text
> Bitboard
> -> BitBlip
> -> Blackboard face
> -> ReconcileState
> -> VersionWitness
> -> Receipt / Attestation
> ```
>
> - Add `OMI.VCS` for receipted reconciliation records containing:
>   - parent receipt
>   - `FS` / `GS` / `RS` / `US` scope
>   - carrier face
>   - bitboard witness
>   - bit-blip transition
>   - blackboard face
>   - result
> - VCS must require an existing receipt or attestation before recording acceptance.
> - Version identity is scoped place-value relation, not file hash or line diff.
>
> ## Tests
> - Keep existing v0 tests for gauge mapping, pre-header matching, invalid gauge handling, declaration resolution, decision-table extraction, tautology, and contradiction.
> - Add tests for:
>   - deterministic Markdown extraction
>   - tampered evidence rejection
>   - Markdown cannot attest
>   - deterministic JSON Canvas projection
>   - Canvas cannot construct authority
>   - `Bitboard + BitBlip` resolves the same `Blackboard` face deterministically
>   - carrier faces cannot accept
>   - VCS records only receipted reconciliation
>   - hash/checksum metadata cannot replace citation identity
> - Run:
>
> ```text
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Scope remains `/home/main/omi/omi-canvas` only.
> - `/home/main/omi/omi-isa` and `/home/main/omi/omi-axioms` remain untouched.
> - Archive runtime modules stay reference-only: no `Runtime/Net`, `Snapshot`, `ULP`, `Gossip`, or `Storage`.
> - Adapter modules may use serialization libraries, but core pipeline modules keep OMI-defined domain types.
> - Final authority remains receipt/attestation, not Markdown, Canvas, carrier faces, hashes, or VCS records.
</details>

The citation reference adds a hard requirement for the implementation plan: hashes can be evidence checks only, never identity. I’m going to revise the plan so Markdown evidence hashing is explicitly external metadata, while citation identity stays the addressed relation.

> PLEASE IMPLEMENT THIS PLAN:
> # OMI Canvas Adapter, Memory, and VCS Plan
>
> ## Summary
> Keep the committed v0 Haskell type engine stable and add surrounding adapter/witness layers. Markdown discovers evidence, JSON Canvas projects accepted relations, memory models bitboard/bit-blip state, carrier faces stage state, and VCS records only receipted reconciliation.
>
> Core v0 remains:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> ## Key Changes
>
> ### Markdown Adapter
> - Add `OMI.Markdown` as an adapter layer, not an authority layer.
> - Extract:
>   - front matter
>   - OMI-Lisp fences
>   - decision-table fences
>   - canvas fences
>   - evidence spans
>   - `FS` / `GS` / `RS` / `US` scope metadata
> - Output a typed Markdown extraction/citation-tree candidate that can feed existing OMI-Lisp parsing.
> - Evidence spans may carry byte offsets, line offsets, block kind, and external checksum metadata for tamper detection.
> - Hashes/checksums must never become OMI identity; identity remains the addressed `omi---imo` relation and place-value cascade.
> - Markdown can find declarations and reject tampered evidence, but it cannot accept or attest.
>
> ### JSON Canvas Adapter
> - Add `OMI.Canvas.JSON` or equivalent adapter module.
> - Normalize useful CanvasEDSL ideas from archive, but do not import the old runtime wholesale.
> - Convert typed projection output to JSON Canvas:
>   - `node.id` = canonical OMI-IMO citation relation
>   - `node.text` = `o---o/---/?---?@---@` attribution
>   - edges = constitutional transitions
>   - edge sides = citation slots
>   - edge end = proof form
>   - color = gauge/operator lane
> - Canvas remains display/projection only. It cannot validate, accept, receipt, or construct `Attestation`.
>
> ### Memory And Carrier Layer
> - Add `OMI.Memory` with:
>   - `Bitboard`
>   - `BitBlip`
>   - `MemoryFace`
>   - `CarrierFace`
>   - `ReconcileState`
>   - `VersionWitness`
> - Preserve the public `Blackboard` boundary by reusing or re-exporting the existing pipeline `Blackboard` type rather than creating a conflicting authority type.
> - Model:
>   - `Bitboard = vertices / place-value witness`
>   - `BitBlip = edges / transition witness`
>   - `Blackboard = resolved face`
> - Add carrier faces as typed staging labels:
>   - `FIFO`
>   - `inode`
>   - `mmap`
>   - `eMMC BOOT0`
>   - `eMMC BOOT1`
>   - `eMMC SECURE`
>   - `eMMC USER`
> - eMMC faces follow the reference doctrine:
>   - `BOOT0` and `BOOT1` stage boot candidates
>   - `SECURE` carries receipt/rollback/authentication witnesses
>   - `USER` carries ordinary OMI data
>   - none of these accepts state
>
> ### Reconciliation And VCS
> - Add `OMI.Reconcile` for:
>
> ```text
> Bitboard
> -> BitBlip
> -> Blackboard face
> -> ReconcileState
> -> VersionWitness
> -> Receipt / Attestation
> ```
>
> - Add `OMI.VCS` for receipted reconciliation records containing:
>   - parent receipt
>   - `FS` / `GS` / `RS` / `US` scope
>   - carrier face
>   - bitboard witness
>   - bit-blip transition
>   - blackboard face
>   - result
> - VCS must require an existing receipt or attestation before recording acceptance.
> - Version identity is scoped place-value relation, not file hash or line diff.
>
> ## Tests
> - Keep existing v0 tests for gauge mapping, pre-header matching, invalid gauge handling, declaration resolution, decision-table extraction, tautology, and contradiction.
> - Add tests for:
>   - deterministic Markdown extraction
>   - tampered evidence rejection
>   - Markdown cannot attest
>   - deterministic JSON Canvas projection
>   - Canvas cannot construct authority
>   - `Bitboard + BitBlip` resolves the same `Blackboard` face deterministically
>   - carrier faces cannot accept
>   - VCS records only receipted reconciliation
>   - hash/checksum metadata cannot replace citation identity
> - Run:
>
> ```text
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Scope remains `/home/main/omi/omi-canvas` only.
> - `/home/main/omi/omi-isa` and `/home/main/omi/omi-axioms` remain untouched.
> - Archive runtime modules stay reference-only: no `Runtime/Net`, `Snapshot`, `ULP`, `Gossip`, or `Storage`.
> - Adapter modules may use serialization libraries, but core pipeline modules keep OMI-defined domain types.
> - Final authority remains receipt/attestation, not Markdown, Canvas, carrier faces, hashes, or VCS records.

<details><summary>55 previous messages</summary>

> I’ll implement this inside `omi-canvas` only, starting by checking the current package/module shape so the new adapters fit without disturbing the v0 core.
>
> <details><summary>Explored a file, a list, ran a command</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored a file, a list</summary>
>
> - Read `./omi-canvas.cabal`
> - Listed files
>
> </details>
>
> </details>
>
> The package is still minimal and clean; the only pending files are the docs from the previous handoff. I’m reading the core modules next so the new types re-use existing OMI values instead of creating a parallel authority model.
>
> <details><summary>Explored 8 files</summary>
>
> - Read `./src/OMI/Kernel.hs`
> - Read `./src/OMI/Core.hs`
> - Read `./src/OMI/Relation.hs`
> - Read `./src/OMI/Pipeline.hs`
> - Read `./src/OMI/Canvas.hs`
> - Read `./src/OMI/Lisp.hs`
> - Read `./test/Spec.hs`
> - Read `./src/OMI/Gauge.hs`
>
> </details>
>
> The core has no external dependencies right now, so I’m going to keep the implementation dependency-free: Markdown and JSON Canvas adapters will use plain Haskell `String` at the adapter edge, while their outputs still carry OMI `Relation`, `Byte`, `Word16`, and `Word32` values internally.
>
> <details><summary>Explored 4 files</summary>
>
> - Read `./src/OMI/Lisp.hs`
> - Read `./src/OMI/Wittgenstein.hs`
> - Read `./src/OMI/TruthGate.hs`
> - Read `./src/OMI/DecisionTable.hs`
>
> </details>
>
> The existing `Blackboard` constructor is deliberately hidden in `OMI.Pipeline`, so I’m preserving that boundary. Memory will resolve through public pipeline functions and carry its bitboard/bit-blip witnesses alongside the blackboard, instead of opening the constructor.
>
> I have enough shape now. I’m adding small, explicit adapter modules plus accessors, and only one additive pipeline helper so memory can produce a typed blackboard without exposing the raw constructor.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/Pipeline.hs` (+9 -0)
>
> </details>
>
> The pipeline boundary stays constructor-hidden; the new helper is a named stage function for a blackboard relation, not an attestation shortcut. Next I’m adding shared scope, Markdown extraction, Canvas JSON projection, memory/reconcile, and VCS modules.
>
> <details><summary>Created 6 files, edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/Canvas/JSON.hs` (+178 -0)
> - Wrote `./omi-canvas/src/OMI/Markdown.hs` (+253 -0)
> - Wrote `./omi-canvas/src/OMI/Memory.hs` (+142 -0)
> - Wrote `./omi-canvas/src/OMI/Reconcile.hs` (+43 -0)
> - Wrote `./omi-canvas/src/OMI/Scope.hs` (+49 -0)
> - Wrote `./omi-canvas/src/OMI/VCS.hs` (+61 -0)
> - Wrote `./omi-canvas/omi-canvas.cabal` (+6 -0)
>
> </details>
>
> The new modules are in place and exposed through Cabal. I’m doing a compile pass now; I expect a few type/export issues because the package deliberately avoids the standard Prelude in core modules.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `cabal build all`
> - Ran `git diff --stat`
>
> </details>
>
> The first compile issue is exactly from the OMI byte discipline: `Byte` intentionally has no Haskell `Eq`. I’m switching Markdown evidence comparison to use OMI’s byte equality instead of deriving host equality.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/Markdown.hs` (+11 -2)
>
> </details>
>
> I noticed that importing OMI’s `Bool` into a Prelude adapter would blur host booleans with protocol booleans, so I’m keeping that qualified in the Markdown adapter.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/Markdown.hs` (+5 -4)
> - Wrote `./omi-canvas/src/OMI/Markdown.hs` (+1 -1)
>
> </details>
>
> That adapter boundary is corrected. I’m running the package build again and then I’ll wire the new test cases into the existing test target.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal build all`
>
> </details>
>
> The library now builds. I’m extending the existing smoke tests with deterministic adapter/memory/VCS checks, keeping them concrete rather than type-level only so future changes can’t silently alter projections or evidence behavior.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/test/Spec.hs` (+124 -0)
> - Wrote `./omi-canvas/test/Spec.hs` (+19 -1)
>
> </details>
>
> The tests now exercise the new surfaces: Markdown discovery/tamper checks, deterministic Canvas projection, memory reconciliation, and receipted VCS recording. I’m running them now and will fix any semantic or compile issues they expose.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal test all`
>
> </details>
>
> The new tests pass. I’m updating the handoff docs so future agents understand that the new Markdown/Canvas/Memory/VCS modules are adapter and witness layers, not acceptance layers.
>
> <details><summary>Explored 3 files</summary>
>
> - Read `./AGENTS.md`
> - Read `./README.md`
> - Read `./SKILLS.md`
>
> </details>
>
> The docs still describe the prior v0 endpoint, so I’m extending them with the new adapter and memory rules while keeping the v0 checkpoint visible.
>
> <details><summary>Edited 3 files</summary>
>
> - Wrote `./omi-canvas/AGENTS.md` (+12 -4)
> - Wrote `./omi-canvas/README.md` (+21 -6)
> - Wrote `./omi-canvas/SKILLS.md` (+28 -10)
>
> </details>
>
> The first doc patch missed the exact code block context, so I’m applying smaller edits against the current text.
>
> <details><summary>Edited a file, explored a file</summary>
>
> - Wrote `./omi-canvas/README.md` (+23 -8)
>
> <details><summary>Explored a file</summary>
>
> - Read `./README.md`
>
> </details>
>
> - Wrote `./omi-canvas/README.md` (+17 -2)
>
> </details>
>
> README is updated. I’m applying the same boundary language to the agent and workflow docs.
>
> <details><summary>Edited 2 files</summary>
>
> - Wrote `./omi-canvas/AGENTS.md` (+8 -0)
> - Wrote `./omi-canvas/SKILLS.md` (+20 -2)
>
> </details>
>
> The docs now match the code boundary. I’m running the full verification path requested in the plan: build, tests, and the direct `ghc -fno-code` check.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `cabal build all`
> - Ran `cabal test all`
> - Ran `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> </details>
>
> All requested verification commands are green. I’m doing one final status/diff pass to catch accidental generated files and summarize exactly what changed.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `git status --short`
> - Ran `git diff --stat`
> - Ran `git diff -- omi-canvas.cabal src/OMI/Pipeline.hs test/Spec.hs | sed -n '1,260p'`
>
> </details>
>
> One semantic issue surfaced in review: I initially let the Markdown evidence identity depend on the checksum. That violates the citation doctrine, so I’m changing evidence identity to come from scope and place/span metadata only; checksum remains tamper metadata.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/Markdown.hs` (+29 -11)
>
> </details>
>
> The identity fix is in. I’m adding a regression test so a same-place edited Markdown declaration keeps the same citation span identity while its evidence checksum rejects the changed bytes.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/test/Spec.hs` (+37 -0)
>
> </details>
>
> The regression is in, but I spotted a small test helper issue: it was hard-coded to OMI-Lisp. I’m making it respect the requested block kind before rerunning verification.
>
> <details><summary>Edited a file, explored a file, a search</summary>
>
> - Wrote `./omi-canvas/test/Spec.hs` (+7 -7)
>
> <details><summary>Explored a file, a search</summary>
>
> - Searched for `findMarkdownBlock|findByKind` in `Spec.hs`
> - Read `./test/Spec.hs`
>
> </details>
>
> </details>
>
> The helper is hard-coded in the current file; I’m patching that exact section.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/test/Spec.hs` (+2 -2)
>
> </details>
>
> Now I’m rerunning the full checks after the identity correction and regression test.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `cabal build all`
> - Ran `cabal test all`
> - Ran `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> </details>
>
> The full verification path is green after the checksum/identity fix. I’m checking final status now to make sure only intended source/docs/package files changed.
>
> <details><summary>Explored a list, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> - Ran `git diff --stat`
>
> <details><summary>Explored a list</summary>
>
> - Listed files in `OMI`
>
> </details>
>
> </details>
>
> The direct GHC check produced local `.hi`/`.o` artifacts under `src/OMI`; they are ignored, but they should not stay in the working tree. I’m removing only those generated files.
>
> <details><summary>Ran a command</summary>
>
> - Ran `rm -f src/OMI/*.hi src/OMI/*.o`
>
> </details>
>
> The generated artifacts are removed. I’m doing a final status check.
>
> <details><summary>Explored a search, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> - Ran `git diff -- README.md AGENTS.md SKILLS.md | sed -n '1,240p'`
>
> <details><summary>Explored a search</summary>
>
> - Searched for `*.hi` in `OMI`
>
> </details>
>
> </details>
>
> Those `.hi`/`.o` files are actually tracked in this repo, so removing them was not an intended source change. I’m restoring those tracked artifacts to leave the repository state as it was before my cleanup attempt.
>
> <details><summary>Ran a command</summary>
>
> - Ran `git restore src/OMI/*.hi src/OMI/*.o`
>
> </details>
>
> The tracked artifacts are restored. I’m checking status again and will not touch them further.
>
> <details><summary>Ran 2 commands</summary>
>
> - Ran `git status --short`
> - Ran `git diff --stat`
>
> </details>
</details>

Implemented the adapter/memory/VCS milestone in `/home/main/omi/omi-canvas`.

Added:
- `OMI.Markdown` for front matter, OMI-Lisp fences, decision-table fences, canvas fences, evidence spans, and FS/GS/RS/US scope extraction.
- `OMI.Canvas.JSON` for deterministic JSON Canvas-shaped projection output.
- `OMI.Scope`, `OMI.Memory`, `OMI.Reconcile`, and `OMI.VCS`.
- Additive `OMI.Pipeline` helpers for blackboard relation access without exposing constructors.
- Tests for Markdown determinism/tamper rejection, checksum-not-identity behavior, Canvas projection determinism, memory reconciliation, and receipted VCS recording.
- README/AGENTS/SKILLS updates documenting the adapter/witness boundaries.

Verification passed:

```sh
cabal build all
cabal test all
ghc -isrc -fforce-recomp -fno-code app/Main.hs
```

I did not modify `/home/main/omi/omi-isa` or `/home/main/omi/omi-axioms`, and I did not pull in archive runtime modules. Changes are not committed.

> want to update a file first because its a new part of my canonical approach from in /home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Notation Citations Are Not Identified By Hashes.md
> /home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Notation as Citation.md
>
> we should only need |OMI---IMO> notaton not any other metadata wthn the om---mo protocol framewor
>
>  omi---imo address then gauge_preheader: F* 00 1C 1D 1E 1F 20 F* then place_value_frame: o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR should be the same as loasng a CAR then omi---imo address then gauge_preheader: F* 00 1C 1D 1E 1F 20 F* then place_value_frame: o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR should be the same as attachng a CDR of 2 full addresses. that should be OMI Carrier pre-fix header FF 00 1C 1D 1E 1F 20 FF and OMI standardizes the 512-bit relational access envelope and Pre-fill a 64-bit register with an active unary stream bit configuration for a tap-code or morse-code in-stream for the next frame that we are entraining F* 00 1C 1D 1E 1F 20 F* the OMI-native object s way to overloaded. we should only need monotonic unary array compose operations. i thin this might be the only time we use a shift but xor is still primary if we can do the polybius tetragrammatron and metatron logic

<details><summary>2 previous messages</summary>

> I’ll update the tetragrammatron canon doc first and keep the existing `omi-canvas` code changes untouched. I’m reading both referenced files so the new rule lands in the right place without duplicating or contradicting the current citation doctrine.
>
> <details><summary>Explored 2 files, ran a command</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `./dev-docs/archive/OMI Notation Citations Are Not Identified By Hashes.md`
>
> </details>
>
> - Ran `git status --short`
>
> <details><summary>Explored a file</summary>
>
> - Read `./dev-docs/archive/OMI Notation as Citation.md`
>
> </details>
>
> </details>
</details>

> can you tell me the plan

<details><summary>2 previous messages</summary>

> Plan
>
> # Canonical Citation Envelope Update Plan
>
> ## Summary
> Update the tetragrammatron citation doctrine before continuing `omi-canvas` implementation. The new canonical rule is that the OMI protocol frame should need only the addressed citation form and its relational access envelope, not extra protocol-core metadata.
>
> Canonical identity remains:
>
> ```text
> |OMI---IMO>
> ```
>
> The access envelope is:
>
> ```text
> omi---imo address
> -> gauge_preheader: F* 00 1C 1D 1E 1F 20 F*
> -> place_value_frame: o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> ## Key Changes
>
> - Update the referenced tetragrammatron docs to state that hashes, checksums, signatures, digests, and extra metadata are not protocol identity or protocol authority.
> - Add a new canonical section explaining the 512-bit relational access envelope:
>   - OMI carrier prefix header: `FF 00 1C 1D 1E 1F 20 FF`
>   - active gauge preheader: `F* 00 1C 1D 1E 1F 20 F*`
>   - place-value frame: `S0..S7?PAYLOAD?MASK@CAR@CDR`
> - Clarify CAR/CDR composition:
>   - loading a `CAR` is loading the addressed `omi---imo` citation plus its access envelope
>   - attaching a `CDR` is attaching the continuation of two full addressed envelopes
>   - no external metadata is required inside the `omi---imo` protocol framework
> - Clarify the object model:
>   - avoid overloading “OMI-native object”
>   - prefer monotonic unary array compose operations as the primitive object behavior
>   - keep XOR primary where possible
>   - allow shift only as a narrowly scoped register/prefill operation if required by tap-code, Morse-code, Polybius, Tetragrammatron, or Metatron framing
> - Add the 64-bit register prefill rule:
>   - pre-fill a 64-bit register with an active unary stream bit configuration
>   - use it for tap-code or Morse-code in-stream preparation for the next entrained frame
>   - the register prefill stages the next frame; it does not add identity metadata
>
> ## Files To Update
>
> - Primary doctrine update:
>   - `/home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Notation Citations Are Not Identified By Hashes.md`
> - Supporting citation update:
>   - `/home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Notation as Citation.md`
>
> Do not modify `/home/main/omi/omi-isa` or `/home/main/omi/omi-axioms`.
>
> ## Follow-On Code Alignment
>
> After the doctrine update, align `omi-canvas` with the new rule:
>
> - ensure Markdown evidence checksums remain tamper metadata only
> - ensure JSON Canvas projection does not emit identity metadata beyond the citation relation
> - ensure memory/VCS records use receipt/citation relations as authority, not hashes
> - rename or document any “object” terminology that implies arbitrary object metadata inside the protocol core
>
> ## Verification
>
> - Review both updated Markdown files for consistent wording:
>   - `|OMI---IMO>` is identity
>   - `F* 00 1C 1D 1E 1F 20 F*` is active gauge framing
>   - `FF 00 1C 1D 1E 1F 20 FF` is canonical carrier prefix
>   - hashes/checksums remain external metadata only
> - Then rerun `omi-canvas` checks after any code/doc alignment there:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - The immediate next change is documentation/doctrine in `omi-tetragrammatron`, not Haskell code.
> - The existing uncommitted `omi-canvas` work should remain untouched until this canonical update is in place.
> - The protocol core should carry addressed relation, gauge preheader, and place-value frame only; any checksum/hash/debug label stays outside authority.
>
> Plan implementation
>
> Status: completed
> # Canonical Citation Envelope Update Plan
>
> ## Summary
> Update the tetragrammatron citation doctrine before continuing `omi-canvas` implementation. The new canonical rule is that the OMI protocol frame should need only the addressed citation form and its relational access envelope, not extra protocol-core metadata.
>
> Canonical identity remains:
>
> ```text
> |OMI---IMO>
> ```
>
> The access envelope is:
>
> ```text
> omi---imo address
> -> gauge_preheader: F* 00 1C 1D 1E 1F 20 F*
> -> place_value_frame: o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> ## Key Changes
>
> - Update the referenced tetragrammatron docs to state that hashes, checksums, signatures, digests, and extra metadata are not protocol identity or protocol authority.
> - Add a new canonical section explaining the 512-bit relational access envelope:
>   - OMI carrier prefix header: `FF 00 1C 1D 1E 1F 20 FF`
>   - active gauge preheader: `F* 00 1C 1D 1E 1F 20 F*`
>   - place-value frame: `S0..S7?PAYLOAD?MASK@CAR@CDR`
> - Clarify CAR/CDR composition:
>   - loading a `CAR` is loading the addressed `omi---imo` citation plus its access envelope
>   - attaching a `CDR` is attaching the continuation of two full addressed envelopes
>   - no external metadata is required inside the `omi---imo` protocol framework
> - Clarify the object model:
>   - avoid overloading “OMI-native object”
>   - prefer monotonic unary array compose operations as the primitive object behavior
>   - keep XOR primary where possible
>   - allow shift only as a narrowly scoped register/prefill operation if required by tap-code, Morse-code, Polybius, Tetragrammatron, or Metatron framing
> - Add the 64-bit register prefill rule:
>   - pre-fill a 64-bit register with an active unary stream bit configuration
>   - use it for tap-code or Morse-code in-stream preparation for the next entrained frame
>   - the register prefill stages the next frame; it does not add identity metadata
>
> ## Files To Update
>
> - Primary doctrine update:
>   - `/home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Notation Citations Are Not Identified By Hashes.md`
> - Supporting citation update:
>   - `/home/main/omi/omi-tetragrammatron/dev-docs/archive/OMI Notation as Citation.md`
>
> Do not modify `/home/main/omi/omi-isa` or `/home/main/omi/omi-axioms`.
>
> ## Follow-On Code Alignment
>
> After the doctrine update, align `omi-canvas` with the new rule:
>
> - ensure Markdown evidence checksums remain tamper metadata only
> - ensure JSON Canvas projection does not emit identity metadata beyond the citation relation
> - ensure memory/VCS records use receipt/citation relations as authority, not hashes
> - rename or document any “object” terminology that implies arbitrary object metadata inside the protocol core
>
> ## Verification
>
> - Review both updated Markdown files for consistent wording:
>   - `|OMI---IMO>` is identity
>   - `F* 00 1C 1D 1E 1F 20 F*` is active gauge framing
>   - `FF 00 1C 1D 1E 1F 20 FF` is canonical carrier prefix
>   - hashes/checksums remain external metadata only
> - Then rerun `omi-canvas` checks after any code/doc alignment there:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - The immediate next change is documentation/doctrine in `omi-tetragrammatron`, not Haskell code.
> - The existing uncommitted `omi-canvas` work should remain untouched until this canonical update is in place.
> - The protocol core should carry addressed relation, gauge preheader, and place-value frame only; any checksum/hash/debug label stays outside authority.
</details>

> We need these to be defntve Clarify the object model:avoid overloading “OMI-native object”
> prefer monotonic unary array compose operations as the primitive object behavior
> keep XOR primary where possible
> allow shift only as a narrowly scoped register/prefill operation if required by tap-code, Morse-code, Polybius, Tetragrammatron, or Metatron framing
>
> so we wll start wth the wrte up here /home/main/omi/omi-canon/dev-docs.  then we wll verfy wth the /home/main/omi/omi-canon/constitutional-grid later

<details><summary>6 previous messages</summary>

> I’ll ground this in `omi-canon/dev-docs` first and treat the constitutional grid as a later verification target, not something to modify in this step. I’m checking the doc structure so the definitive write-up lands as a canonical dev doc instead of being buried in the archive.
>
> <details><summary>Explored 2 lists, ran a command</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored 2 lists</summary>
>
> - Listed files in `dev-docs`
> - Listed files in `constitutional-grid`
>
> </details>
>
> </details>
>
> `omi-canon/dev-docs` appears to be empty or absent from the first pass, while `constitutional-grid` exists and should stay untouched for now. I’m checking the top-level layout so the plan can specify whether to create `dev-docs` and how to name the new doctrine file.
>
> <details><summary>Explored a search, 2 lists</summary>
>
> - Listed files
> - Listed files in `.`
> - Searched for `OMI-native object|object model|monotonic|unary|XOR|shift|tap-code|morse|Polybius|Tetragrammatron|Metatron` in `.`
>
> </details>
>
> Plan
>
> # OMI Canon Relational Access Envelope Write-Up Plan
>
> ## Summary
> Create a definitive dev-doc in `/home/main/omi/omi-canon/dev-docs` that locks the canonical object/citation model before later constitutional-grid verification.
>
> The core rule:
>
> ```text
> |OMI---IMO> is the citation identity.
> No hash, checksum, metadata object, or overloaded OMI-native object is identity.
> The protocol core needs only addressed relation + gauge preheader + place-value frame.
> ```
>
> ## Key Changes
>
> - Add a new canonical dev-doc:
>   - `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
> - Define the canonical envelope:
>
> ```text
> |OMI---IMO>
>   -> gauge_preheader: F* 00 1C 1D 1E 1F 20 F*
>   -> place_value_frame: o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> - Define the fixed carrier prefix header:
>
> ```text
> FF 00 1C 1D 1E 1F 20 FF
> ```
>
> - State the 512-bit relational access envelope:
>   - first 256 bits: prefix/gauge/orientation half
>   - second 256 bits: OMI-IMO place-value frame half
>   - the envelope stages access; receipt accepts
>
> ## Definitive Object Model
>
> - Replace overloaded “OMI-native object” language with:
>
> ```text
> monotonic unary array compose operation
> ```
>
> - Define primitive behavior:
>   - an object is not metadata
>   - an object is not a hash label
>   - an object is not an arbitrary carrier record
>   - an object is a composed unary relation over the addressed frame
> - CAR/CDR rule:
>   - loading `CAR` means loading one full addressed envelope
>   - attaching `CDR` means attaching continuation over two full addressed envelopes
>   - neither side adds external metadata to identity
> - Operation rule:
>   - XOR remains the primary reversible composition operation
>   - rotation remains valid where closure/reversibility is required
>   - shift is not a general protocol primitive
>   - shift is allowed only for narrow 64-bit register prefill / stream staging
>
> ## Register And Stream Rule
>
> - Add the 64-bit prefill doctrine:
>   - pre-fill a 64-bit register with an active unary stream bit configuration
>   - use it for tap-code or Morse-code in-stream staging
>   - allow it to entrain the next frame through:
>
> ```text
> F* 00 1C 1D 1E 1F 20 F*
> ```
>
> - Clarify that this prefill is staging, not identity.
> - Tie the allowed uses to:
>   - tap-code
>   - Morse-code
>   - Polybius
>   - Tetragrammatron
>   - Metatron
>
> ## Later Verification
>
> - Do not modify `/home/main/omi/omi-canon/constitutional-grid` in this pass.
> - Later verification should check that the constitutional grid agrees with:
>   - `|OMI---IMO>` as identity
>   - no hash/checksum metadata as protocol identity
>   - monotonic unary array compose as primitive object behavior
>   - XOR primary
>   - shift limited to register/prefill staging
>   - receipt, not carrier/projection/metadata, as acceptance boundary
>
> ## Assumptions
> - This step is documentation only in `omi-canon/dev-docs`.
> - The `omi-canvas` implementation changes remain untouched until this canonical write-up is in place.
> - The new doc is definitive doctrine, not an archive note.
>
> Plan implementation
>
> Status: completed
> # OMI Canon Relational Access Envelope Write-Up Plan
>
> ## Summary
> Create a definitive dev-doc in `/home/main/omi/omi-canon/dev-docs` that locks the canonical object/citation model before later constitutional-grid verification.
>
> The core rule:
>
> ```text
> |OMI---IMO> is the citation identity.
> No hash, checksum, metadata object, or overloaded OMI-native object is identity.
> The protocol core needs only addressed relation + gauge preheader + place-value frame.
> ```
>
> ## Key Changes
>
> - Add a new canonical dev-doc:
>   - `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
> - Define the canonical envelope:
>
> ```text
> |OMI---IMO>
>   -> gauge_preheader: F* 00 1C 1D 1E 1F 20 F*
>   -> place_value_frame: o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> - Define the fixed carrier prefix header:
>
> ```text
> FF 00 1C 1D 1E 1F 20 FF
> ```
>
> - State the 512-bit relational access envelope:
>   - first 256 bits: prefix/gauge/orientation half
>   - second 256 bits: OMI-IMO place-value frame half
>   - the envelope stages access; receipt accepts
>
> ## Definitive Object Model
>
> - Replace overloaded “OMI-native object” language with:
>
> ```text
> monotonic unary array compose operation
> ```
>
> - Define primitive behavior:
>   - an object is not metadata
>   - an object is not a hash label
>   - an object is not an arbitrary carrier record
>   - an object is a composed unary relation over the addressed frame
> - CAR/CDR rule:
>   - loading `CAR` means loading one full addressed envelope
>   - attaching `CDR` means attaching continuation over two full addressed envelopes
>   - neither side adds external metadata to identity
> - Operation rule:
>   - XOR remains the primary reversible composition operation
>   - rotation remains valid where closure/reversibility is required
>   - shift is not a general protocol primitive
>   - shift is allowed only for narrow 64-bit register prefill / stream staging
>
> ## Register And Stream Rule
>
> - Add the 64-bit prefill doctrine:
>   - pre-fill a 64-bit register with an active unary stream bit configuration
>   - use it for tap-code or Morse-code in-stream staging
>   - allow it to entrain the next frame through:
>
> ```text
> F* 00 1C 1D 1E 1F 20 F*
> ```
>
> - Clarify that this prefill is staging, not identity.
> - Tie the allowed uses to:
>   - tap-code
>   - Morse-code
>   - Polybius
>   - Tetragrammatron
>   - Metatron
>
> ## Later Verification
>
> - Do not modify `/home/main/omi/omi-canon/constitutional-grid` in this pass.
> - Later verification should check that the constitutional grid agrees with:
>   - `|OMI---IMO>` as identity
>   - no hash/checksum metadata as protocol identity
>   - monotonic unary array compose as primitive object behavior
>   - XOR primary
>   - shift limited to register/prefill staging
>   - receipt, not carrier/projection/metadata, as acceptance boundary
>
> ## Assumptions
> - This step is documentation only in `omi-canon/dev-docs`.
> - The `omi-canvas` implementation changes remain untouched until this canonical write-up is in place.
> - The new doc is definitive doctrine, not an archive note.
</details>

> PLEASE IMPLEMENT THIS PLAN:
> # OMI Canon Relational Access Envelope Write-Up Plan
>
> ## Summary
> Create a definitive dev-doc in `/home/main/omi/omi-canon/dev-docs` that locks the canonical object/citation model before later constitutional-grid verification.
>
> The core rule:
>
> ```text
> |OMI---IMO> is the citation identity.
> No hash, checksum, metadata object, or overloaded OMI-native object is identity.
> The protocol core needs only addressed relation + gauge preheader + place-value frame.
> ```
>
> ## Key Changes
>
> - Add a new canonical dev-doc:
>   - `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
> - Define the canonical envelope:
>
> ```text
> |OMI---IMO>
>   -> gauge_preheader: F* 00 1C 1D 1E 1F 20 F*
>   -> place_value_frame: o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> - Define the fixed carrier prefix header:
>
> ```text
> FF 00 1C 1D 1E 1F 20 FF
> ```
>
> - State the 512-bit relational access envelope:
>   - first 256 bits: prefix/gauge/orientation half
>   - second 256 bits: OMI-IMO place-value frame half
>   - the envelope stages access; receipt accepts
>
> ## Definitive Object Model
>
> - Replace overloaded “OMI-native object” language with:
>
> ```text
> monotonic unary array compose operation
> ```
>
> - Define primitive behavior:
>   - an object is not metadata
>   - an object is not a hash label
>   - an object is not an arbitrary carrier record
>   - an object is a composed unary relation over the addressed frame
> - CAR/CDR rule:
>   - loading `CAR` means loading one full addressed envelope
>   - attaching `CDR` means attaching continuation over two full addressed envelopes
>   - neither side adds external metadata to identity
> - Operation rule:
>   - XOR remains the primary reversible composition operation
>   - rotation remains valid where closure/reversibility is required
>   - shift is not a general protocol primitive
>   - shift is allowed only for narrow 64-bit register prefill / stream staging
>
> ## Register And Stream Rule
>
> - Add the 64-bit prefill doctrine:
>   - pre-fill a 64-bit register with an active unary stream bit configuration
>   - use it for tap-code or Morse-code in-stream staging
>   - allow it to entrain the next frame through:
>
> ```text
> F* 00 1C 1D 1E 1F 20 F*
> ```
>
> - Clarify that this prefill is staging, not identity.
> - Tie the allowed uses to:
>   - tap-code
>   - Morse-code
>   - Polybius
>   - Tetragrammatron
>   - Metatron
>
> ## Later Verification
>
> - Do not modify `/home/main/omi/omi-canon/constitutional-grid` in this pass.
> - Later verification should check that the constitutional grid agrees with:
>   - `|OMI---IMO>` as identity
>   - no hash/checksum metadata as protocol identity
>   - monotonic unary array compose as primitive object behavior
>   - XOR primary
>   - shift limited to register/prefill staging
>   - receipt, not carrier/projection/metadata, as acceptance boundary
>
> ## Assumptions
> - This step is documentation only in `omi-canon/dev-docs`.
> - The `omi-canvas` implementation changes remain untouched until this canonical write-up is in place.
> - The new doc is definitive doctrine, not an archive note.

<details><summary>6 previous messages</summary>

> I’ll add the definitive dev-doc in `omi-canon/dev-docs` only and leave the constitutional grid and `omi-canvas` untouched. First I’m checking the current repo state so I don’t overwrite any existing work.
>
> <details><summary>Explored a list, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored a list</summary>
>
> - Listed files in `dev-docs`
>
> </details>
>
> - Ran `test -e dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md && sed -n '1,220p' dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md || true`
>
> </details>
>
> `dev-docs` is empty and the worktree is clean, so this is a straightforward new canonical note. I’m creating the write-up now with the identity, envelope, object model, CAR/CDR, and register staging rules explicit.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` (+262 -0)
>
> </details>
>
> The definitive dev-doc is added. I’m doing a quick readback and status check to verify only that file changed and the constitutional grid stayed untouched.
>
> <details><summary>Explored a file, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored a file</summary>
>
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> - Ran `git diff --stat`
>
> </details>
</details>

Implemented the write-up at:

[OMI-RELATIONAL-ACCESS-ENVELOPE.md](./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md)

It defines:
- `|OMI---IMO>` as citation identity
- fixed carrier prefix `FF 00 1C 1D 1E 1F 20 FF`
- active gauge preheader `F* 00 1C 1D 1E 1F 20 F*`
- 512-bit relational access envelope
- definitive object primitive as `monotonic unary array compose operation`
- CAR/CDR as full-envelope composition
- XOR primary, rotation valid for reversible closure, shift limited to 64-bit register/prefill staging
- later constitutional-grid verification criteria

I did not modify `constitutional-grid` or `omi-canvas`. Current `omi-canon` status shows only the new untracked `dev-docs/` content.

> /home/main/omi/omi-canvas
>
> User context
>
> Attachments:
> - omi---imo address then gauge_preheader: F* 00 1C 1D 1E 1F 20 F* then place_valu…: `~/.codex/attachments/359a23f3-e6d4-4475-b688-08bbcb2a2ba8/pasted-text.txt`

<details><summary>8 previous messages</summary>

> I’ll treat this as the next planning step for `omi-canvas`: read the attached note, compare it against the current Haskell adapter work, and produce a concrete implementation plan for aligning the code with the new relational access envelope doctrine.
>
> <details><summary>Explored a file, a search, ran a command</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `~/.codex/attachments/359a23f3-e6d4-4475-b688-08bbcb2a2ba8/pasted-text.txt`
>
> </details>
>
> - Ran `git status --short`
>
> <details><summary>Explored a search</summary>
>
> - Searched for `Checksum|checksum|identity|Evidence|Markdown|Canvas.JSON|Bitboard|BitBlip|CarrierFace|Blackboard|Receipt|Attestation|Object|object|hash|digest|metadata` in `src`
>
> </details>
>
> </details>
>
> The attachment narrows the target: no heavy `OmiFragment`; recover archive runtime/snapshot ideas only as later connector layers around a minimal `prefix + CAR frame + CDR frame + unary register` carrier fragment. I’m sampling the archive modules now so the plan maps existing responsibilities accurately without importing old authority assumptions.
>
> <details><summary>Explored 4 files</summary>
>
> - Read `./archive/src/Runtime/Net/Framing.hs`
> - Read `./archive/src/Runtime/Net/Gossip/Types.hs`
> - Read `./archive/src/Runtime/Net/Gossip.hs`
> - Read `./archive/src/Stream.hs`
>
> </details>
>
> The archive networking code confirms the rewrite risk: it uses snapshot hashes, WAL offsets, and rich summaries as authority. The plan needs to quarantine those as carrier metadata and replace the propagated unit with addressed CAR/CDR frames plus unary register movement.
>
> <details><summary>Explored 4 files</summary>
>
> - Read `./archive/src/Snapshot/Routing/Types.hs`
> - Read `./archive/src/Snapshot/Reconcile/Core.hs`
> - Read `./archive/src/Snapshot/Reconcile/Types.hs`
> - Read `./archive/src/Snapshot/Scheduler/Network/Types.hs`
>
> </details>
>
> Plan
>
> # OMI Canvas Unary Carrier Fragment Plan
>
> ## Summary
> Align `/home/main/omi/omi-canvas` with the new canonical access-envelope doctrine. Keep the v0 type engine stable, keep current Markdown/Canvas/Memory/VCS adapter work, and add a minimal carrier-fragment layer that replaces any heavy `OmiFragment` model.
>
> Canonical carrier unit:
>
> ```text
> FF 00 1C 1D 1E 1F 20 FF
> CAR addressed frame
> CDR addressed frame
> 64-bit active unary register
> ```
>
> No semantic object bundle, hash identity, snapshot digest identity, or metadata authority enters the core.
>
> ## Key Changes
>
> ### Core Carrier Types
> - Add `OMI.Carrier` with constructor-hidden types:
>   - `CarrierPrefix`
>   - `AddressedFrame`
>   - `UnaryRegister`
>   - `CarrierFragment`
>   - `CausalIndex`
>   - `CarrierSymbol`
> - Represent an `AddressedFrame` as the OMI relation triple:
>   - `|OMI---IMO>` address relation
>   - active gauge preheader `F* 00 1C 1D 1E 1F 20 F*`
>   - place-value frame `o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR`
> - Expose only canonical builders/accessors:
>   - `canonicalCarrierPrefix`
>   - `mkAddressedFrame`
>   - `mkUnaryRegister`
>   - `emptyCarrierFragment`
>   - `attachCAR`
>   - `attachCDR`
>   - `advanceUnary`
>   - `xorWitness`
>   - `carrierFragmentRelation`
>
> ### CAR/CDR Composition
> - Define `attachCAR :: AddressedFrame -> CarrierFragment -> CarrierFragment`.
> - Define `attachCDR :: AddressedFrame -> CarrierFragment -> CarrierFragment`.
> - Enforce the rule:
>   - `CAR` loads one full addressed envelope
>   - `CDR` attaches continuation over two full addressed envelopes
>   - neither side adds identity metadata
> - Avoid any type shaped like:
>
> ```text
> OmiFragment { checksum, version_vector, rs_params, attestation?, ... }
> ```
>
> ### Unary Register Semantics
> - Define `UnaryRegister` as a 64-bit OMI-native register backed by OMI `Word16`/`Word32` values, not host `Word64` in the core.
> - `advanceUnary` is the only shift-like operation:
>   - it advances the active unary stream position
>   - it is for tap-code, Morse-code, bit-blip, and next-frame entrainment
> - `xorWitness` is the primary composition/difference operation:
>   - shift advances the tap
>   - XOR witnesses the relation
> - Add tests proving repeated `advanceUnary` is deterministic and `xorWitness` is stable/involutive for equal inputs.
>
> ### Archive Runtime Review And Inclusion
> - Do not import archive runtime modules directly.
> - Extract concepts only:
>   - `archive/src/Stream.hs`: stream segmentation and flush/boundary ideas only
>   - `archive/src/Runtime/Net/Framing.hs`: length-framed carrier transport shape only
>   - `archive/src/Runtime/Net/Gossip*.hs`: peer exchange shape only, replacing snapshot hash/WAL authority with carrier fragments
>   - `archive/src/Snapshot/Reconcile/*`: compatible-region reconciliation idea only, mapped to receipted carrier-fragment reconciliation
>   - `archive/src/Snapshot/Routing/*`: epoch/peer routing shape only, with salt/hash fields quarantined as external carrier metadata
>   - `archive/src/Snapshot/Scheduler/*`: work-cell partition shape only, mapped to non-authoritative staging
> - Any archive field named hash, digest, checksum, salt, snapshot hash, WAL offset, manifest hash, or peer hash must be treated as external carrier metadata, never identity.
>
> ### Network/Runtime Adapter Plan
> - Add adapter modules only after `OMI.Carrier` is stable:
>   - `OMI.Stream` for recognizing carrier prefix and frame boundaries
>   - `OMI.Net.Frame` for length-framed byte transport
>   - `OMI.Gossip.Types` for fragment exchange messages
>   - `OMI.Runtime` for declared local capabilities/configuration
> - These modules may use host types and IO later, but must not be imported by the v0 pure core modules.
> - Runtime, Net, Gossip, Snapshot, Scheduler, Store, and Server remain outside authority.
>
> ## Test Plan
> - Keep current v0 and adapter tests green:
>   - gauge mapping
>   - pre-header matching
>   - invalid gauge handling
>   - declaration resolution
>   - Markdown extraction/tamper checks
>   - Canvas projection determinism
>   - memory reconciliation
>   - VCS receipted recording
> - Add carrier tests:
>   - canonical prefix equals `FF 00 1C 1D 1E 1F 20 FF`
>   - `mkAddressedFrame` preserves address, gauge preheader, and place-value frame
>   - `attachCAR` and `attachCDR` compose two full addressed frames
>   - no checksum/hash changes carrier identity
>   - `advanceUnary` advances only the active stream bit
>   - `xorWitness r r` returns the empty/null witness register
>   - carrier fragment cannot produce `Attestation` without passing through existing receipt/attestation boundary
> - Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Work remains scoped to `/home/main/omi/omi-canvas`.
> - Existing uncommitted `omi-canvas` adapter work is preserved and extended, not rewritten.
> - `/home/main/omi/omi-isa`, `/home/main/omi/omi-axioms`, and `/home/main/omi/omi-canon/constitutional-grid` are not modified in this pass.
> - Archive modules are references only; no direct import of old runtime/snapshot authority.
> - The implementation must encode the lock:
>
> ```text
> No heavy OmiFragment.
> Use prefix + CAR frame + CDR frame + unary register.
> Shift advances stream.
> XOR witnesses difference.
> Composition carries meaning.
> Receipt accepts.
> ```
>
> Plan implementation
>
> Status: completed
> # OMI Canvas Unary Carrier Fragment Plan
>
> ## Summary
> Align `/home/main/omi/omi-canvas` with the new canonical access-envelope doctrine. Keep the v0 type engine stable, keep current Markdown/Canvas/Memory/VCS adapter work, and add a minimal carrier-fragment layer that replaces any heavy `OmiFragment` model.
>
> Canonical carrier unit:
>
> ```text
> FF 00 1C 1D 1E 1F 20 FF
> CAR addressed frame
> CDR addressed frame
> 64-bit active unary register
> ```
>
> No semantic object bundle, hash identity, snapshot digest identity, or metadata authority enters the core.
>
> ## Key Changes
>
> ### Core Carrier Types
> - Add `OMI.Carrier` with constructor-hidden types:
>   - `CarrierPrefix`
>   - `AddressedFrame`
>   - `UnaryRegister`
>   - `CarrierFragment`
>   - `CausalIndex`
>   - `CarrierSymbol`
> - Represent an `AddressedFrame` as the OMI relation triple:
>   - `|OMI---IMO>` address relation
>   - active gauge preheader `F* 00 1C 1D 1E 1F 20 F*`
>   - place-value frame `o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR`
> - Expose only canonical builders/accessors:
>   - `canonicalCarrierPrefix`
>   - `mkAddressedFrame`
>   - `mkUnaryRegister`
>   - `emptyCarrierFragment`
>   - `attachCAR`
>   - `attachCDR`
>   - `advanceUnary`
>   - `xorWitness`
>   - `carrierFragmentRelation`
>
> ### CAR/CDR Composition
> - Define `attachCAR :: AddressedFrame -> CarrierFragment -> CarrierFragment`.
> - Define `attachCDR :: AddressedFrame -> CarrierFragment -> CarrierFragment`.
> - Enforce the rule:
>   - `CAR` loads one full addressed envelope
>   - `CDR` attaches continuation over two full addressed envelopes
>   - neither side adds identity metadata
> - Avoid any type shaped like:
>
> ```text
> OmiFragment { checksum, version_vector, rs_params, attestation?, ... }
> ```
>
> ### Unary Register Semantics
> - Define `UnaryRegister` as a 64-bit OMI-native register backed by OMI `Word16`/`Word32` values, not host `Word64` in the core.
> - `advanceUnary` is the only shift-like operation:
>   - it advances the active unary stream position
>   - it is for tap-code, Morse-code, bit-blip, and next-frame entrainment
> - `xorWitness` is the primary composition/difference operation:
>   - shift advances the tap
>   - XOR witnesses the relation
> - Add tests proving repeated `advanceUnary` is deterministic and `xorWitness` is stable/involutive for equal inputs.
>
> ### Archive Runtime Review And Inclusion
> - Do not import archive runtime modules directly.
> - Extract concepts only:
>   - `archive/src/Stream.hs`: stream segmentation and flush/boundary ideas only
>   - `archive/src/Runtime/Net/Framing.hs`: length-framed carrier transport shape only
>   - `archive/src/Runtime/Net/Gossip*.hs`: peer exchange shape only, replacing snapshot hash/WAL authority with carrier fragments
>   - `archive/src/Snapshot/Reconcile/*`: compatible-region reconciliation idea only, mapped to receipted carrier-fragment reconciliation
>   - `archive/src/Snapshot/Routing/*`: epoch/peer routing shape only, with salt/hash fields quarantined as external carrier metadata
>   - `archive/src/Snapshot/Scheduler/*`: work-cell partition shape only, mapped to non-authoritative staging
> - Any archive field named hash, digest, checksum, salt, snapshot hash, WAL offset, manifest hash, or peer hash must be treated as external carrier metadata, never identity.
>
> ### Network/Runtime Adapter Plan
> - Add adapter modules only after `OMI.Carrier` is stable:
>   - `OMI.Stream` for recognizing carrier prefix and frame boundaries
>   - `OMI.Net.Frame` for length-framed byte transport
>   - `OMI.Gossip.Types` for fragment exchange messages
>   - `OMI.Runtime` for declared local capabilities/configuration
> - These modules may use host types and IO later, but must not be imported by the v0 pure core modules.
> - Runtime, Net, Gossip, Snapshot, Scheduler, Store, and Server remain outside authority.
>
> ## Test Plan
> - Keep current v0 and adapter tests green:
>   - gauge mapping
>   - pre-header matching
>   - invalid gauge handling
>   - declaration resolution
>   - Markdown extraction/tamper checks
>   - Canvas projection determinism
>   - memory reconciliation
>   - VCS receipted recording
> - Add carrier tests:
>   - canonical prefix equals `FF 00 1C 1D 1E 1F 20 FF`
>   - `mkAddressedFrame` preserves address, gauge preheader, and place-value frame
>   - `attachCAR` and `attachCDR` compose two full addressed frames
>   - no checksum/hash changes carrier identity
>   - `advanceUnary` advances only the active stream bit
>   - `xorWitness r r` returns the empty/null witness register
>   - carrier fragment cannot produce `Attestation` without passing through existing receipt/attestation boundary
> - Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Work remains scoped to `/home/main/omi/omi-canvas`.
> - Existing uncommitted `omi-canvas` adapter work is preserved and extended, not rewritten.
> - `/home/main/omi/omi-isa`, `/home/main/omi/omi-axioms`, and `/home/main/omi/omi-canon/constitutional-grid` are not modified in this pass.
> - Archive modules are references only; no direct import of old runtime/snapshot authority.
> - The implementation must encode the lock:
>
> ```text
> No heavy OmiFragment.
> Use prefix + CAR frame + CDR frame + unary register.
> Shift advances stream.
> XOR witnesses difference.
> Composition carries meaning.
> Receipt accepts.
> ```
</details>

> PLEASE IMPLEMENT THIS PLAN:
> # OMI Canvas Unary Carrier Fragment Plan
>
> ## Summary
> Align `/home/main/omi/omi-canvas` with the new canonical access-envelope doctrine. Keep the v0 type engine stable, keep current Markdown/Canvas/Memory/VCS adapter work, and add a minimal carrier-fragment layer that replaces any heavy `OmiFragment` model.
>
> Canonical carrier unit:
>
> ```text
> FF 00 1C 1D 1E 1F 20 FF
> CAR addressed frame
> CDR addressed frame
> 64-bit active unary register
> ```
>
> No semantic object bundle, hash identity, snapshot digest identity, or metadata authority enters the core.
>
> ## Key Changes
>
> ### Core Carrier Types
> - Add `OMI.Carrier` with constructor-hidden types:
>   - `CarrierPrefix`
>   - `AddressedFrame`
>   - `UnaryRegister`
>   - `CarrierFragment`
>   - `CausalIndex`
>   - `CarrierSymbol`
> - Represent an `AddressedFrame` as the OMI relation triple:
>   - `|OMI---IMO>` address relation
>   - active gauge preheader `F* 00 1C 1D 1E 1F 20 F*`
>   - place-value frame `o---o/---/?---?@---@ / S0..S7?PAYLOAD?MASK@CAR@CDR`
> - Expose only canonical builders/accessors:
>   - `canonicalCarrierPrefix`
>   - `mkAddressedFrame`
>   - `mkUnaryRegister`
>   - `emptyCarrierFragment`
>   - `attachCAR`
>   - `attachCDR`
>   - `advanceUnary`
>   - `xorWitness`
>   - `carrierFragmentRelation`
>
> ### CAR/CDR Composition
> - Define `attachCAR :: AddressedFrame -> CarrierFragment -> CarrierFragment`.
> - Define `attachCDR :: AddressedFrame -> CarrierFragment -> CarrierFragment`.
> - Enforce the rule:
>   - `CAR` loads one full addressed envelope
>   - `CDR` attaches continuation over two full addressed envelopes
>   - neither side adds identity metadata
> - Avoid any type shaped like:
>
> ```text
> OmiFragment { checksum, version_vector, rs_params, attestation?, ... }
> ```
>
> ### Unary Register Semantics
> - Define `UnaryRegister` as a 64-bit OMI-native register backed by OMI `Word16`/`Word32` values, not host `Word64` in the core.
> - `advanceUnary` is the only shift-like operation:
>   - it advances the active unary stream position
>   - it is for tap-code, Morse-code, bit-blip, and next-frame entrainment
> - `xorWitness` is the primary composition/difference operation:
>   - shift advances the tap
>   - XOR witnesses the relation
> - Add tests proving repeated `advanceUnary` is deterministic and `xorWitness` is stable/involutive for equal inputs.
>
> ### Archive Runtime Review And Inclusion
> - Do not import archive runtime modules directly.
> - Extract concepts only:
>   - `archive/src/Stream.hs`: stream segmentation and flush/boundary ideas only
>   - `archive/src/Runtime/Net/Framing.hs`: length-framed carrier transport shape only
>   - `archive/src/Runtime/Net/Gossip*.hs`: peer exchange shape only, replacing snapshot hash/WAL authority with carrier fragments
>   - `archive/src/Snapshot/Reconcile/*`: compatible-region reconciliation idea only, mapped to receipted carrier-fragment reconciliation
>   - `archive/src/Snapshot/Routing/*`: epoch/peer routing shape only, with salt/hash fields quarantined as external carrier metadata
>   - `archive/src/Snapshot/Scheduler/*`: work-cell partition shape only, mapped to non-authoritative staging
> - Any archive field named hash, digest, checksum, salt, snapshot hash, WAL offset, manifest hash, or peer hash must be treated as external carrier metadata, never identity.
>
> ### Network/Runtime Adapter Plan
> - Add adapter modules only after `OMI.Carrier` is stable:
>   - `OMI.Stream` for recognizing carrier prefix and frame boundaries
>   - `OMI.Net.Frame` for length-framed byte transport
>   - `OMI.Gossip.Types` for fragment exchange messages
>   - `OMI.Runtime` for declared local capabilities/configuration
> - These modules may use host types and IO later, but must not be imported by the v0 pure core modules.
> - Runtime, Net, Gossip, Snapshot, Scheduler, Store, and Server remain outside authority.
>
> ## Test Plan
> - Keep current v0 and adapter tests green:
>   - gauge mapping
>   - pre-header matching
>   - invalid gauge handling
>   - declaration resolution
>   - Markdown extraction/tamper checks
>   - Canvas projection determinism
>   - memory reconciliation
>   - VCS receipted recording
> - Add carrier tests:
>   - canonical prefix equals `FF 00 1C 1D 1E 1F 20 FF`
>   - `mkAddressedFrame` preserves address, gauge preheader, and place-value frame
>   - `attachCAR` and `attachCDR` compose two full addressed frames
>   - no checksum/hash changes carrier identity
>   - `advanceUnary` advances only the active stream bit
>   - `xorWitness r r` returns the empty/null witness register
>   - carrier fragment cannot produce `Attestation` without passing through existing receipt/attestation boundary
> - Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Work remains scoped to `/home/main/omi/omi-canvas`.
> - Existing uncommitted `omi-canvas` adapter work is preserved and extended, not rewritten.
> - `/home/main/omi/omi-isa`, `/home/main/omi/omi-axioms`, and `/home/main/omi/omi-canon/constitutional-grid` are not modified in this pass.
> - Archive modules are references only; no direct import of old runtime/snapshot authority.
> - The implementation must encode the lock:
>
> ```text
> No heavy OmiFragment.
> Use prefix + CAR frame + CDR frame + unary register.
> Shift advances stream.
> XOR witnesses difference.
> Composition carries meaning.
> Receipt accepts.
> ```

<details><summary>26 previous messages</summary>

> I’ll add this as a pure `OMI.Carrier` module on top of the existing uncommitted adapter work, without importing archive runtime code. I’ll keep constructors hidden and expose only canonical builders/accessors plus the unary advance/XOR operations.
>
> <details><summary>Explored a file, ran 2 commands</summary>
>
> - Ran `sed -n '1,220p' src/OMI/Carrier.hs 2>/dev/null || true`
>
> <details><summary>Explored a file</summary>
>
> - Read `./omi-canvas.cabal`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> `OMI.Carrier` does not exist yet, and the Cabal file already includes the prior adapter modules. I’m adding the carrier module and exposing it through the library.
>
> <details><summary>Created a file, edited a file</summary>
>
> - Wrote `./omi-canvas/omi-canvas.cabal` (+1 -0)
> - Wrote `./omi-canvas/src/OMI/Carrier.hs` (+281 -0)
>
> </details>
>
> The first carrier draft is in place. I see a couple of import issues from keeping the module `NoImplicitPrelude`, so I’m tightening those before compiling.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/src/OMI/Carrier.hs` (+2 -2)
>
> </details>
>
> I’m running a build now to catch any type or export issues in the new carrier layer before adding tests.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal build all`
>
> </details>
>
> The carrier module builds. I’m adding test coverage for prefix bytes, addressed-frame preservation, CAR/CDR composition, unary advance, XOR witness, and checksum-not-identity behavior.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/test/Spec.hs` (+122 -0)
>
> </details>
>
> Carrier tests are wired in. One checksum-related assertion is intentionally about invariance: carrier construction has no checksum input, so changed evidence can’t affect the carrier relation. I’m compiling the tests now.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal test all`
>
> </details>
>
> The carrier layer and tests pass. The plan also called for minimal runtime/network adapter surfaces after `OMI.Carrier` is stable, so I’m adding pure, non-authoritative stubs for stream recognition, net framing, gossip message shapes, and runtime declarations without pulling in archive IO or snapshot code.
>
> <details><summary>Created 4 files, edited a file</summary>
>
> - Wrote `./omi-canvas/omi-canvas.cabal` (+4 -0)
> - Wrote `./omi-canvas/src/OMI/Gossip/Types.hs` (+43 -0)
> - Wrote `./omi-canvas/src/OMI/Net/Frame.hs` (+25 -0)
> - Wrote `./omi-canvas/src/OMI/Runtime.hs` (+35 -0)
> - Wrote `./omi-canvas/src/OMI/Stream.hs` (+39 -0)
>
> </details>
>
> The adapter stubs are additive and pure: no sockets, no snapshot hashes, no WAL, no IO authority. I’m compiling again before adding a small regression test for prefix recognition and gossip fragment shape.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal build all`
>
> </details>
>
> The pure adapter modules build. I’m adding small tests to prove stream recognition keys off the carrier prefix and gossip messages carry carrier fragments rather than snapshot/hash payload authority.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canvas/test/Spec.hs` (+16 -0)
>
> </details>
>
> The stream/gossip regression is in. I’m running the tests again, then I’ll update README/AGENTS/SKILLS to document the carrier lock and archive quarantine.
>
> <details><summary>Ran a command</summary>
>
> - Ran `cabal test all`
>
> </details>
>
> Tests are green. I’m updating the handoff docs so future work does not reintroduce the heavy fragment object or archive hash authority.
>
> <details><summary>Edited 3 files</summary>
>
> - Wrote `./omi-canvas/AGENTS.md` (+15 -0)
> - Wrote `./omi-canvas/README.md` (+4 -0)
> - Wrote `./omi-canvas/SKILLS.md` (+10 -0)
>
> </details>
>
> Docs now encode the carrier lock and archive quarantine. I’m running the full requested verification path.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `cabal test all`
> - Ran `cabal build all`
> - Ran `ghc -isrc -fforce-recomp -fno-code app/Main.hs`
>
> </details>
>
> All verification commands are green. I’m checking final status and making sure no generated artifacts show up as unintended changes.
>
> <details><summary>Explored a list, ran 2 commands</summary>
>
> - Ran `git diff --stat`
>
> - Ran `git status --short`
>
> <details><summary>Explored a list</summary>
>
> - Listed files in `OMI`
>
> </details>
>
> </details>
</details>

Implemented the unary carrier fragment layer in `/home/main/omi/omi-canvas`.

Added:
- `OMI.Carrier`
  - `CarrierPrefix`, `AddressedFrame`, `UnaryRegister`, `CarrierFragment`, `CausalIndex`, `CarrierSymbol`
  - `attachCAR`, `attachCDR`, `advanceUnary`, `xorWitness`, `carrierFragmentRelation`
- Pure adapter shells:
  - `OMI.Stream`
  - `OMI.Net.Frame`
  - `OMI.Gossip.Types`
  - `OMI.Runtime`
- Cabal exports for the new modules.
- Tests for carrier prefix, addressed frame preservation, CAR/CDR composition, unary advance, XOR witness clearing equal registers, checksum-not-identity behavior, stream prefix recognition, and gossip fragment relation carrying.
- README/AGENTS/SKILLS updates documenting the lock:

```text
No heavy OmiFragment.
Use prefix + CAR frame + CDR frame + unary register.
Shift advances stream.
XOR witnesses difference.
Composition carries meaning.
Receipt accepts.
```

Verification passed:

```sh
cabal build all
cabal test all
ghc -isrc -fforce-recomp -fno-code app/Main.hs
```

I did not import archive runtime/snapshot modules and did not modify `omi-isa`, `omi-axioms`, or `omi-canon/constitutional-grid`. Changes are uncommitted.

> Yes. Based on the docs you provided, the definitive rule should be:
>
> ```text id="d4k0ry"
> Primitive object behavior:
> monotonic unary array compose operations over addressed frames.
>
> Primary reversible operator:
> XOR.
>
> Valid orbit-preserving movement:
> rotation.
>
> Narrow staging-only movement:
> shift.
>
> Invalid:
> using shift as general protocol identity, address authority, or object behavior.
> ```
>
> I checked the available docs/snippets. The strongest anchors are:
>
> 1. The relational access envelope already states the exact rule: avoid “OMI-native object,” use **monotonic unary array compose operation**, keep XOR primary, allow rotation where orbit-preserving, and allow shift only for 64-bit register prefill, tap/Morse staging, Polybius, Tetragrammatron, or Metatron framing.
>
> 2. The uniform bitboard document allows **explicit masks and shifts only** for portable bitboard layout, while banning compiler-dependent bitfields and nondeterministic identity sources. That supports shift as implementation/layout staging, not semantic authority.
>
> 3. AtomicKernel.hs defines the Delta Law using `rotl`, `rotr`, and `xor`, while `shiftL/shiftR` appear inside rotation definitions and mask construction. That means shift is implementation machinery used to build width-preserving rotation, not the core semantic operation.
>
> 4. The OMI-Lisp spec states the rotation-XOR law directly: `delta16(x,c)=rotl16(x,1) XOR rotl16(x,3) XOR rotr16(x,2) XOR c`; it also identifies rotations as width-preserving and XOR as reversible.
>
> 5. The Tetragrammatron/Metatron split says Tetragrammatron owns validation: delta16 rotation, Fano, Polybius, diagonal law, 5040 ring, and three folds including XOR/SUM/ROT; Metatron owns geometry/projection and must not change protocol truth.
>
> So the canon should read:
>
> ```text id="1mgjni"
> Shift is not a protocol primitive.
>
> Shift may appear only as:
> 1. implementation support for rotation,
> 2. explicit mask/register layout,
> 3. 64-bit unary register prefill,
> 4. tap-code or Morse-code in-stream staging,
> 5. Polybius coordinate preparation,
> 6. Tetragrammatron address/gate observation,
> 7. Metatron rule-set/projection framing.
>
> Any other use of shift must be treated as suspect until proven to be staging-only.
> ```
>
> Codex review task:
>
> ```text id="hfbfvv"
> Audit all Haskell/C/docs for shift/shiftL/shiftR/<< / >>.
>
> Classify every occurrence as:
> A. rotation implementation,
> B. mask/register layout,
> C. unary prefill/staging,
> D. invalid semantic shift.
>
> Fail the audit if any shift is used as identity, authority, address creation, receipt creation, or object behavior.
> ```
>
> Final lock:
>
> ```text id="eqq5zj"
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> I checked the uploaded Coq proof files for the constitutional-grid algorithm meaning. The clean read is:
>
> ```text
> Core executable law:
> DiagonalClosure.v
>
> delta16 =
>   rotl16(x,1) XOR rotl16(x,3) XOR rotr16(x,2) XOR c
> ```
>
> So yes: **XOR + rotation is the proven kernel movement**. `shiftl/shiftr` only appear inside `rotl16/rotr16`, so they are implementation support for rotation, not independent semantic motion.
>
> ```text
> Finite incidence:
> FiniteIncidence.v
>
> tetrahedron
> Fano plane
> Schläfli {3,5}/{5,3}
> rectified common core
> ```
>
> This supports **A5 Partition/Chirality**, **Projection**, and the geometric side of the constitutional grid.
>
> ```text
> BQF bridge:
> BQFBridge.v
>
> 60x² + 16xy + 4y²
> 5! = 120
> 240 = 2×5!
> Fano selector mod 7
> local240 selector mod 240
> ```
>
> This supports **surface application / gauge geometry**, not acceptance.
>
> ```text
> Functorial semantics:
> functorial_semantics.v
>
> Obs preserves identity/composition.
> obs(Δⁿ s) = fAⁿ(obs s)
> ```
>
> This is the strongest proof for **Projection**: observers are lawful only when they commute with transition.
>
> ```text
> Coalgebra / bialgebra:
> coalgebraic_bisimulation.v
> OMI_bialgebra.v
>
> algebraic iteration = coalgebraic observation stream
> ```
>
> This supports **replay**, **observer**, and **trace equivalence**.
>
> Important caution:
>
> ```text
> OMI_bialgebra.v extraction uses lsl/land/conditional polynomial step.
> ```
>
> That extraction looks like the GF(2¹⁶) multiply-by-alpha implementation, not the `rotl/rotl/rotr XOR c` Delta Law from `DiagonalClosure.v`. So for canon clarity, separate them:
>
> ```text
> Atomic Delta Law:
> rotl/rotl/rotr/XOR/c
>
> GF(2¹⁶) alpha step:
> lsl/conditional reduction/mask
>
> Both are valid layers, but do not describe them as the same algorithm unless a refinement theorem explicitly bridges them.
> ```
>
> For the constitutional grid, I’d map the uploaded proofs like this:
>
> ```text
> A1 Transition
>   DiagonalClosure.delta16_width_preserving
>   DiagonalClosure.delta16_deterministic
>
> A2 Control Plane
>   DiagonalClosure D+/D- closure, RS=0x1E, wheel=0x78
>
> A3 Projection
>   functorial_semantics functor_theorem
>   MetricProjection projection boundary
>
> A4 Escape
>   not directly proven yet
>
> A5 Partition/Chirality
>   FiniteIncidence Fano/tetra incidence
>   DiagonalClosure phase schedule
>   BQFBridge selectors
>
> A6 Proposal/Receipt
>   not directly proven yet
>
> A7 Branch/Reconciliation
>   coalgebraic_bisimulation trace/bisimulation material
>   partial support only, not full VCS reconciliation yet
> ```
>
> Definitive lock:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Shift only implements rotation or stages registers.
> Projection is lawful only when it commutes with transition.
> Geometry projects; it does not accept.
> Validation and receipt still need their own proof layer.
> ```
>
> we can update /home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md also

<details><summary>4 previous messages</summary>

> I’ll treat this as a refinement to the dev-doc, not an implementation pass yet. I’m checking the current file and nearby canon references so the plan can place the shift/XOR/rotation proof mapping cleanly without overclaiming what the proofs establish.
>
> <details><summary>Explored a file, a search, ran a command</summary>
>
> <details><summary>Explored a file, a search</summary>
>
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
> - Searched for `shift|rotation|XOR|delta16|DiagonalClosure|GF|alpha|Projection is lawful|Geometry projects|Receipt accepts|monotonic unary` in `.`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> Plan
>
> # Relational Access Envelope Shift/XOR Proof Alignment Plan
>
> ## Summary
> Update `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` to make the operation doctrine definitive and proof-aligned.
>
> Canonical lock:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> ## Key Changes
>
> - Add a new section titled `Primitive Operation Doctrine`.
> - State the definitive classification:
>
> ```text
> Primitive object behavior:
> monotonic unary array compose operations over addressed frames.
>
> Primary reversible operator:
> XOR.
>
> Valid orbit-preserving movement:
> rotation.
>
> Narrow staging-only movement:
> shift.
>
> Invalid:
> using shift as general protocol identity, address authority, receipt authority, or object behavior.
> ```
>
> - Replace the current broader shift wording with the stricter rule:
>
> ```text
> Shift is not a protocol primitive.
>
> Shift may appear only as:
> 1. implementation support for rotation
> 2. explicit mask/register layout
> 3. 64-bit unary register prefill
> 4. tap-code or Morse-code in-stream staging
> 5. Polybius coordinate preparation
> 6. Tetragrammatron address/gate observation
> 7. Metatron rule-set/projection framing
> ```
>
> - Add a proof-alignment section:
>   - `DiagonalClosure.v`: atomic Delta Law is `rotl/rotl/rotr/XOR/c`
>   - `FiniteIncidence.v`: tetrahedron, Fano plane, Schläfli, rectified core support incidence/projection geometry
>   - `BQFBridge.v`: supports gauge/surface geometry and selectors, not acceptance
>   - `functorial_semantics.v`: projection is lawful only when it commutes with transition
>   - `coalgebraic_bisimulation.v` and `OMI_bialgebra.v`: support replay, observation streams, and trace equivalence
> - Add a caution separating algorithms:
>   - Atomic Delta Law: `rotl/rotl/rotr/XOR/c`
>   - GF(2^16) alpha step: `lsl/conditional reduction/mask`
>   - Do not describe them as the same algorithm unless a refinement theorem bridges them.
>
> ## Audit Rule To Add
>
> Add an implementation audit block for future code/doc review:
>
> ```text
> Audit all Haskell/C/docs for shift/shiftL/shiftR/<< / >>.
>
> Classify every occurrence as:
> A. rotation implementation
> B. mask/register layout
> C. unary prefill/staging
> D. invalid semantic shift
>
> Fail the audit if any shift is used as identity, authority, address creation,
> receipt creation, or object behavior.
> ```
>
> ## Later Verification
>
> Do not modify `constitutional-grid` in this pass.
>
> Later constitutional-grid verification should map proof support as:
>
> ```text
> A1 Transition:
>   DiagonalClosure.delta16_width_preserving
>   DiagonalClosure.delta16_deterministic
>
> A2 Control Plane:
>   DiagonalClosure D+/D- closure, RS=0x1E, wheel=0x78
>
> A3 Projection:
>   functorial_semantics functor_theorem
>   MetricProjection projection boundary
>
> A4 Escape:
>   not directly proven yet
>
> A5 Partition/Chirality:
>   FiniteIncidence Fano/tetra incidence
>   DiagonalClosure phase schedule
>   BQFBridge selectors
>
> A6 Proposal/Receipt:
>   not directly proven yet
>
> A7 Branch/Reconciliation:
>   coalgebraic_bisimulation trace/bisimulation material
>   partial support only
> ```
>
> ## Assumptions
> - This update touches only `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`.
> - No `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid` files are modified in this pass.
> - The doc should remain definitive doctrine, while proof mapping is phrased carefully to avoid claiming unproven receipt/validation coverage.
>
> Plan implementation
>
> Status: completed
> # Relational Access Envelope Shift/XOR Proof Alignment Plan
>
> ## Summary
> Update `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` to make the operation doctrine definitive and proof-aligned.
>
> Canonical lock:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> ## Key Changes
>
> - Add a new section titled `Primitive Operation Doctrine`.
> - State the definitive classification:
>
> ```text
> Primitive object behavior:
> monotonic unary array compose operations over addressed frames.
>
> Primary reversible operator:
> XOR.
>
> Valid orbit-preserving movement:
> rotation.
>
> Narrow staging-only movement:
> shift.
>
> Invalid:
> using shift as general protocol identity, address authority, receipt authority, or object behavior.
> ```
>
> - Replace the current broader shift wording with the stricter rule:
>
> ```text
> Shift is not a protocol primitive.
>
> Shift may appear only as:
> 1. implementation support for rotation
> 2. explicit mask/register layout
> 3. 64-bit unary register prefill
> 4. tap-code or Morse-code in-stream staging
> 5. Polybius coordinate preparation
> 6. Tetragrammatron address/gate observation
> 7. Metatron rule-set/projection framing
> ```
>
> - Add a proof-alignment section:
>   - `DiagonalClosure.v`: atomic Delta Law is `rotl/rotl/rotr/XOR/c`
>   - `FiniteIncidence.v`: tetrahedron, Fano plane, Schläfli, rectified core support incidence/projection geometry
>   - `BQFBridge.v`: supports gauge/surface geometry and selectors, not acceptance
>   - `functorial_semantics.v`: projection is lawful only when it commutes with transition
>   - `coalgebraic_bisimulation.v` and `OMI_bialgebra.v`: support replay, observation streams, and trace equivalence
> - Add a caution separating algorithms:
>   - Atomic Delta Law: `rotl/rotl/rotr/XOR/c`
>   - GF(2^16) alpha step: `lsl/conditional reduction/mask`
>   - Do not describe them as the same algorithm unless a refinement theorem bridges them.
>
> ## Audit Rule To Add
>
> Add an implementation audit block for future code/doc review:
>
> ```text
> Audit all Haskell/C/docs for shift/shiftL/shiftR/<< / >>.
>
> Classify every occurrence as:
> A. rotation implementation
> B. mask/register layout
> C. unary prefill/staging
> D. invalid semantic shift
>
> Fail the audit if any shift is used as identity, authority, address creation,
> receipt creation, or object behavior.
> ```
>
> ## Later Verification
>
> Do not modify `constitutional-grid` in this pass.
>
> Later constitutional-grid verification should map proof support as:
>
> ```text
> A1 Transition:
>   DiagonalClosure.delta16_width_preserving
>   DiagonalClosure.delta16_deterministic
>
> A2 Control Plane:
>   DiagonalClosure D+/D- closure, RS=0x1E, wheel=0x78
>
> A3 Projection:
>   functorial_semantics functor_theorem
>   MetricProjection projection boundary
>
> A4 Escape:
>   not directly proven yet
>
> A5 Partition/Chirality:
>   FiniteIncidence Fano/tetra incidence
>   DiagonalClosure phase schedule
>   BQFBridge selectors
>
> A6 Proposal/Receipt:
>   not directly proven yet
>
> A7 Branch/Reconciliation:
>   coalgebraic_bisimulation trace/bisimulation material
>   partial support only
> ```
>
> ## Assumptions
> - This update touches only `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`.
> - No `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid` files are modified in this pass.
> - The doc should remain definitive doctrine, while proof mapping is phrased carefully to avoid claiming unproven receipt/validation coverage.
</details>

> PLEASE IMPLEMENT THIS PLAN:
> # Relational Access Envelope Shift/XOR Proof Alignment Plan
>
> ## Summary
> Update `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` to make the operation doctrine definitive and proof-aligned.
>
> Canonical lock:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> ## Key Changes
>
> - Add a new section titled `Primitive Operation Doctrine`.
> - State the definitive classification:
>
> ```text
> Primitive object behavior:
> monotonic unary array compose operations over addressed frames.
>
> Primary reversible operator:
> XOR.
>
> Valid orbit-preserving movement:
> rotation.
>
> Narrow staging-only movement:
> shift.
>
> Invalid:
> using shift as general protocol identity, address authority, receipt authority, or object behavior.
> ```
>
> - Replace the current broader shift wording with the stricter rule:
>
> ```text
> Shift is not a protocol primitive.
>
> Shift may appear only as:
> 1. implementation support for rotation
> 2. explicit mask/register layout
> 3. 64-bit unary register prefill
> 4. tap-code or Morse-code in-stream staging
> 5. Polybius coordinate preparation
> 6. Tetragrammatron address/gate observation
> 7. Metatron rule-set/projection framing
> ```
>
> - Add a proof-alignment section:
>   - `DiagonalClosure.v`: atomic Delta Law is `rotl/rotl/rotr/XOR/c`
>   - `FiniteIncidence.v`: tetrahedron, Fano plane, Schläfli, rectified core support incidence/projection geometry
>   - `BQFBridge.v`: supports gauge/surface geometry and selectors, not acceptance
>   - `functorial_semantics.v`: projection is lawful only when it commutes with transition
>   - `coalgebraic_bisimulation.v` and `OMI_bialgebra.v`: support replay, observation streams, and trace equivalence
> - Add a caution separating algorithms:
>   - Atomic Delta Law: `rotl/rotl/rotr/XOR/c`
>   - GF(2^16) alpha step: `lsl/conditional reduction/mask`
>   - Do not describe them as the same algorithm unless a refinement theorem bridges them.
>
> ## Audit Rule To Add
>
> Add an implementation audit block for future code/doc review:
>
> ```text
> Audit all Haskell/C/docs for shift/shiftL/shiftR/<< / >>.
>
> Classify every occurrence as:
> A. rotation implementation
> B. mask/register layout
> C. unary prefill/staging
> D. invalid semantic shift
>
> Fail the audit if any shift is used as identity, authority, address creation,
> receipt creation, or object behavior.
> ```
>
> ## Later Verification
>
> Do not modify `constitutional-grid` in this pass.
>
> Later constitutional-grid verification should map proof support as:
>
> ```text
> A1 Transition:
>   DiagonalClosure.delta16_width_preserving
>   DiagonalClosure.delta16_deterministic
>
> A2 Control Plane:
>   DiagonalClosure D+/D- closure, RS=0x1E, wheel=0x78
>
> A3 Projection:
>   functorial_semantics functor_theorem
>   MetricProjection projection boundary
>
> A4 Escape:
>   not directly proven yet
>
> A5 Partition/Chirality:
>   FiniteIncidence Fano/tetra incidence
>   DiagonalClosure phase schedule
>   BQFBridge selectors
>
> A6 Proposal/Receipt:
>   not directly proven yet
>
> A7 Branch/Reconciliation:
>   coalgebraic_bisimulation trace/bisimulation material
>   partial support only
> ```
>
> ## Assumptions
> - This update touches only `/home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`.
> - No `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid` files are modified in this pass.
> - The doc should remain definitive doctrine, while proof mapping is phrased carefully to avoid claiming unproven receipt/validation coverage.

<details><summary>6 previous messages</summary>

> I’ll update only the relational access envelope dev-doc and keep the proof mapping careful: proof support where it exists, explicit gaps where it does not. I’m checking the current file state first.
>
> <details><summary>Explored a file, ran a command</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored a file</summary>
>
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> </details>
>
> The doc has the broader operation rule at lines 181-202, so I’ll replace that with the definitive doctrine and add proof alignment plus audit rules before the later constitutional-grid verification section.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` (+182 -14)
>
> </details>
>
> The doctrine update is applied. I’m reading back the changed section and checking status to confirm only this doc moved.
>
> <details><summary>Explored a file, ran 2 commands</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> - Ran `git status --short`
>
> - Ran `git diff --stat`
>
> </details>
</details>

Updated [OMI-RELATIONAL-ACCESS-ENVELOPE.md](./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md) with the definitive shift/XOR/rotation doctrine.

Added:
- `Primitive Operation Doctrine`
- stricter shift-only-staging rule
- proof alignment for `DiagonalClosure.v`, `FiniteIncidence.v`, `BQFBridge.v`, `functorial_semantics.v`, `coalgebraic_bisimulation.v`, and `OMI_bialgebra.v`
- explicit algorithm separation between Delta Law and GF(2^16) alpha step
- future shift audit rule
- later constitutional-grid proof-support mapping

Only that dev-doc was modified.

> lets contnue wth /home/main/omi/omi-canvas

<details><summary>4 previous messages</summary>

> I’ll inspect the current `omi-canvas` state after the carrier work and compare it against the updated canon doctrine, then give you the next implementation plan rather than changing files while we’re in plan mode.
>
> <details><summary>Explored a file, a search, ran a command</summary>
>
> <details><summary>Explored a search</summary>
>
> - Searched for `shift|shiftL|shiftR|<<|>>|advanceUnary|xorWitness|OmiFragment|hash|checksum|digest|identity|authority|attestation|Receipt|Carrier|Unary|Rotation|XOR` in `src`
>
> </details>
>
> - Ran `git status --short`
>
> <details><summary>Explored a file</summary>
>
> - Read `./src/OMI/Carrier.hs`
>
> </details>
>
> </details>
>
> Plan
>
> # OMI Canvas Shift/XOR Doctrine Alignment Plan
>
> ## Summary
> Continue in `/home/main/omi/omi-canvas` by aligning the Haskell carrier/adapters with the updated canon rule:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> The existing v0 type engine and current uncommitted adapter/carrier work stay intact.
>
> ## Key Changes
>
> - Add a small audit note to `README.md`, `AGENTS.md`, and `SKILLS.md` saying every `shift`, `shiftL`, `shiftR`, `<<`, and `>>` occurrence must classify as:
>   - rotation implementation
>   - mask/register layout
>   - unary prefill/staging
>   - invalid semantic shift
> - Tighten `OMI.Carrier` naming so private helpers make staging intent explicit:
>   - keep public `advanceUnary`
>   - rename private `shiftWord32Left`, `shiftWord16Left`, `shiftByteLeft`, and `shiftNibbleLeft` to `advanceWord32Left`, `advanceWord16Left`, `advanceByteLeft`, and `advanceNibbleLeft`
>   - keep those private and only reachable through `advanceUnary`
> - Leave `xorWitness` as the only public XOR witness operation in `OMI.Carrier`.
> - Keep `OMI.Markdown` evidence checksum as tamper metadata only. Its local `bit shift` helper is a positional conversion variable, not protocol shift; rename the variable to `pos` to avoid audit ambiguity.
> - Add a test/audit fixture that documents current shift classification:
>   - `OMI.Carrier.advanceUnary` = unary prefill/staging
>   - `OMI.Markdown.intToByte` bit-position extraction = mask/register layout
>   - no shift is used for identity, authority, address creation, receipt creation, or object behavior
>
> ## Public API Impact
>
> - No new public authority constructors.
> - No new attestation path.
> - No change to the v0 core pipeline:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> - `OMI.Carrier` remains the minimal carrier layer:
>
> ```text
> prefix + CAR frame + CDR frame + unary register
> ```
>
> ## Test Plan
>
> - Keep all existing tests.
> - Add/adjust tests to confirm:
>   - `advanceUnary` remains deterministic
>   - `xorWitness r r` clears to the null register
>   - carrier fragment relation does not depend on checksum/hash metadata
>   - no carrier API can construct `Attestation`
> - Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
>
> - Work remains scoped to `/home/main/omi/omi-canvas`.
> - Do not modify `omi-canon`, `omi-isa`, `omi-axioms`, or `constitutional-grid` in this pass.
> - Archive runtime/snapshot modules remain references only.
> - Existing uncommitted `omi-canvas` adapter and carrier files are preserved and refined, not rewritten.
>
> Plan implementation
>
> Status: completed
> # OMI Canvas Shift/XOR Doctrine Alignment Plan
>
> ## Summary
> Continue in `/home/main/omi/omi-canvas` by aligning the Haskell carrier/adapters with the updated canon rule:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> The existing v0 type engine and current uncommitted adapter/carrier work stay intact.
>
> ## Key Changes
>
> - Add a small audit note to `README.md`, `AGENTS.md`, and `SKILLS.md` saying every `shift`, `shiftL`, `shiftR`, `<<`, and `>>` occurrence must classify as:
>   - rotation implementation
>   - mask/register layout
>   - unary prefill/staging
>   - invalid semantic shift
> - Tighten `OMI.Carrier` naming so private helpers make staging intent explicit:
>   - keep public `advanceUnary`
>   - rename private `shiftWord32Left`, `shiftWord16Left`, `shiftByteLeft`, and `shiftNibbleLeft` to `advanceWord32Left`, `advanceWord16Left`, `advanceByteLeft`, and `advanceNibbleLeft`
>   - keep those private and only reachable through `advanceUnary`
> - Leave `xorWitness` as the only public XOR witness operation in `OMI.Carrier`.
> - Keep `OMI.Markdown` evidence checksum as tamper metadata only. Its local `bit shift` helper is a positional conversion variable, not protocol shift; rename the variable to `pos` to avoid audit ambiguity.
> - Add a test/audit fixture that documents current shift classification:
>   - `OMI.Carrier.advanceUnary` = unary prefill/staging
>   - `OMI.Markdown.intToByte` bit-position extraction = mask/register layout
>   - no shift is used for identity, authority, address creation, receipt creation, or object behavior
>
> ## Public API Impact
>
> - No new public authority constructors.
> - No new attestation path.
> - No change to the v0 core pipeline:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> - `OMI.Carrier` remains the minimal carrier layer:
>
> ```text
> prefix + CAR frame + CDR frame + unary register
> ```
>
> ## Test Plan
>
> - Keep all existing tests.
> - Add/adjust tests to confirm:
>   - `advanceUnary` remains deterministic
>   - `xorWitness r r` clears to the null register
>   - carrier fragment relation does not depend on checksum/hash metadata
>   - no carrier API can construct `Attestation`
> - Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
>
> - Work remains scoped to `/home/main/omi/omi-canvas`.
> - Do not modify `omi-canon`, `omi-isa`, `omi-axioms`, or `constitutional-grid` in this pass.
> - Archive runtime/snapshot modules remain references only.
> - Existing uncommitted `omi-canvas` adapter and carrier files are preserved and refined, not rewritten.
</details>

> This plan is correct and tight.
>
> I’d give Codex one extra instruction:
>
> ```text id="z5sp3l"
> Do not merely rename shift helpers.
> Add the audit classification as executable expectation in tests.
> ```
>
> Best final task prompt:
>
> ```text id="18x1b2"
> Implement the Shift/XOR Doctrine Alignment Plan in /home/main/omi/omi-canvas only.
>
> Preserve existing uncommitted adapter/carrier work.
>
> Rules:
> - XOR is the public difference witness.
> - Rotation is orbit-preserving.
> - Unary compose builds object behavior.
> - Shift is private staging only.
> - Receipt accepts.
>
> Actions:
> 1. Add audit doctrine note to README.md, AGENTS.md, SKILLS.md.
> 2. Rename private carrier shift helpers to advance* names.
> 3. Keep advanceUnary public.
> 4. Keep xorWitness public.
> 5. Rename Markdown checksum bit variable to pos.
> 6. Add tests documenting shift classification and authority boundaries.
> 7. Run cabal build all, cabal test all, and direct GHC no-code check.
> 8. Do not modify omi-canon, omi-isa, omi-axioms, or constitutional-grid.
> ```
>
> Short lock:
>
> ```text id="i1bj2w"
> No semantic shift.
> Only staged advance.
> XOR witnesses.
> Receipt accepts.
> ```

<details><summary>2 previous messages</summary>

> Plan
>
> # OMI Canvas Shift/XOR Doctrine Alignment Plan
>
> ## Summary
> Implement the shift/XOR doctrine alignment in `/home/main/omi/omi-canvas` only. Preserve the existing uncommitted adapter/carrier work and make the shift classification executable in tests, not just documentation.
>
> Canonical lock:
>
> ```text
> No semantic shift.
> Only staged advance.
> XOR witnesses.
> Receipt accepts.
> ```
>
> ## Key Changes
>
> - Update `README.md`, `AGENTS.md`, and `SKILLS.md` with the audit doctrine:
>   - XOR is the public difference witness.
>   - Rotation is orbit-preserving.
>   - Unary compose builds object behavior.
>   - Shift is private staging only.
>   - Receipt accepts.
> - Refine `OMI.Carrier`:
>   - keep public `advanceUnary`
>   - keep public `xorWitness`
>   - rename private shift helpers to staging names:
>     - `shiftWord32Left` -> `advanceWord32Left`
>     - `shiftWord16Left` -> `advanceWord16Left`
>     - `shiftByteLeft` -> `advanceByteLeft`
>     - `shiftNibbleLeft` -> `advanceNibbleLeft`
>   - keep all advance helpers private except `advanceUnary`
> - Refine `OMI.Markdown`:
>   - rename the local `bit shift` parameter in `intToByte` to `pos`
>   - keep checksum behavior as tamper metadata only, never identity
>
> ## Executable Audit Tests
>
> Add tests that explicitly classify current shift-like behavior:
>
> ```text
> OMI.Carrier.advanceUnary:
>   C. unary prefill/staging
>
> OMI.Markdown.intToByte bit-position extraction:
>   B. mask/register layout
>
> No occurrence:
>   D. invalid semantic shift
> ```
>
> Tests must assert:
> - `advanceUnary` is deterministic.
> - `advanceUnary` is the only public staged advance API.
> - `xorWitness r r` returns the null register.
> - carrier fragment identity does not depend on checksum/hash metadata.
> - no carrier/runtime/gossip/stream adapter can construct `Attestation`.
> - receipt/attestation still flows only through `OMI.Pipeline` / `OMI.Reconcile`.
>
> ## Verification
>
> Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Scope is `/home/main/omi/omi-canvas` only.
> - Do not modify `omi-canon`, `omi-isa`, `omi-axioms`, or `constitutional-grid`.
> - Archive runtime/snapshot modules remain references only.
> - Existing uncommitted `omi-canvas` adapter/carrier files are preserved and refined, not rewritten.
>
> Plan implementation
>
> Status: completed
> # OMI Canvas Shift/XOR Doctrine Alignment Plan
>
> ## Summary
> Implement the shift/XOR doctrine alignment in `/home/main/omi/omi-canvas` only. Preserve the existing uncommitted adapter/carrier work and make the shift classification executable in tests, not just documentation.
>
> Canonical lock:
>
> ```text
> No semantic shift.
> Only staged advance.
> XOR witnesses.
> Receipt accepts.
> ```
>
> ## Key Changes
>
> - Update `README.md`, `AGENTS.md`, and `SKILLS.md` with the audit doctrine:
>   - XOR is the public difference witness.
>   - Rotation is orbit-preserving.
>   - Unary compose builds object behavior.
>   - Shift is private staging only.
>   - Receipt accepts.
> - Refine `OMI.Carrier`:
>   - keep public `advanceUnary`
>   - keep public `xorWitness`
>   - rename private shift helpers to staging names:
>     - `shiftWord32Left` -> `advanceWord32Left`
>     - `shiftWord16Left` -> `advanceWord16Left`
>     - `shiftByteLeft` -> `advanceByteLeft`
>     - `shiftNibbleLeft` -> `advanceNibbleLeft`
>   - keep all advance helpers private except `advanceUnary`
> - Refine `OMI.Markdown`:
>   - rename the local `bit shift` parameter in `intToByte` to `pos`
>   - keep checksum behavior as tamper metadata only, never identity
>
> ## Executable Audit Tests
>
> Add tests that explicitly classify current shift-like behavior:
>
> ```text
> OMI.Carrier.advanceUnary:
>   C. unary prefill/staging
>
> OMI.Markdown.intToByte bit-position extraction:
>   B. mask/register layout
>
> No occurrence:
>   D. invalid semantic shift
> ```
>
> Tests must assert:
> - `advanceUnary` is deterministic.
> - `advanceUnary` is the only public staged advance API.
> - `xorWitness r r` returns the null register.
> - carrier fragment identity does not depend on checksum/hash metadata.
> - no carrier/runtime/gossip/stream adapter can construct `Attestation`.
> - receipt/attestation still flows only through `OMI.Pipeline` / `OMI.Reconcile`.
>
> ## Verification
>
> Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Scope is `/home/main/omi/omi-canvas` only.
> - Do not modify `omi-canon`, `omi-isa`, `omi-axioms`, or `constitutional-grid`.
> - Archive runtime/snapshot modules remain references only.
> - Existing uncommitted `omi-canvas` adapter/carrier files are preserved and refined, not rewritten.
</details>

> I think this is the direction that finally separates the *grammar* of OMI from the *implementation* of OMI.
>
> Up until now we've been borrowing words like **object**, **node**, **receipt**, **frame**, and **record** from existing computer science. Those words already carry decades of assumptions. The `Omi-` prefix lets the protocol define its own symbolic grammar.
>
> I'd make this an explicit doctrine.
>
> # OMI Symbolic Grammar
>
> ## Omicron Defines the Unit Outside the Units
>
> One of the primary goals of OMI is to avoid the ambiguity of ordinary computing vocabulary.
>
> Words such as:
>
> * object
> * node
> * record
> * frame
> * receipt
> * document
> * message
>
> already have multiple meanings across programming languages, databases, operating systems, networking, distributed systems, and mathematics.
>
> Rather than redefining those words, OMI introduces a symbolic grammar.
>
> The `Omi-` prefix declares that the word belongs to the OMI protocol itself.
>
> It is therefore interpreted according to OMI's constitutional rules rather than conventional computer science terminology.
>
> This is analogous to how the mathematical symbol `∅` immediately identifies the empty set instead of the English word "nothing."
>
> The purpose of Omicron is therefore not merely to name an object.
>
> It defines a symbolic unit outside ordinary units so that the protocol cannot accidentally inherit conflicting meanings.
>
> ---
>
> # Canonical OMI Symbolic Grammar
>
> The protocol is organized as a deterministic sequence of symbolic transformations.
>
> ```text
> Declaration
>
> ↓
>
> Omi-Notation
>
> ↓
>
> Omi-Citation
>
> ↓
>
> Truth Gate
>
> ↓
>
> Decision Table
>
> ↓
>
> Karnaugh Reduction
>
> ↓
>
> Combinator
>
> ↓
>
> Omi-Delta
>
> ↓
>
> Validation
>
> ↓
>
> Omi-Attestation
>
> ↓
>
> Omi-Attribution
>
> ↓
>
> Omi-Projection
> ```
>
> Every stage has exactly one responsibility.
>
> ---
>
> # Omi-Notation
>
> The symbolic representation of a relation.
>
> An Omi-Notation is syntax.
>
> It is neither accepted nor rejected.
>
> It simply declares structure.
>
> Examples include:
>
> * `omi---imo`
> * `o---o`
> * `/---/`
> * `?---?`
> * `@---@`
>
> An Omi-Notation is the symbolic grammar of the protocol.
>
> ---
>
> # Omi-Citation
>
> An addressed Omi-Notation.
>
> A citation binds notation to deterministic scope.
>
> Examples:
>
> ```text
> omi:FF/fs/gs/rs/us#relation
> ```
>
> or
>
> ```text
> o---o/---/?---?@---@
> ```
>
> A citation is addressable.
>
> It is not yet validated.
>
> ---
>
> # Omi-Delta
>
> The canonical transformation primitive.
>
> Omi-Delta represents deterministic change.
>
> It is named in honor of the Atomic Kernel Delta Law.
>
> Canonical doctrine:
>
> ```text
> XOR witnesses difference.
>
> Rotation preserves orbit.
>
> Unary composition constructs behavior.
>
> Shift only stages the next frame.
>
> Validation determines state.
> ```
>
> Omi-Delta is therefore not merely an arithmetic operation.
>
> It is the constitutional notion of lawful transformation.
>
> Every deterministic rewrite in OMI is an Omi-Delta.
>
> Examples include:
>
> * Delta Law
> * Karnaugh reduction
> * Boolean minimization
> * combinator construction
> * unary composition
> * routing normalization
> * address normalization
>
> Difference is witnessed.
>
> Structure is preserved.
>
> ---
>
> # Omi-Attestation
>
> Validation produces an attestation.
>
> An attestation does not replace the notation.
>
> It describes the verified state of the notation.
>
> Examples:
>
> ```text
> candidate
>
> validated
>
> accepted
>
> rejected
>
> deprecated
>
> merged
> ```
>
> An attestation belongs to a citation.
>
> It is not the citation itself.
>
> ---
>
> # Omi-Attribution
>
> Once attested, a notation may be attributed into larger structures.
>
> Examples include:
>
> * constitutional grid
> * JSON Canvas
> * Markdown
> * Blackboard
> * hardware topology
> * distributed routing
> * version history
>
> Attribution binds meaning to context.
>
> It does not alter identity.
>
> ---
>
> # Omi-Projection
>
> Projection realizes an attributed notation on a particular carrier.
>
> Examples include:
>
> * Markdown
> * JSON Canvas
> * SVG
> * DOM
> * React
> * OpenGL
> * LoRa
> * GPIO
> * firmware
> * eMMC
> * bitboards
>
> Projection is always downstream.
>
> Projection never determines authority.
>
> ---
>
> # Omi-State
>
> State describes the current deterministic condition of an OMI relation.
>
> Examples:
>
> ```text
> candidate
>
> validated
>
> accepted
>
> rejected
>
> deprecated
>
> merged
> ```
>
> State is metadata describing a notation.
>
> It is not the notation itself.
>
> ---
>
> # Omi-Phase
>
> Phase describes where a notation currently resides within the constitutional pipeline.
>
> Examples:
>
> ```text
> Declaration
>
> Truth Gate
>
> Decision Table
>
> Karnaugh
>
> Combinator
>
> Delta
>
> Validation
>
> Projection
> ```
>
> A phase is temporal only within the logical pipeline.
>
> It is not physical time.
>
> ---
>
> # Omi-Transform
>
> A deterministic mapping between phases.
>
> Examples:
>
> * normalization
> * reduction
> * encoding
> * decoding
> * routing
> * projection
>
> Every transform must preserve constitutional invariants.
>
> ---
>
> # Omi-Loop
>
> A deterministic recurrence.
>
> Examples include:
>
> * Tetragrammatron orbit
> * Metatron observation cycle
> * circular slide rule
> * unary composition
> * Polybius traversal
>
> An Omi-Loop is not an imperative loop.
>
> It is a lawful recurrence over notation.
>
> ---
>
> # Omi-Psi
>
> The observation surface.
>
> Omi-Psi represents interpretation without changing authority.
>
> Examples include:
>
> * observers
> * views
> * inspections
> * Blackboard visualization
> * Canvas rendering
>
> Observation never changes the notation.
>
> It only changes the current view.
>
> ---
>
> # Constitutional Principle
>
> The symbolic grammar deliberately separates identity from behavior.
>
> ```text
> Omi-Notation declares.
>
> Omi-Citation addresses.
>
> Omi-Delta transforms.
>
> Validation determines.
>
> Omi-Attestation witnesses.
>
> Omi-Attribution contextualizes.
>
> Omi-Projection realizes.
>
> Omi-Psi observes.
> ```
>
> No stage may assume the responsibility of another.
>
> This separation allows every carrier, runtime, document, hardware target, and projection surface to share the same deterministic symbolic grammar while remaining independent implementations.
>
> I think **Omi-Delta** is particularly strong because it anchors your entire transformation layer to something that already exists in your architecture: the Atomic Kernel's Delta Law. It becomes more than just "the delta function"—it becomes the constitutional name for *all lawful deterministic transformations*. That fits naturally with your emphasis on XOR as the witness of difference, rotations preserving orbit, and unary composition building structure.

<details><summary>4 previous messages</summary>

> This is a good doctrine layer to plan before touching code because it affects names and boundaries across docs and Haskell APIs. I’ll check where current `omi-canvas` and canon docs still use overloaded terms so the plan can separate symbolic grammar from implementation without a broad rename churn.
>
> <details><summary>Explored 2 searches, ran 2 commands</summary>
>
> <details><summary>Explored 2 searches</summary>
>
> - Searched for `Omi-Notation|Omi-Citation|Omi-Delta|Omi-Attestation|Omi-Attribution|Omi-Projection|Omi-State|Omi-Phase|Omi-Transform|Omi-Loop|Omi-Psi|object|node|record|frame|receipt` in `.`
> - Searched for `\bobject\b|\bnode\b|\brecord\b|\bframe\b|\breceipt\b|\bprojection\b|\battestation\b|Delta|Citation|Notation|Attribution|Psi|Phase|Transform|Loop` in `src`
>
> </details>
>
> - Ran `git status --short`
>
> - Ran `git status --short`
>
> </details>
>
> Plan
>
> # OMI Canvas Symbolic Grammar Alignment Plan
>
> ## Summary
> Continue `/home/main/omi/omi-canvas` by adding an explicit OMI symbolic grammar layer without rewriting the existing v0 type engine. The goal is to separate OMI protocol grammar from implementation vocabulary like object, node, frame, record, and receipt.
>
> Canonical grammar:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> ## Key Changes
>
> - Add `OMI.SymbolicGrammar` as a pure doctrine/type module exposing constructor-hidden symbolic wrappers:
>   - `OmiNotation`
>   - `OmiCitation`
>   - `OmiDelta`
>   - `OmiAttestation`
>   - `OmiAttribution`
>   - `OmiProjection`
>   - `OmiState`
>   - `OmiPhase`
>   - `OmiTransform`
>   - `OmiLoop`
>   - `OmiPsi`
> - Back each symbolic type with existing OMI values such as `Relation`, `SExpr`, `Gauge`, `ProjectionFace`, and `Attestation`; do not introduce external JSON/Text/Map domain models into the core grammar.
> - Add canonical constructors/accessors only:
>   - `mkOmiNotation`
>   - `citeOmiNotation`
>   - `deltaFromRelation`
>   - `attestOmiProjection`
>   - `attributeOmi`
>   - `projectOmi`
>   - `observeOmi`
>   - relation/accessor functions for each wrapper
> - Keep existing implementation names like `CanvasNode`, `CanvasEdge`, `AddressedFrame`, and `VCSRecord` where they describe adapter/carrier implementation surfaces, but document that they are not OMI symbolic grammar identities.
>
> ## Pipeline Alignment
>
> - Update docs to show the symbolic grammar mapped onto the current pipeline:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> TruthGate
> -> DecisionTable
> -> Karnaugh
> -> Combinator
> -> Omi-Delta
> -> Blackboard
> -> Omi-Projection
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Psi
> ```
>
> - Keep the existing v0 core stable:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> - Do not rename `OMI.Pipeline.Citation`, `Delta`, or `Attestation` in this pass. Instead, add symbolic wrappers and docs so downstream agents know the intended grammar.
>
> ## Doctrine Updates
>
> - Update `README.md`, `AGENTS.md`, and `SKILLS.md` with an “OMI Symbolic Grammar” section:
>   - ordinary terms are implementation vocabulary
>   - `Omi-*` terms are protocol grammar
>   - projection/Canvas/Markdown/Runtime/Gossip are downstream surfaces
>   - observation never changes authority
> - Add a rule that new public OMI protocol concepts should prefer `Omi-*` grammar names when they represent constitutional stages, and implementation names only when they represent a carrier or adapter surface.
>
> ## Tests
>
> - Add tests proving symbolic wrappers preserve relation identity:
>   - notation to citation preserves the underlying relation
>   - Omi-Delta wraps deterministic relation change but does not attest
>   - Omi-Projection cannot create authority by itself
>   - Omi-Psi observes without changing the relation
>   - Omi-Attestation can only be built from the existing attestation boundary
> - Keep all existing tests green:
>   - v0 type engine
>   - Markdown adapter
>   - Canvas JSON adapter
>   - Memory/Reconcile/VCS
>   - Carrier unary fragment
>   - Shift/XOR doctrine tests
> - Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Work remains scoped to `/home/main/omi/omi-canvas`.
> - Preserve all existing uncommitted adapter/carrier work.
> - Do not modify `omi-canon`, `omi-isa`, `omi-axioms`, or `constitutional-grid` in this pass.
> - This is an additive grammar layer, not a broad rename/refactor.
>
> Plan implementation
>
> Status: completed
> # OMI Canvas Symbolic Grammar Alignment Plan
>
> ## Summary
> Continue `/home/main/omi/omi-canvas` by adding an explicit OMI symbolic grammar layer without rewriting the existing v0 type engine. The goal is to separate OMI protocol grammar from implementation vocabulary like object, node, frame, record, and receipt.
>
> Canonical grammar:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> ## Key Changes
>
> - Add `OMI.SymbolicGrammar` as a pure doctrine/type module exposing constructor-hidden symbolic wrappers:
>   - `OmiNotation`
>   - `OmiCitation`
>   - `OmiDelta`
>   - `OmiAttestation`
>   - `OmiAttribution`
>   - `OmiProjection`
>   - `OmiState`
>   - `OmiPhase`
>   - `OmiTransform`
>   - `OmiLoop`
>   - `OmiPsi`
> - Back each symbolic type with existing OMI values such as `Relation`, `SExpr`, `Gauge`, `ProjectionFace`, and `Attestation`; do not introduce external JSON/Text/Map domain models into the core grammar.
> - Add canonical constructors/accessors only:
>   - `mkOmiNotation`
>   - `citeOmiNotation`
>   - `deltaFromRelation`
>   - `attestOmiProjection`
>   - `attributeOmi`
>   - `projectOmi`
>   - `observeOmi`
>   - relation/accessor functions for each wrapper
> - Keep existing implementation names like `CanvasNode`, `CanvasEdge`, `AddressedFrame`, and `VCSRecord` where they describe adapter/carrier implementation surfaces, but document that they are not OMI symbolic grammar identities.
>
> ## Pipeline Alignment
>
> - Update docs to show the symbolic grammar mapped onto the current pipeline:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> TruthGate
> -> DecisionTable
> -> Karnaugh
> -> Combinator
> -> Omi-Delta
> -> Blackboard
> -> Omi-Projection
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Psi
> ```
>
> - Keep the existing v0 core stable:
>
> ```text
> Gauge -> Wittgenstein -> TruthGate -> DecisionTable -> Karnaugh -> Pipeline -> Canvas
> ```
>
> - Do not rename `OMI.Pipeline.Citation`, `Delta`, or `Attestation` in this pass. Instead, add symbolic wrappers and docs so downstream agents know the intended grammar.
>
> ## Doctrine Updates
>
> - Update `README.md`, `AGENTS.md`, and `SKILLS.md` with an “OMI Symbolic Grammar” section:
>   - ordinary terms are implementation vocabulary
>   - `Omi-*` terms are protocol grammar
>   - projection/Canvas/Markdown/Runtime/Gossip are downstream surfaces
>   - observation never changes authority
> - Add a rule that new public OMI protocol concepts should prefer `Omi-*` grammar names when they represent constitutional stages, and implementation names only when they represent a carrier or adapter surface.
>
> ## Tests
>
> - Add tests proving symbolic wrappers preserve relation identity:
>   - notation to citation preserves the underlying relation
>   - Omi-Delta wraps deterministic relation change but does not attest
>   - Omi-Projection cannot create authority by itself
>   - Omi-Psi observes without changing the relation
>   - Omi-Attestation can only be built from the existing attestation boundary
> - Keep all existing tests green:
>   - v0 type engine
>   - Markdown adapter
>   - Canvas JSON adapter
>   - Memory/Reconcile/VCS
>   - Carrier unary fragment
>   - Shift/XOR doctrine tests
> - Run:
>
> ```sh
> cabal build all
> cabal test all
> ghc -isrc -fforce-recomp -fno-code app/Main.hs
> ```
>
> ## Assumptions
> - Work remains scoped to `/home/main/omi/omi-canvas`.
> - Preserve all existing uncommitted adapter/carrier work.
> - Do not modify `omi-canon`, `omi-isa`, `omi-axioms`, or `constitutional-grid` in this pass.
> - This is an additive grammar layer, not a broad rename/refactor.
</details>

> the write up is for /home/main/omi/omi-canon then we wll contne planb for omi-canvas

<details><summary>2 previous messages</summary>

> Plan
>
> # OMI Canon Symbolic Grammar Write-Up Plan
>
> ## Summary
> Add the symbolic grammar doctrine to `/home/main/omi/omi-canon` first. This establishes `Omi-*` vocabulary as protocol grammar, separate from implementation terms like object, node, frame, record, document, and message.
>
> The `omi-canvas` plan should wait until this canon write-up exists.
>
> ## Key Changes
>
> - Add a new canon dev-doc:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md
> ```
>
> - Define the constitutional grammar sequence:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> Truth Gate
> -> Decision Table
> -> Karnaugh Reduction
> -> Combinator
> -> Omi-Delta
> -> Validation
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Projection
> ```
>
> - State the core doctrine:
>
> ```text
> Ordinary words are implementation vocabulary.
> Omi-* words are protocol grammar.
> Projection/Canvas/Markdown/Runtime/Gossip are downstream surfaces.
> Observation never changes authority.
> ```
>
> ## Canonical Terms
>
> Define these as protocol grammar terms:
>
> - `Omi-Notation`: symbolic representation of a relation; syntax only.
> - `Omi-Citation`: addressed notation; addressable but not validated.
> - `Omi-Delta`: lawful deterministic transformation.
> - `Omi-Attestation`: verified state witness belonging to a citation.
> - `Omi-Attribution`: contextual binding after attestation.
> - `Omi-Projection`: realization on a carrier; never authority.
> - `Omi-State`: deterministic condition of an OMI relation.
> - `Omi-Phase`: location in the constitutional pipeline.
> - `Omi-Transform`: invariant-preserving mapping between phases.
> - `Omi-Loop`: lawful recurrence over notation.
> - `Omi-Psi`: observation surface; view without authority change.
>
> ## Doctrine Locks
>
> Include these locks explicitly:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> And:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> ## Integration Notes
>
> - Link or reference the existing dev-doc:
>
> ```text
> dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md
> ```
>
> - Do not update `constitutional-grid` yet.
> - Do not modify `omi-canvas` yet.
> - Later `omi-canvas` work should add an `OMI.SymbolicGrammar` module reflecting this canon, but only after this write-up lands.
>
> ## Assumptions
> - This pass modifies `/home/main/omi/omi-canon` only.
> - The new file is definitive doctrine, not archive material.
> - `omi-canvas`, `omi-isa`, `omi-axioms`, and `constitutional-grid` remain untouched in this pass.
>
> Plan implementation
>
> Status: completed
> # OMI Canon Symbolic Grammar Write-Up Plan
>
> ## Summary
> Add the symbolic grammar doctrine to `/home/main/omi/omi-canon` first. This establishes `Omi-*` vocabulary as protocol grammar, separate from implementation terms like object, node, frame, record, document, and message.
>
> The `omi-canvas` plan should wait until this canon write-up exists.
>
> ## Key Changes
>
> - Add a new canon dev-doc:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md
> ```
>
> - Define the constitutional grammar sequence:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> Truth Gate
> -> Decision Table
> -> Karnaugh Reduction
> -> Combinator
> -> Omi-Delta
> -> Validation
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Projection
> ```
>
> - State the core doctrine:
>
> ```text
> Ordinary words are implementation vocabulary.
> Omi-* words are protocol grammar.
> Projection/Canvas/Markdown/Runtime/Gossip are downstream surfaces.
> Observation never changes authority.
> ```
>
> ## Canonical Terms
>
> Define these as protocol grammar terms:
>
> - `Omi-Notation`: symbolic representation of a relation; syntax only.
> - `Omi-Citation`: addressed notation; addressable but not validated.
> - `Omi-Delta`: lawful deterministic transformation.
> - `Omi-Attestation`: verified state witness belonging to a citation.
> - `Omi-Attribution`: contextual binding after attestation.
> - `Omi-Projection`: realization on a carrier; never authority.
> - `Omi-State`: deterministic condition of an OMI relation.
> - `Omi-Phase`: location in the constitutional pipeline.
> - `Omi-Transform`: invariant-preserving mapping between phases.
> - `Omi-Loop`: lawful recurrence over notation.
> - `Omi-Psi`: observation surface; view without authority change.
>
> ## Doctrine Locks
>
> Include these locks explicitly:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> And:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> ## Integration Notes
>
> - Link or reference the existing dev-doc:
>
> ```text
> dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md
> ```
>
> - Do not update `constitutional-grid` yet.
> - Do not modify `omi-canvas` yet.
> - Later `omi-canvas` work should add an `OMI.SymbolicGrammar` module reflecting this canon, but only after this write-up lands.
>
> ## Assumptions
> - This pass modifies `/home/main/omi/omi-canon` only.
> - The new file is definitive doctrine, not archive material.
> - `omi-canvas`, `omi-isa`, `omi-axioms`, and `constitutional-grid` remain untouched in this pass.
</details>

> also add from /home/main/omi/omi-tetragrammatron/docs/Omi Surface Projection Faces.md
> /home/main/omi/omi-tetragrammatron/docs/Omi Glossary.md

<details><summary>4 previous messages</summary>

> I’ll fold those two tetragrammatron docs into the canon write-up plan as source references, then produce a complete replacement plan for the `omi-canon` symbolic grammar doc. I’m reading them first so the plan names the right projection/glossary terms instead of guessing.
>
> <details><summary>Explored 2 files, ran a command</summary>
>
> <details><summary>Explored 2 files</summary>
>
> - Read `./docs/Omi Glossary.md`
> - Read `./docs/Omi Surface Projection Faces.md`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> Plan
>
> # OMI Canon Symbolic Grammar Write-Up Plan
>
> ## Summary
> Add the symbolic grammar doctrine to `/home/main/omi/omi-canon` first, using the tetragrammatron projection-face and glossary docs as source references. This establishes `Omi-*` vocabulary as protocol grammar and readable face names, separate from implementation terms like object, node, frame, record, document, and message.
>
> The `omi-canvas` plan waits until this canon write-up lands.
>
> ## Key Changes
>
> - Add a definitive canon dev-doc:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md
> ```
>
> - Reference the existing envelope doctrine:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md
> ```
>
> - Use these tetragrammatron sources:
>   - `/home/main/omi/omi-tetragrammatron/docs/Omi Surface Projection Faces.md`
>   - `/home/main/omi/omi-tetragrammatron/docs/Omi Glossary.md`
>
> ## Core Doctrine
>
> State the calibration rule:
>
> ```text
> Omi-* name = development word / readable face
> Omi relation = protocol form
> Receipt = accepted state
> ```
>
> And the reduction rule:
>
> ```text
> (name . face)
> (face . role)
> (role . edge)
> (edge . receipt-path)
> ```
>
> Lock the authority boundary:
>
> ```text
> Names do not create modules.
> Markers do not create authority.
> Projections do not accept state.
> Rendering does not accept state.
> Bridges do not accept state.
> Validation judges.
> Receipt accepts.
> ```
>
> ## Canonical Grammar Sequence
>
> Define the symbolic pipeline:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> Truth Gate
> -> Decision Table
> -> Karnaugh Reduction
> -> Combinator
> -> Omi-Delta
> -> Validation
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Projection
> ```
>
> Add the constitutional responsibility lock:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> ## Terms To Define
>
> Define these as protocol grammar terms:
>
> - `Omi-Notation`: symbolic representation of a relation; syntax only.
> - `Omi-Citation`: addressed notation; addressable but not validated.
> - `Omi-Delta`: lawful deterministic transformation.
> - `Omi-Attestation`: verified state witness belonging to a citation.
> - `Omi-Attribution`: contextual binding after attestation.
> - `Omi-Projection`: realization on a carrier; never authority.
> - `Omi-State`: deterministic condition of an OMI relation.
> - `Omi-Phase`: location in the constitutional pipeline.
> - `Omi-Transform`: invariant-preserving mapping between phases.
> - `Omi-Loop`: lawful recurrence over notation.
> - `Omi-Psi`: observation surface; view without authority change.
>
> Also include named-face examples from the tetragrammatron docs, but reduce them to relations rather than treating them as modules:
>
> ```text
> Omi-Form      -> (face . structural)
> Omi-Glyph     -> (face . symbolic)
> Omi-Hash      -> (face . digest-witness)
> Omi-Receipt   -> (face . lawful-resolution-witness)
> Omi-Matrix    -> (face . observation)
> Omi-Gnomon    -> (face . orientation)
> Omi-Mirror    -> (face . chirality)
> Omi-Portal    -> (face . access)
> Omi-World     -> (face . environment)
> Omi-Barcode   -> (face . carrier)
> Omi-JabCode   -> (carrier . barcode-polychrome)
> Omi-CAR       -> (payload . head)
> Omi-CDR       -> (payload . continuation)
> Omi-CID       -> (payload . agreement)
> Omi-Node      -> context-selected node face, not protocol identity
> Omi-Frame     -> carrier frame projection, not authority
> ```
>
> ## Operation Doctrine
>
> Include the existing operation lock:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> Tie it to `Omi-Delta` as the constitutional name for lawful deterministic transformations, including Delta Law, Karnaugh reduction, Boolean minimization, combinator construction, unary composition, routing normalization, and address normalization.
>
> ## Later Work
>
> - Do not update `constitutional-grid` in this pass.
> - Do not modify `omi-canvas` in this pass.
> - Later `omi-canvas` work should add an `OMI.SymbolicGrammar` module reflecting this canon, but only after this write-up lands.
>
> ## Assumptions
> - This pass modifies `/home/main/omi/omi-canon` only.
> - The new file is definitive doctrine, not archive material.
> - `omi-canvas`, `omi-isa`, `omi-axioms`, and `constitutional-grid` remain untouched in this pass.
>
> Plan implementation
>
> Status: completed
> # OMI Canon Symbolic Grammar Write-Up Plan
>
> ## Summary
> Add the symbolic grammar doctrine to `/home/main/omi/omi-canon` first, using the tetragrammatron projection-face and glossary docs as source references. This establishes `Omi-*` vocabulary as protocol grammar and readable face names, separate from implementation terms like object, node, frame, record, document, and message.
>
> The `omi-canvas` plan waits until this canon write-up lands.
>
> ## Key Changes
>
> - Add a definitive canon dev-doc:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md
> ```
>
> - Reference the existing envelope doctrine:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md
> ```
>
> - Use these tetragrammatron sources:
>   - `/home/main/omi/omi-tetragrammatron/docs/Omi Surface Projection Faces.md`
>   - `/home/main/omi/omi-tetragrammatron/docs/Omi Glossary.md`
>
> ## Core Doctrine
>
> State the calibration rule:
>
> ```text
> Omi-* name = development word / readable face
> Omi relation = protocol form
> Receipt = accepted state
> ```
>
> And the reduction rule:
>
> ```text
> (name . face)
> (face . role)
> (role . edge)
> (edge . receipt-path)
> ```
>
> Lock the authority boundary:
>
> ```text
> Names do not create modules.
> Markers do not create authority.
> Projections do not accept state.
> Rendering does not accept state.
> Bridges do not accept state.
> Validation judges.
> Receipt accepts.
> ```
>
> ## Canonical Grammar Sequence
>
> Define the symbolic pipeline:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> Truth Gate
> -> Decision Table
> -> Karnaugh Reduction
> -> Combinator
> -> Omi-Delta
> -> Validation
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Projection
> ```
>
> Add the constitutional responsibility lock:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> ## Terms To Define
>
> Define these as protocol grammar terms:
>
> - `Omi-Notation`: symbolic representation of a relation; syntax only.
> - `Omi-Citation`: addressed notation; addressable but not validated.
> - `Omi-Delta`: lawful deterministic transformation.
> - `Omi-Attestation`: verified state witness belonging to a citation.
> - `Omi-Attribution`: contextual binding after attestation.
> - `Omi-Projection`: realization on a carrier; never authority.
> - `Omi-State`: deterministic condition of an OMI relation.
> - `Omi-Phase`: location in the constitutional pipeline.
> - `Omi-Transform`: invariant-preserving mapping between phases.
> - `Omi-Loop`: lawful recurrence over notation.
> - `Omi-Psi`: observation surface; view without authority change.
>
> Also include named-face examples from the tetragrammatron docs, but reduce them to relations rather than treating them as modules:
>
> ```text
> Omi-Form      -> (face . structural)
> Omi-Glyph     -> (face . symbolic)
> Omi-Hash      -> (face . digest-witness)
> Omi-Receipt   -> (face . lawful-resolution-witness)
> Omi-Matrix    -> (face . observation)
> Omi-Gnomon    -> (face . orientation)
> Omi-Mirror    -> (face . chirality)
> Omi-Portal    -> (face . access)
> Omi-World     -> (face . environment)
> Omi-Barcode   -> (face . carrier)
> Omi-JabCode   -> (carrier . barcode-polychrome)
> Omi-CAR       -> (payload . head)
> Omi-CDR       -> (payload . continuation)
> Omi-CID       -> (payload . agreement)
> Omi-Node      -> context-selected node face, not protocol identity
> Omi-Frame     -> carrier frame projection, not authority
> ```
>
> ## Operation Doctrine
>
> Include the existing operation lock:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary compose builds object behavior.
> Shift only stages the next frame.
> Receipt accepts.
> ```
>
> Tie it to `Omi-Delta` as the constitutional name for lawful deterministic transformations, including Delta Law, Karnaugh reduction, Boolean minimization, combinator construction, unary composition, routing normalization, and address normalization.
>
> ## Later Work
>
> - Do not update `constitutional-grid` in this pass.
> - Do not modify `omi-canvas` in this pass.
> - Later `omi-canvas` work should add an `OMI.SymbolicGrammar` module reflecting this canon, but only after this write-up lands.
>
> ## Assumptions
> - This pass modifies `/home/main/omi/omi-canon` only.
> - The new file is definitive doctrine, not archive material.
> - `omi-canvas`, `omi-isa`, `omi-axioms`, and `constitutional-grid` remain untouched in this pass.
</details>

> I think this is a solid plan overall, and I would make only a few structural refinements before you treat it as canonical.
>
> ## 1. Separate protocol grammar from named faces
>
> Right now the draft mixes the **core protocol nouns** with the **projection vocabulary**.
>
> I would explicitly split them.
>
> ```text
> Protocol Grammar
>
> Omi-Notation
> Omi-Citation
> Omi-Delta
> Omi-Attestation
> Omi-Attribution
> Omi-State
> Omi-Phase
> Omi-Transform
> Omi-Loop
> Omi-Psi
> ```
>
> then later
>
> ```text
> Named Faces
>
> Omi-Form
> Omi-Glyph
> Omi-Matrix
> Omi-Portal
> Omi-World
> Omi-Gnomon
> Omi-Barcode
> Omi-JabCode
> Omi-Mirror
> ...
> ```
>
> Those are different layers.
>
> ---
>
> # 2. Replace "Receipt accepts"
>
> This is the only sentence I'd change.
>
> You already decided "receipt" is overloaded.
>
> Instead make the primitive the Omi-Ring.
>
> ```text
> Recognition is not acceptance.
>
> Citation is not acceptance.
>
> Omi-Ring formation is not acceptance.
>
> Projection is not acceptance.
>
> Validation determines.
>
> Accepted Omi-State may be recorded.
> ```
>
> or
>
> ```text
> Validation determines.
>
> Attestation witnesses.
>
> Accepted Omi-State may be recorded.
> ```
>
> That keeps "receipt" from remaining the constitutional primitive.
>
> ---
>
> # 3. Omi-Ring belongs in the core grammar
>
> I would absolutely insert it.
>
> ```
> Declaration
>
> ↓
>
> Omi-Notation
>
> ↓
>
> Omi-Citation
>
> ↓
>
> Omi-Ring
>
> ↓
>
> Truth Gate
>
> ↓
>
> Decision Table
>
> ↓
>
> Karnaugh
>
> ↓
>
> Combinator
>
> ↓
>
> Omi-Delta
>
> ↓
>
> Validation
>
> ↓
>
> Omi-Attestation
>
> ↓
>
> Omi-Attribution
>
> ↓
>
> Omi-Projection
> ```
>
> because the Ring is the first **fully addressed notation witness**.
>
> ---
>
> # 4. Add Omi-Carrier
>
> This one is missing.
>
> You've spent months formalizing
>
> ```
> FF 00 1C 1D 1E 1F 20 FF
> ```
>
> and
>
> ```
> o---o/---/?---?@---@
> ```
>
> Those together are a carrier.
>
> I'd define
>
> ```
> Omi-Carrier
> ```
>
> as
>
> > the transport envelope for an Omi-Ring.
>
> That separates
>
> ```
> Notation
>
> ↓
>
> Citation
>
> ↓
>
> Ring
>
> ↓
>
> Carrier
>
> ↓
>
> Projection
> ```
>
> very cleanly.
>
> ---
>
> # 5. Omi-Delta should explicitly own the operation doctrine
>
> I think this becomes one of the strongest sections.
>
> ```
> Omi-Delta
>
> The constitutional transformation primitive.
> ```
>
> Then simply state
>
> ```
> XOR witnesses difference.
>
> Rotation preserves orbit.
>
> Unary composition constructs relation.
>
> Shift only stages the next frame.
>
> Validation determines state.
> ```
>
> That makes Delta the owner of every lawful rewrite.
>
> ---
>
> # 6. Add an "Implementation Independence" section
>
> One thing you've been converging on across OMI Canvas, OMI ISA, and the canon is this idea:
>
> ```
> One grammar.
>
> Many projections.
> ```
>
> I'd explicitly state
>
> ```
> The symbolic grammar is implementation-independent.
>
> The same Omi-Notation may project into
>
> Markdown
>
> JSON Canvas
>
> OMI-Lisp
>
> Haskell
>
> ISA
>
> DOM
>
> SVG
>
> React
>
> GPIO
>
> LoRa
>
> eMMC
>
> Bitboards
>
> or any future carrier.
>
> None of those implementations redefine the grammar.
> ```
>
> That becomes a constitutional rule.
>
> ---
>
> # 7. Reserve Omi-Node
>
> I would keep
>
> ```
> Omi-Node
> ```
>
> out of the core grammar.
>
> Reserve it for
>
> ```
> JSON Canvas
>
> graphs
>
> AST
>
> LSP
>
> dependency graphs
>
> proof graphs
> ```
>
> That avoids conflating graph theory with protocol identity.
>
> ---
>
> # 8. Add one doctrine tying everything together
>
> I think the paper wants one short paragraph explaining *why* all these `Omi-*` words exist.
>
> Something like:
>
> > The `Omi-*` prefix establishes a symbolic protocol grammar independent of any particular implementation. Ordinary terms such as object, node, record, frame, message, and receipt have accumulated different meanings across programming languages, operating systems, networking, databases, and mathematics. OMI introduces a separate vocabulary whose meanings are fixed constitutionally. Implementations may project the grammar, but they do not redefine it.
>
> ---
>
> ## I think the canonical layering becomes
>
> ```text
> OMI Symbolic Grammar
>
> Grammar
> ──────────────
> Omi-Notation
> Omi-Citation
> Omi-Ring
> Omi-Delta
> Omi-Attestation
> Omi-Attribution
>
> Lifecycle
> ──────────────
> Omi-State
> Omi-Phase
> Omi-Transform
> Omi-Loop
>
> Observation
> ──────────────
> Omi-Psi
>
> Transport
> ──────────────
> Omi-Carrier
>
> Projection
> ──────────────
> Omi-Form
> Omi-Glyph
> Omi-Matrix
> Omi-Portal
> Omi-World
> Omi-Node
> Omi-Barcode
> Omi-JabCode
> ...
> ```
>
> I think this is cleaner than earlier versions because it distinguishes **identity**, **lifecycle**, **transport**, **observation**, and **projection**. That same separation also aligns with the architecture you've been building: the symbolic grammar remains stable while Markdown, JSON Canvas, Haskell types, hardware carriers, and other systems become interchangeable projection targets rather than redefining the protocol itself.

<details><summary>2 previous messages</summary>

> Plan
>
> # OMI Canon Symbolic Grammar Write-Up Plan
>
> ## Summary
> Add a definitive symbolic grammar doctrine to `/home/main/omi/omi-canon` before continuing `omi-canvas`. This write-up separates protocol grammar from named projection faces and replaces overloaded ordinary terms with constitutionally scoped `Omi-*` terms.
>
> The core doctrine:
>
> ```text
> The Omi-* prefix establishes symbolic protocol grammar.
> Implementations may project the grammar.
> Implementations do not redefine the grammar.
> ```
>
> ## File To Add
>
> Create:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md
> ```
>
> Reference:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md
> /home/main/omi/omi-tetragrammatron/docs/Omi Surface Projection Faces.md
> /home/main/omi/omi-tetragrammatron/docs/Omi Glossary.md
> ```
>
> ## Core Structure
>
> Organize the document into distinct layers:
>
> ```text
> Grammar
>   Omi-Notation
>   Omi-Citation
>   Omi-Ring
>   Omi-Delta
>   Omi-Attestation
>   Omi-Attribution
>
> Lifecycle
>   Omi-State
>   Omi-Phase
>   Omi-Transform
>   Omi-Loop
>
> Observation
>   Omi-Psi
>
> Transport
>   Omi-Carrier
>
> Projection
>   named faces such as Omi-Form, Omi-Glyph, Omi-Matrix, Omi-Portal, Omi-World,
>   Omi-Node, Omi-Barcode, Omi-JabCode, and related projection/readable faces
> ```
>
> ## Canonical Pipeline
>
> Define the symbolic sequence as:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> Omi-Ring
> -> Truth Gate
> -> Decision Table
> -> Karnaugh
> -> Combinator
> -> Omi-Delta
> -> Validation
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Projection
> ```
>
> State the responsibility lock:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Ring witnesses fully addressed notation.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> ## Term Definitions
>
> Define the protocol grammar terms:
>
> - `Omi-Notation`: symbolic representation of a relation; syntax only.
> - `Omi-Citation`: addressed notation; addressable but not validated.
> - `Omi-Ring`: fully addressed notation witness.
> - `Omi-Delta`: constitutional transformation primitive.
> - `Omi-Attestation`: witness of validation result.
> - `Omi-Attribution`: contextual binding after attestation.
> - `Omi-State`: deterministic condition of an OMI relation.
> - `Omi-Phase`: location in the constitutional pipeline.
> - `Omi-Transform`: invariant-preserving mapping between phases.
> - `Omi-Loop`: lawful recurrence over notation.
> - `Omi-Psi`: observation surface; view without authority change.
> - `Omi-Carrier`: transport envelope for an Omi-Ring.
> - `Omi-Projection`: realization on a carrier or surface; never authority.
>
> Define `Omi-Delta` as owning the operation doctrine:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary composition constructs relation.
> Shift only stages the next frame.
> Validation determines state.
> ```
>
> ## Named Faces
>
> Add a separate named-faces section using the tetragrammatron docs.
>
> Calibration rule:
>
> ```text
> Omi-* name = development word / readable face
> Omi relation = protocol form
> Accepted Omi-State may be recorded
> ```
>
> Reduction rule:
>
> ```text
> (name . face)
> (face . role)
> (role . edge)
> (edge . attestation-path)
> ```
>
> Examples:
>
> ```text
> Omi-Form      -> (face . structural)
> Omi-Glyph     -> (face . symbolic)
> Omi-Matrix    -> (face . observation)
> Omi-Gnomon    -> (face . orientation)
> Omi-Mirror    -> (face . chirality)
> Omi-Portal    -> (face . access)
> Omi-World     -> (face . environment)
> Omi-Barcode   -> (face . carrier)
> Omi-JabCode   -> (carrier . barcode-polychrome)
> Omi-CAR       -> (payload . head)
> Omi-CDR       -> (payload . continuation)
> Omi-CID       -> (payload . agreement)
> Omi-Node      -> context-selected projection face, not protocol identity
> Omi-Frame     -> carrier frame projection, not authority
> ```
>
> ## Acceptance Boundary
>
> Avoid making “receipt” the primitive.
>
> Use this lock instead:
>
> ```text
> Recognition is not acceptance.
> Citation is not acceptance.
> Omi-Ring formation is not acceptance.
> Projection is not acceptance.
> Validation determines.
> Omi-Attestation witnesses.
> Accepted Omi-State may be recorded.
> ```
>
> ## Implementation Independence
>
> Add a constitutional rule:
>
> ```text
> One grammar.
> Many projections.
> ```
>
> State that the same Omi-Notation may project into:
>
> ```text
> Markdown
> JSON Canvas
> OMI-Lisp
> Haskell
> ISA
> DOM
> SVG
> React
> GPIO
> LoRa
> eMMC
> Bitboards
> future carriers
> ```
>
> None of these implementations redefine the grammar.
>
> ## Assumptions
> - This pass modifies `/home/main/omi/omi-canon` only.
> - Do not modify `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid`.
> - The new file is definitive doctrine, not archive material.
> - `Omi-Node` is reserved for projection contexts such as JSON Canvas, graphs, AST, LSP, dependency graphs, and proof graphs; it is not core protocol identity.
>
> Plan implementation
>
> Status: completed
> # OMI Canon Symbolic Grammar Write-Up Plan
>
> ## Summary
> Add a definitive symbolic grammar doctrine to `/home/main/omi/omi-canon` before continuing `omi-canvas`. This write-up separates protocol grammar from named projection faces and replaces overloaded ordinary terms with constitutionally scoped `Omi-*` terms.
>
> The core doctrine:
>
> ```text
> The Omi-* prefix establishes symbolic protocol grammar.
> Implementations may project the grammar.
> Implementations do not redefine the grammar.
> ```
>
> ## File To Add
>
> Create:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md
> ```
>
> Reference:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md
> /home/main/omi/omi-tetragrammatron/docs/Omi Surface Projection Faces.md
> /home/main/omi/omi-tetragrammatron/docs/Omi Glossary.md
> ```
>
> ## Core Structure
>
> Organize the document into distinct layers:
>
> ```text
> Grammar
>   Omi-Notation
>   Omi-Citation
>   Omi-Ring
>   Omi-Delta
>   Omi-Attestation
>   Omi-Attribution
>
> Lifecycle
>   Omi-State
>   Omi-Phase
>   Omi-Transform
>   Omi-Loop
>
> Observation
>   Omi-Psi
>
> Transport
>   Omi-Carrier
>
> Projection
>   named faces such as Omi-Form, Omi-Glyph, Omi-Matrix, Omi-Portal, Omi-World,
>   Omi-Node, Omi-Barcode, Omi-JabCode, and related projection/readable faces
> ```
>
> ## Canonical Pipeline
>
> Define the symbolic sequence as:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> Omi-Ring
> -> Truth Gate
> -> Decision Table
> -> Karnaugh
> -> Combinator
> -> Omi-Delta
> -> Validation
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Projection
> ```
>
> State the responsibility lock:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Ring witnesses fully addressed notation.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> ## Term Definitions
>
> Define the protocol grammar terms:
>
> - `Omi-Notation`: symbolic representation of a relation; syntax only.
> - `Omi-Citation`: addressed notation; addressable but not validated.
> - `Omi-Ring`: fully addressed notation witness.
> - `Omi-Delta`: constitutional transformation primitive.
> - `Omi-Attestation`: witness of validation result.
> - `Omi-Attribution`: contextual binding after attestation.
> - `Omi-State`: deterministic condition of an OMI relation.
> - `Omi-Phase`: location in the constitutional pipeline.
> - `Omi-Transform`: invariant-preserving mapping between phases.
> - `Omi-Loop`: lawful recurrence over notation.
> - `Omi-Psi`: observation surface; view without authority change.
> - `Omi-Carrier`: transport envelope for an Omi-Ring.
> - `Omi-Projection`: realization on a carrier or surface; never authority.
>
> Define `Omi-Delta` as owning the operation doctrine:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary composition constructs relation.
> Shift only stages the next frame.
> Validation determines state.
> ```
>
> ## Named Faces
>
> Add a separate named-faces section using the tetragrammatron docs.
>
> Calibration rule:
>
> ```text
> Omi-* name = development word / readable face
> Omi relation = protocol form
> Accepted Omi-State may be recorded
> ```
>
> Reduction rule:
>
> ```text
> (name . face)
> (face . role)
> (role . edge)
> (edge . attestation-path)
> ```
>
> Examples:
>
> ```text
> Omi-Form      -> (face . structural)
> Omi-Glyph     -> (face . symbolic)
> Omi-Matrix    -> (face . observation)
> Omi-Gnomon    -> (face . orientation)
> Omi-Mirror    -> (face . chirality)
> Omi-Portal    -> (face . access)
> Omi-World     -> (face . environment)
> Omi-Barcode   -> (face . carrier)
> Omi-JabCode   -> (carrier . barcode-polychrome)
> Omi-CAR       -> (payload . head)
> Omi-CDR       -> (payload . continuation)
> Omi-CID       -> (payload . agreement)
> Omi-Node      -> context-selected projection face, not protocol identity
> Omi-Frame     -> carrier frame projection, not authority
> ```
>
> ## Acceptance Boundary
>
> Avoid making “receipt” the primitive.
>
> Use this lock instead:
>
> ```text
> Recognition is not acceptance.
> Citation is not acceptance.
> Omi-Ring formation is not acceptance.
> Projection is not acceptance.
> Validation determines.
> Omi-Attestation witnesses.
> Accepted Omi-State may be recorded.
> ```
>
> ## Implementation Independence
>
> Add a constitutional rule:
>
> ```text
> One grammar.
> Many projections.
> ```
>
> State that the same Omi-Notation may project into:
>
> ```text
> Markdown
> JSON Canvas
> OMI-Lisp
> Haskell
> ISA
> DOM
> SVG
> React
> GPIO
> LoRa
> eMMC
> Bitboards
> future carriers
> ```
>
> None of these implementations redefine the grammar.
>
> ## Assumptions
> - This pass modifies `/home/main/omi/omi-canon` only.
> - Do not modify `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid`.
> - The new file is definitive doctrine, not archive material.
> - `Omi-Node` is reserved for projection contexts such as JSON Canvas, graphs, AST, LSP, dependency graphs, and proof graphs; it is not core protocol identity.
</details>

> PLEASE IMPLEMENT THIS PLAN:
> # OMI Canon Symbolic Grammar Write-Up Plan
>
> ## Summary
> Add a definitive symbolic grammar doctrine to `/home/main/omi/omi-canon` before continuing `omi-canvas`. This write-up separates protocol grammar from named projection faces and replaces overloaded ordinary terms with constitutionally scoped `Omi-*` terms.
>
> The core doctrine:
>
> ```text
> The Omi-* prefix establishes symbolic protocol grammar.
> Implementations may project the grammar.
> Implementations do not redefine the grammar.
> ```
>
> ## File To Add
>
> Create:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md
> ```
>
> Reference:
>
> ```text
> /home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md
> /home/main/omi/omi-tetragrammatron/docs/Omi Surface Projection Faces.md
> /home/main/omi/omi-tetragrammatron/docs/Omi Glossary.md
> ```
>
> ## Core Structure
>
> Organize the document into distinct layers:
>
> ```text
> Grammar
>   Omi-Notation
>   Omi-Citation
>   Omi-Ring
>   Omi-Delta
>   Omi-Attestation
>   Omi-Attribution
>
> Lifecycle
>   Omi-State
>   Omi-Phase
>   Omi-Transform
>   Omi-Loop
>
> Observation
>   Omi-Psi
>
> Transport
>   Omi-Carrier
>
> Projection
>   named faces such as Omi-Form, Omi-Glyph, Omi-Matrix, Omi-Portal, Omi-World,
>   Omi-Node, Omi-Barcode, Omi-JabCode, and related projection/readable faces
> ```
>
> ## Canonical Pipeline
>
> Define the symbolic sequence as:
>
> ```text
> Declaration
> -> Omi-Notation
> -> Omi-Citation
> -> Omi-Ring
> -> Truth Gate
> -> Decision Table
> -> Karnaugh
> -> Combinator
> -> Omi-Delta
> -> Validation
> -> Omi-Attestation
> -> Omi-Attribution
> -> Omi-Projection
> ```
>
> State the responsibility lock:
>
> ```text
> Omi-Notation declares.
> Omi-Citation addresses.
> Omi-Ring witnesses fully addressed notation.
> Omi-Delta transforms.
> Validation determines.
> Omi-Attestation witnesses.
> Omi-Attribution contextualizes.
> Omi-Projection realizes.
> Omi-Psi observes.
> ```
>
> ## Term Definitions
>
> Define the protocol grammar terms:
>
> - `Omi-Notation`: symbolic representation of a relation; syntax only.
> - `Omi-Citation`: addressed notation; addressable but not validated.
> - `Omi-Ring`: fully addressed notation witness.
> - `Omi-Delta`: constitutional transformation primitive.
> - `Omi-Attestation`: witness of validation result.
> - `Omi-Attribution`: contextual binding after attestation.
> - `Omi-State`: deterministic condition of an OMI relation.
> - `Omi-Phase`: location in the constitutional pipeline.
> - `Omi-Transform`: invariant-preserving mapping between phases.
> - `Omi-Loop`: lawful recurrence over notation.
> - `Omi-Psi`: observation surface; view without authority change.
> - `Omi-Carrier`: transport envelope for an Omi-Ring.
> - `Omi-Projection`: realization on a carrier or surface; never authority.
>
> Define `Omi-Delta` as owning the operation doctrine:
>
> ```text
> XOR witnesses difference.
> Rotation preserves orbit.
> Unary composition constructs relation.
> Shift only stages the next frame.
> Validation determines state.
> ```
>
> ## Named Faces
>
> Add a separate named-faces section using the tetragrammatron docs.
>
> Calibration rule:
>
> ```text
> Omi-* name = development word / readable face
> Omi relation = protocol form
> Accepted Omi-State may be recorded
> ```
>
> Reduction rule:
>
> ```text
> (name . face)
> (face . role)
> (role . edge)
> (edge . attestation-path)
> ```
>
> Examples:
>
> ```text
> Omi-Form      -> (face . structural)
> Omi-Glyph     -> (face . symbolic)
> Omi-Matrix    -> (face . observation)
> Omi-Gnomon    -> (face . orientation)
> Omi-Mirror    -> (face . chirality)
> Omi-Portal    -> (face . access)
> Omi-World     -> (face . environment)
> Omi-Barcode   -> (face . carrier)
> Omi-JabCode   -> (carrier . barcode-polychrome)
> Omi-CAR       -> (payload . head)
> Omi-CDR       -> (payload . continuation)
> Omi-CID       -> (payload . agreement)
> Omi-Node      -> context-selected projection face, not protocol identity
> Omi-Frame     -> carrier frame projection, not authority
> ```
>
> ## Acceptance Boundary
>
> Avoid making “receipt” the primitive.
>
> Use this lock instead:
>
> ```text
> Recognition is not acceptance.
> Citation is not acceptance.
> Omi-Ring formation is not acceptance.
> Projection is not acceptance.
> Validation determines.
> Omi-Attestation witnesses.
> Accepted Omi-State may be recorded.
> ```
>
> ## Implementation Independence
>
> Add a constitutional rule:
>
> ```text
> One grammar.
> Many projections.
> ```
>
> State that the same Omi-Notation may project into:
>
> ```text
> Markdown
> JSON Canvas
> OMI-Lisp
> Haskell
> ISA
> DOM
> SVG
> React
> GPIO
> LoRa
> eMMC
> Bitboards
> future carriers
> ```
>
> None of these implementations redefine the grammar.
>
> ## Assumptions
> - This pass modifies `/home/main/omi/omi-canon` only.
> - Do not modify `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid`.
> - The new file is definitive doctrine, not archive material.
> - `Omi-Node` is reserved for projection contexts such as JSON Canvas, graphs, AST, LSP, dependency graphs, and proof graphs; it is not core protocol identity.

<details><summary>6 previous messages</summary>

> I’ll add the symbolic grammar doctrine in `omi-canon/dev-docs` only, using the referenced tetragrammatron docs as source material and leaving `omi-canvas` untouched.
>
> <details><summary>Explored a list, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> - Ran `test -e dev-docs/OMI-SYMBOLIC-GRAMMAR.md && sed -n '1,260p' dev-docs/OMI-SYMBOLIC-GRAMMAR.md || true`
>
> <details><summary>Explored a list</summary>
>
> - Listed files in `dev-docs`
>
> </details>
>
> </details>
>
> The target file does not exist yet and the canon worktree is clean. I’m creating the doctrine file now with the grammar/faces split and without making “receipt” the primitive.
>
> <details><summary>Created a file</summary>
>
> - Wrote `./omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md` (+563 -0)
>
> </details>
>
> The symbolic grammar doc is added. I’m reading it back and checking repo status to confirm this pass only added the intended canon file.
>
> <details><summary>Explored a file, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> <details><summary>Explored a file</summary>
>
> - Read `./dev-docs/OMI-SYMBOLIC-GRAMMAR.md`
>
> </details>
>
> - Ran `git diff --stat`
>
> </details>
</details>

Added the symbolic grammar doctrine at:

[OMI-SYMBOLIC-GRAMMAR.md](./omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md)

It separates:
- core protocol grammar
- lifecycle terms
- observation
- transport
- named projection faces

It includes `Omi-Ring`, `Omi-Carrier`, the `Omi-Delta` operation doctrine, the acceptance boundary without making “receipt” the primitive, and implementation independence.

I did not modify `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid`. Current `omi-canon` status shows only the new untracked symbolic grammar doc.

> User context
>
> Attachments:
> - OMI-SYMBOLIC-GRAMMAR.md: `./omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md`
> - OMI-RELATIONAL-ACCESS-ENVELOPE.md: `./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
> - I think these two documents represent a meaningful refinement of the architectu…: `~/.codex/attachments/b14460ed-6e4c-4a9e-8b61-ef03e6b444c4/pasted-text.txt`

<details><summary>4 previous messages</summary>

> I’ll read the attached request and the two canon docs it references, then produce a decision-complete plan for the next step. I won’t edit files while we’re in plan mode.
>
> <details><summary>Explored 3 files, ran a command</summary>
>
> <details><summary>Explored 3 files</summary>
>
> - Read `~/.codex/attachments/b14460ed-6e4c-4a9e-8b61-ef03e6b444c4/pasted-text.txt`
> - Read `./dev-docs/OMI-SYMBOLIC-GRAMMAR.md`
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> Plan
>
> # Canon Consistency Pass Before OMI Canvas Plan
>
> ## Summary
> First align the two canon dev-docs so they use one vocabulary: `Omi-Notation`, `Omi-Citation`, `Omi-Ring`, `Omi-State`, `Omi-Attestation`, `Omi-Attribution`, `Omi-Carrier`, `Omi-Projection`, and `Omi-Psi`.
>
> The main correction is to remove remaining “receipt accepts” language from the relational envelope doc and replace it with the newer symbolic grammar boundary:
>
> ```text
> Validation determines.
> Omi-Attestation witnesses.
> Accepted Omi-State may be recorded.
> ```
>
> ## Key Changes
>
> - Update `dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` to match `dev-docs/OMI-SYMBOLIC-GRAMMAR.md`.
> - Replace remaining “receipt” primitive wording:
>   - `Receipt accepts.`
>   - `receipt authority`
>   - `receipt creation`
>   - `receipt closure`
>   - `receipt or VCS reconciliation proof layer`
>   - `receipt, not carrier/projection/metadata`
> - Use the symbolic grammar terms instead:
>   - `Omi-Attestation witnesses`
>   - `Accepted Omi-State may be recorded`
>   - `attestation authority`
>   - `attestation creation`
>   - `Metatron rule-set / attestation framing`
>   - `attestation and VCS reconciliation proof layer`
>   - `accepted Omi-State, not carrier/projection/metadata`
>
> ## Relational Envelope Simplification
>
> Add a concise algebraic summary near the top of `OMI-RELATIONAL-ACCESS-ENVELOPE.md`:
>
> ```text
> |OMI---IMO>
> =
> Gauge
> +
> Place Value
> +
> Relation
> ```
>
> Where:
>
> ```text
> Gauge:
> F* 00 1C 1D 1E 1F 20 F*
>
> Place Value:
> o---o/---/?---?@---@
>
> Relation:
> S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> Keep the 512-bit envelope details, but make clear they are the carrier/access realization of this smaller algebraic core.
>
> ## Four-Layer Architecture
>
> Add a short section to `OMI-SYMBOLIC-GRAMMAR.md` naming the four orthogonal layers:
>
> ```text
> Identity:
>   Omi-Notation
>   Omi-Citation
>   Omi-Ring
>
> Transformation:
>   Truth Gate
>   Decision Table
>   Karnaugh
>   Combinator
>   Omi-Delta
>
> State:
>   Validation
>   Omi-Attestation
>   Omi-State
>   Omi-Attribution
>
> Projection:
>   Omi-Carrier
>   Omi-Projection
>   Omi-Psi
>   Named Faces
> ```
>
> Also add the implementation ingestion rule:
>
> ```text
> Every adapter should ingest Omi-Ring as protocol identity, then decode into its local representation.
> ```
>
> Targets later include:
>
> ```text
> Markdown
> Canvas
> OMI-Lisp
> Stream
> Snapshot
> Routing
> Scheduler
> Runtime
> ISA
> Hardware
> ```
>
> ## OMI Canvas Follow-Up Plan
>
> After the canon consistency pass, continue in `/home/main/omi/omi-canvas` with an additive `OMI.SymbolicGrammar` module.
>
> That later module should make these Haskell wrappers first-class:
>
> ```text
> OmiNotation
> OmiCitation
> OmiRing
> OmiDelta
> OmiAttestation
> OmiAttribution
> OmiState
> OmiPhase
> OmiTransform
> OmiLoop
> OmiPsi
> OmiCarrier
> OmiProjection
> ```
>
> Then refactor adapters so they ingest `OmiRing` as the protocol identity instead of raw messages, records, objects, or nodes.
>
> ## Verification
>
> - For the canon pass:
>   - inspect both dev-docs for consistent symbolic vocabulary
>   - confirm no remaining “receipt accepts” primitive wording
>   - confirm `receipt` appears only as historical/legacy vocabulary if at all
> - Do not modify `constitutional-grid` yet.
> - Do not modify `omi-canvas` until the canon wording is aligned.
>
> ## Assumptions
> - Immediate work is `/home/main/omi/omi-canon` only.
> - `omi-canvas`, `omi-isa`, `omi-axioms`, and `constitutional-grid` remain untouched in this pass.
> - The later `omi-canvas` implementation should follow the finalized canon vocabulary rather than inventing parallel names.
>
> Plan implementation
>
> Status: completed
> # Canon Consistency Pass Before OMI Canvas Plan
>
> ## Summary
> First align the two canon dev-docs so they use one vocabulary: `Omi-Notation`, `Omi-Citation`, `Omi-Ring`, `Omi-State`, `Omi-Attestation`, `Omi-Attribution`, `Omi-Carrier`, `Omi-Projection`, and `Omi-Psi`.
>
> The main correction is to remove remaining “receipt accepts” language from the relational envelope doc and replace it with the newer symbolic grammar boundary:
>
> ```text
> Validation determines.
> Omi-Attestation witnesses.
> Accepted Omi-State may be recorded.
> ```
>
> ## Key Changes
>
> - Update `dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` to match `dev-docs/OMI-SYMBOLIC-GRAMMAR.md`.
> - Replace remaining “receipt” primitive wording:
>   - `Receipt accepts.`
>   - `receipt authority`
>   - `receipt creation`
>   - `receipt closure`
>   - `receipt or VCS reconciliation proof layer`
>   - `receipt, not carrier/projection/metadata`
> - Use the symbolic grammar terms instead:
>   - `Omi-Attestation witnesses`
>   - `Accepted Omi-State may be recorded`
>   - `attestation authority`
>   - `attestation creation`
>   - `Metatron rule-set / attestation framing`
>   - `attestation and VCS reconciliation proof layer`
>   - `accepted Omi-State, not carrier/projection/metadata`
>
> ## Relational Envelope Simplification
>
> Add a concise algebraic summary near the top of `OMI-RELATIONAL-ACCESS-ENVELOPE.md`:
>
> ```text
> |OMI---IMO>
> =
> Gauge
> +
> Place Value
> +
> Relation
> ```
>
> Where:
>
> ```text
> Gauge:
> F* 00 1C 1D 1E 1F 20 F*
>
> Place Value:
> o---o/---/?---?@---@
>
> Relation:
> S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> Keep the 512-bit envelope details, but make clear they are the carrier/access realization of this smaller algebraic core.
>
> ## Four-Layer Architecture
>
> Add a short section to `OMI-SYMBOLIC-GRAMMAR.md` naming the four orthogonal layers:
>
> ```text
> Identity:
>   Omi-Notation
>   Omi-Citation
>   Omi-Ring
>
> Transformation:
>   Truth Gate
>   Decision Table
>   Karnaugh
>   Combinator
>   Omi-Delta
>
> State:
>   Validation
>   Omi-Attestation
>   Omi-State
>   Omi-Attribution
>
> Projection:
>   Omi-Carrier
>   Omi-Projection
>   Omi-Psi
>   Named Faces
> ```
>
> Also add the implementation ingestion rule:
>
> ```text
> Every adapter should ingest Omi-Ring as protocol identity, then decode into its local representation.
> ```
>
> Targets later include:
>
> ```text
> Markdown
> Canvas
> OMI-Lisp
> Stream
> Snapshot
> Routing
> Scheduler
> Runtime
> ISA
> Hardware
> ```
>
> ## OMI Canvas Follow-Up Plan
>
> After the canon consistency pass, continue in `/home/main/omi/omi-canvas` with an additive `OMI.SymbolicGrammar` module.
>
> That later module should make these Haskell wrappers first-class:
>
> ```text
> OmiNotation
> OmiCitation
> OmiRing
> OmiDelta
> OmiAttestation
> OmiAttribution
> OmiState
> OmiPhase
> OmiTransform
> OmiLoop
> OmiPsi
> OmiCarrier
> OmiProjection
> ```
>
> Then refactor adapters so they ingest `OmiRing` as the protocol identity instead of raw messages, records, objects, or nodes.
>
> ## Verification
>
> - For the canon pass:
>   - inspect both dev-docs for consistent symbolic vocabulary
>   - confirm no remaining “receipt accepts” primitive wording
>   - confirm `receipt` appears only as historical/legacy vocabulary if at all
> - Do not modify `constitutional-grid` yet.
> - Do not modify `omi-canvas` until the canon wording is aligned.
>
> ## Assumptions
> - Immediate work is `/home/main/omi/omi-canon` only.
> - `omi-canvas`, `omi-isa`, `omi-axioms`, and `constitutional-grid` remain untouched in this pass.
> - The later `omi-canvas` implementation should follow the finalized canon vocabulary rather than inventing parallel names.
</details>

> PLEASE IMPLEMENT THIS PLAN:
> # Canon Consistency Pass Before OMI Canvas Plan
>
> ## Summary
> First align the two canon dev-docs so they use one vocabulary: `Omi-Notation`, `Omi-Citation`, `Omi-Ring`, `Omi-State`, `Omi-Attestation`, `Omi-Attribution`, `Omi-Carrier`, `Omi-Projection`, and `Omi-Psi`.
>
> The main correction is to remove remaining “receipt accepts” language from the relational envelope doc and replace it with the newer symbolic grammar boundary:
>
> ```text
> Validation determines.
> Omi-Attestation witnesses.
> Accepted Omi-State may be recorded.
> ```
>
> ## Key Changes
>
> - Update `dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` to match `dev-docs/OMI-SYMBOLIC-GRAMMAR.md`.
> - Replace remaining “receipt” primitive wording:
>   - `Receipt accepts.`
>   - `receipt authority`
>   - `receipt creation`
>   - `receipt closure`
>   - `receipt or VCS reconciliation proof layer`
>   - `receipt, not carrier/projection/metadata`
> - Use the symbolic grammar terms instead:
>   - `Omi-Attestation witnesses`
>   - `Accepted Omi-State may be recorded`
>   - `attestation authority`
>   - `attestation creation`
>   - `Metatron rule-set / attestation framing`
>   - `attestation and VCS reconciliation proof layer`
>   - `accepted Omi-State, not carrier/projection/metadata`
>
> ## Relational Envelope Simplification
>
> Add a concise algebraic summary near the top of `OMI-RELATIONAL-ACCESS-ENVELOPE.md`:
>
> ```text
> |OMI---IMO>
> =
> Gauge
> +
> Place Value
> +
> Relation
> ```
>
> Where:
>
> ```text
> Gauge:
> F* 00 1C 1D 1E 1F 20 F*
>
> Place Value:
> o---o/---/?---?@---@
>
> Relation:
> S0..S7?PAYLOAD?MASK@CAR@CDR
> ```
>
> Keep the 512-bit envelope details, but make clear they are the carrier/access realization of this smaller algebraic core.
>
> ## Four-Layer Architecture
>
> Add a short section to `OMI-SYMBOLIC-GRAMMAR.md` naming the four orthogonal layers:
>
> ```text
> Identity:
>   Omi-Notation
>   Omi-Citation
>   Omi-Ring
>
> Transformation:
>   Truth Gate
>   Decision Table
>   Karnaugh
>   Combinator
>   Omi-Delta
>
> State:
>   Validation
>   Omi-Attestation
>   Omi-State
>   Omi-Attribution
>
> Projection:
>   Omi-Carrier
>   Omi-Projection
>   Omi-Psi
>   Named Faces
> ```
>
> Also add the implementation ingestion rule:
>
> ```text
> Every adapter should ingest Omi-Ring as protocol identity, then decode into its local representation.
> ```
>
> Targets later include:
>
> ```text
> Markdown
> Canvas
> OMI-Lisp
> Stream
> Snapshot
> Routing
> Scheduler
> Runtime
> ISA
> Hardware
> ```
>
> ## OMI Canvas Follow-Up Plan
>
> After the canon consistency pass, continue in `/home/main/omi/omi-canvas` with an additive `OMI.SymbolicGrammar` module.
>
> That later module should make these Haskell wrappers first-class:
>
> ```text
> OmiNotation
> OmiCitation
> OmiRing
> OmiDelta
> OmiAttestation
> OmiAttribution
> OmiState
> OmiPhase
> OmiTransform
> OmiLoop
> OmiPsi
> OmiCarrier
> OmiProjection
> ```
>
> Then refactor adapters so they ingest `OmiRing` as the protocol identity instead of raw messages, records, objects, or nodes.
>
> ## Verification
>
> - For the canon pass:
>   - inspect both dev-docs for consistent symbolic vocabulary
>   - confirm no remaining “receipt accepts” primitive wording
>   - confirm `receipt` appears only as historical/legacy vocabulary if at all
> - Do not modify `constitutional-grid` yet.
> - Do not modify `omi-canvas` until the canon wording is aligned.
>
> ## Assumptions
> - Immediate work is `/home/main/omi/omi-canon` only.
> - `omi-canvas`, `omi-isa`, `omi-axioms`, and `constitutional-grid` remain untouched in this pass.
> - The later `omi-canvas` implementation should follow the finalized canon vocabulary rather than inventing parallel names.

<details><summary>8 previous messages</summary>

> I’ll make this canon-only consistency pass, touching the two dev-docs and leaving `omi-canvas` and the constitutional grid alone. I’m checking the exact remaining receipt wording first so the replacements are targeted.
>
> <details><summary>Explored 2 files, a search, ran a command</summary>
>
> <details><summary>Explored a search</summary>
>
> - Searched for `receipt|Receipt|Omi-Ring|Omi-Attestation|Omi-State|Omi-Carrier|Omi-Projection|Omi-Psi` in `OMI-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> - Ran `git status --short`
>
> <details><summary>Explored 2 files</summary>
>
> - Read `./dev-docs/OMI-SYMBOLIC-GRAMMAR.md`
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> </details>
>
> There’s one unrelated untracked `tree.txt` already present in `omi-canon`; I’ll ignore it and only edit the two dev-docs. I’m applying targeted wording updates and adding the four-layer section plus Omi-Ring ingestion rule.
>
> <details><summary>Edited 2 files</summary>
>
> - Wrote `./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` (+55 -13)
> - Wrote `./omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md` (+48 -0)
>
> </details>
>
> The consistency edits are in. I’m verifying the specific vocabulary changes now, especially that the old “receipt accepts” primitive is gone.
>
> <details><summary>Explored 2 files, a search, ran a command</summary>
>
> <details><summary>Explored 2 files, a search</summary>
>
> - Searched for `Receipt accepts|receipt accepts|receipt authority|receipt creation|receipt closure|receipt or VCS|Receipt, not|receipt, not|receipt` in `OMI-RELATIONAL-ACCESS-ENVELOPE.md`
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
> - Read `./dev-docs/OMI-SYMBOLIC-GRAMMAR.md`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> The old primitive wording is gone; the only remaining “receipt” occurrence is in the symbolic grammar’s explanation of overloaded ordinary words, which is allowed. I’m doing one more pass around the replaced lower sections.
>
> <details><summary>Explored a file, ran a command</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `./dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> - Ran `git diff -- dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md dev-docs/OMI-SYMBOLIC-GRAMMAR.md | sed -n '1,260p'`
>
> </details>
</details>

Implemented the canon consistency pass.

Updated:
- [OMI-RELATIONAL-ACCESS-ENVELOPE.md](./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md)
- [OMI-SYMBOLIC-GRAMMAR.md](./omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md)

Changes made:
- Replaced remaining “Receipt accepts” primitive wording with:
  - `Validation determines.`
  - `Omi-Attestation witnesses.`
  - `Accepted Omi-State may be recorded.`
- Added the algebraic envelope summary:
  - `|OMI---IMO> = Gauge + Place Value + Relation`
- Added the four orthogonal layers to symbolic grammar:
  - Identity
  - Transformation
  - State
  - Projection
- Added the rule that adapters ingest `Omi-Ring` as protocol identity before decoding locally.
- Updated proof/shift audit wording from receipt authority/creation to attestation authority/creation.

Verification: `rg` shows no remaining “receipt accepts” or receipt-as-primitive wording in the two dev-docs. The only remaining `receipt` mention is in the symbolic grammar introduction as an example of overloaded ordinary vocabulary.

I did not modify `omi-canvas`, `omi-isa`, `omi-axioms`, or `constitutional-grid`.

> Yes. Promote both to root now.
>
> Recommended root placement:
>
> 09-OMI-LISP.md
> 10-BLACKBOARD.md
> 11-SYMBOLIC-GRAMMAR.md      ← promote
> 12-RELATIONAL-ACCESS.md    ← promote
> 13-PROJECTION-FACES.md
> 14-GAUGE-INTERRUPTS.md
> ...
>
> Or, if you do not want to renumber everything:
>
> 21-SYMBOLIC-GRAMMAR.md
> 22-RELATIONAL-ACCESS-ENVELOPE.md
>
> I prefer renumbering them into the spine, because they are not dev-docs anymore. They define protocol identity: the symbolic grammar document fixes the Omi-* namespace, Omi-Ring, Omi-Delta, Omi-Carrier, and acceptance boundary; the envelope document fixes |OMI---IMO>, gauge preheader, place-value frame, 512-bit envelope, and unary/XOR/shift doctrine.
>
> Best order:
>
> 08-PROTOCOL.md
> 09-OMI-LISP.md
> 10-BLACKBOARD.md
> 11-SYMBOLIC-GRAMMAR.md
> 12-RELATIONAL-ACCESS-ENVELOPE.md
> 13-PROJECTION-FACES.md
> 14-GAUGE-INTERRUPTS.md
>
> Then move current 11–20 down by +2.
>
> Codex task:
>
> Promote dev-docs/OMI-SYMBOLIC-GRAMMAR.md and dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md into the root canon spine.
>
> Place them after BLACKBOARD and before PROJECTION-FACES.
>
> Renumber affected root files, update README spine table, update cross-references, and leave dev-docs copies either removed or replaced with short forwarding stubs.
>
> Lock:
>
> Symbolic Grammar defines names.
> Relational Access defines identity.
> Projection Faces defines readable surfaces.
> Yes thats perfect then the omi- term now a delineation operator between canonical and categorical grammar when trying to build this.  other than that we interact within the codebase in omi-lisp direct code dot-notation declarations and of markdown text. because the only other thing s declarations for this system to be able to meta-compile the computational cosmology for us
>
> Yes — that is the cleanest grammar lock.
>
> Omi-
>
> is now the delineation operator.
>
> It marks when ordinary language crosses into canonical protocol grammar.
>
> So:
>
> node
> frame
> object
> record
> state
> message
>
> remain ordinary/categorical implementation words.
>
> But:
>
> Omi-Node
> Omi-Frame
> Omi-Ring
> Omi-State
> Omi-Citation
> Omi-Delta
>
> are canonical grammar words.
>
> The working rule becomes:
>
> Use Markdown for explanation.
> Use OMI-Lisp dot notation for declarations.
> Use Omi-* words only when crossing into canonical protocol grammar.
>
> And the construction loop is:
>
> Markdown text
>   ↓
> OMI-Lisp declarations
>   ↓
> Omi-* symbolic grammar
>   ↓
> truth gates / decision tables
>   ↓
> meta-compiler
>   ↓
> computational cosmology
>
> Best canon sentence:
>
> The `Omi-` prefix is the boundary marker between categorical description and canonical protocol grammar; outside that boundary we explain in Markdown, and inside it we declare relations in OMI-Lisp dot notation.

<details><summary>41 previous messages</summary>

> I’ll promote both docs into the root spine and renumber the affected canon files. I’ll first inspect the current root references so the rename updates don’t leave broken links.
>
> <details><summary>Explored a file, a search, a list, ran a command</summary>
>
> <details><summary>Explored a file, a search, a list</summary>
>
> - Listed files in `*.md`
> - Read `./README.md`
> - Searched for `11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|SYMBOLIC|RELATIONAL|dev-docs/OMI` in `.`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> Context compaction
>
> Source: automatic
> Status: completed
>
> I’m continuing the canon promotion pass now: first I’ll rename the root spine without touching `omi-canvas`, then I’ll update the README and root cross-references so the numbering is coherent.
>
> <details><summary>Ran a command</summary>
>
> - Ran `pwd && ls -1 *.md && ls -1 dev-docs | rg 'OMI-(SYMBOLIC-GRAMMAR|RELATIONAL-ACCESS-ENVELOPE)' && git status --short`
>
> </details>
>
> There are already unnumbered root copies of the two promoted docs in addition to the dev-doc copies. I’m checking their status/content before renumbering so I don’t overwrite a newer version accidentally.
>
> <details><summary>Explored a search, ran 2 commands</summary>
>
> - Ran `git status --short`
>
> - Ran `cmp -s OMI-SYMBOLIC-GRAMMAR.md dev-docs/OMI-SYMBOLIC-GRAMMAR.md; echo symbolic:$?; cmp -s OMI-RELATIONAL-ACCESS-ENVELOPE.md dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md; echo relational:$?`
>
> <details><summary>Explored a search</summary>
>
> - Searched for `OMI-SYMBOLIC-GRAMMAR.md` in `.`
>
> </details>
>
> </details>
>
> The promoted material only exists in `dev-docs`; the root spine has not been moved yet. I’m doing the numbering move now, preserving the dev-doc source long enough to create forwarding stubs afterward.
>
> <details><summary>Ran a command</summary>
>
> - Ran `mv 20-GLOSSARY.md 22-GLOSSARY.md
> mv 19-CONSTITUTION.md 21-CONSTITUTION.md
> mv 18-VERSION-CONTROL.md 20-VERSION-CONTROL.md
> mv 17-BUFFER-FRAMING.md 19-BUFFER-FRAMING.md
> mv 16-DISTRIBUTED-OPEN-WORLD.md 18-DISTRIBUTED-OPEN-WORLD.md
> mv 15-IMO-PORTS.md 17-IMO-PORTS.md
> mv 14-WAVE-SURFACE-INTERPRETER.md 16-WAVE-SURFACE-INTERPRETER.md
> mv 13-SURFACE-APPLICATIONS.md 15-SURFACE-APPLICATIONS.md
> mv 12-GAUGE-INTERRUPTS.md 14-GAUGE-INTERRUPTS.md
> mv 11-PROJECTION-FACES.md 13-PROJECTION-FACES.md
> cp dev-docs/OMI-SYMBOLIC-GRAMMAR.md 11-SYMBOLIC-GRAMMAR.md
> cp dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md 12-RELATIONAL-ACCESS-ENVELOPE.md
> ls -1 [0-9][0-9]-*.md`
>
> </details>
>
> The root spine now has the intended `11` and `12` slots. Next I’m turning the old dev-doc copies into forwarding stubs, then I’ll update references that still point at the old numbering.
>
> <details><summary>Created 2 files</summary>
>
> - Wrote `./omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md` (+7 -0)
> - Wrote `./omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md` (+7 -0)
>
> </details>
>
> I’m scanning the root docs for old filenames and sequence references now. I’ll keep the updates scoped to the canon root/docs and avoid the constitutional grid unless it turns out to be unavoidable.
>
> <details><summary>Explored 2 files, a search</summary>
>
> - Searched for `11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|OMI-SYMBOLIC-GRAMMAR|OMI-RELATIONAL-ACCESS-ENVELOPE|Continue to|00-COSMOLOGY.md through|Movement IV|Movement V|Movement VI` in `README.md`
> - Read `./README.md`
> - Read `./21-CONSTITUTION.md`
>
> </details>
>
> The affected references are mostly in `README.md`, `21-CONSTITUTION.md`, and “Continue to” links in the shifted files. I’m patching those now, plus the root symbolic grammar reference to point at the promoted relational access doc.
>
> <details><summary>Edited 5 files</summary>
>
> - Wrote `./omi-canon/02-DOCTRINE.md` (+1 -1)
> - Wrote `./omi-canon/11-SYMBOLIC-GRAMMAR.md` (+1 -1)
> - Wrote `./omi-canon/13-PROJECTION-FACES.md` (+1 -1)
> - Wrote `./omi-canon/18-DISTRIBUTED-OPEN-WORLD.md` (+1 -1)
> - Wrote `./omi-canon/README.md` (+49 -39)
>
> </details>
>
> The README is updated to make Symbolic Grammar and Relational Access first-class spine states. I’m updating the Constitution’s repository map and file-role table next so it matches the new root numbering.
>
> <details><summary>Explored 2 files</summary>
>
> - Read `./21-CONSTITUTION.md`
> - Read `./21-CONSTITUTION.md`
>
> </details>
>
> The Constitution still has the old 11-20 map. I’m applying the same spine promotion there, without editing the constitutional-grid subdirectory.
>
> <details><summary>Edited a file</summary>
>
> - Wrote `./omi-canon/21-CONSTITUTION.md` (+24 -20)
>
> </details>
>
> The main root docs are patched. I’m running a reference audit now to catch stale old-number links and make sure the dev-doc paths are only forwarding stubs.
>
> <details><summary>Explored 2 searches, ran a command</summary>
>
> - Ran ``rg -n "11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|dev-docs/OMI-SYMBOLIC-GRAMMAR|dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE|00-COSMOLOGY.md through `20|States 09–13|States 14–17|States 18–20" README.md [0-9][0-9]-*.md dev-docs``
>
> <details><summary>Explored 2 searches</summary>
>
> - Searched for `Continue to` in `[0-9][0-9]-*.md`
> - Searched for `Receipt accepts|receipt authority|receipt creation|receipt closure|receipt, not carrier|receipt or VCS|receipt accepts` in `11-SYMBOLIC-GRAMMAR.md`
>
> </details>
>
> </details>
>
> The filename audit command had a quoting issue, but the other checks found three remaining `Receipt accepts.` lines outside the two promoted docs. Since this promotion is also locking the acceptance boundary, I’m inspecting those before changing them.
>
> <details><summary>Explored 5 files, a search</summary>
>
> - Searched for `11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|dev-docs/OMI-SYMBOLIC-GRAMMAR|dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE|States 09.13|States 14.17|States 18.20|00-COSMOLOGY.md through` in `README.md`
> - Read `./01-ONTOLOGY.md`
> - Read `./18-DISTRIBUTED-OPEN-WORLD.md`
> - Read `./13-PROJECTION-FACES.md`
> - Read `./11-SYMBOLIC-GRAMMAR.md`
> - Read `./12-RELATIONAL-ACCESS-ENVELOPE.md`
>
> </details>
>
> There’s one stale state-range sentence and three old acceptance-boundary lines. I’m updating those to the new `Validation/Omi-Attestation/Omi-State` wording so the root canon doesn’t keep the old receipt primitive around.
>
> <details><summary>Edited 4 files, explored 4 files</summary>
>
> <details><summary>Explored 4 files</summary>
>
> - Read `./05-PURE-ALGORITHMS.md`
> - Read `./01-ONTOLOGY.md`
> - Read `./13-PROJECTION-FACES.md`
> - Read `./18-DISTRIBUTED-OPEN-WORLD.md`
>
> </details>
>
> - Wrote `./omi-canon/01-ONTOLOGY.md` (+6 -2)
> - Wrote `./omi-canon/05-PURE-ALGORITHMS.md` (+1 -1)
> - Wrote `./omi-canon/13-PROJECTION-FACES.md` (+2 -1)
> - Wrote `./omi-canon/18-DISTRIBUTED-OPEN-WORLD.md` (+3 -1)
>
> </details>
>
> The acceptance boundary is now consistent in the affected root docs. I’m doing one more audit for stale old-number links, promoted dev-doc references, and “receipt accepts” language.
>
> <details><summary>Explored 2 searches, ran a command</summary>
>
> <details><summary>Explored 2 searches</summary>
>
> - Searched for `11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|dev-docs/OMI-SYMBOLIC-GRAMMAR|dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE|States 09.13|States 14.17|States 18.20|00-COSMOLOGY.md through` in `README.md`
> - Searched for `Receipt accepts|Receipts accept|receipt authority|receipt creation|receipt closure|receipt, not carrier|receipt or VCS|receipt accepts` in `README.md`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> The old filenames are cleared. The remaining issue is four “Receipts accept” sentences in root docs; I’m converting those to the newer attestation-state boundary so the root spine has one doctrine.
>
> <details><summary>Edited 3 files, explored 3 files</summary>
>
> <details><summary>Explored 4 files</summary>
>
> - Read `./18-DISTRIBUTED-OPEN-WORLD.md`
> - Read `./19-BUFFER-FRAMING.md`
> - Read `./20-VERSION-CONTROL.md`
> - Read `./20-VERSION-CONTROL.md`
>
> </details>
>
> - Wrote `./omi-canon/18-DISTRIBUTED-OPEN-WORLD.md` (+3 -1)
> - Wrote `./omi-canon/19-BUFFER-FRAMING.md` (+1 -1)
> - Wrote `./omi-canon/20-VERSION-CONTROL.md` (+2 -2)
>
> </details>
>
> The root docs no longer use “receipts accept” as the acceptance primitive. I’m doing the final consistency pass now: root file list, stale links, and git status.
>
> <details><summary>Explored 2 searches, a list, ran a command</summary>
>
> <details><summary>Explored 2 searches, a list</summary>
>
> - Listed files in `[0-9][0-9]-*.md`
> - Searched for `11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|dev-docs/OMI-SYMBOLIC-GRAMMAR|dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE|States 09.13|States 14.17|States 18.20|00-COSMOLOGY.md through` in `README.md`
> - Searched for `Receipt accepts|Receipts accept|receipt authority|receipt creation|receipt closure|receipt, not carrier|receipt or VCS|receipt accepts` in `README.md`
>
> </details>
>
> - Ran `git status --short`
>
> </details>
>
> The audits are clean: no stale old-number filename references and no remaining “receipt accepts” primitive wording in the root/doc set I checked. I’m checking the promoted Symbolic Grammar text once more for the `Omi-` delineation sentence the user wanted.
>
> <details><summary>Explored a search</summary>
>
> - Searched for `delineation|categorical|Markdown|OMI-Lisp|dot notation|Omi- prefix|boundary marker` in `11-SYMBOLIC-GRAMMAR.md`
>
> </details>
>
> The README has the boundary language, but the promoted Symbolic Grammar doc itself should carry the canonical sentence directly. I’m adding that sentence near the grammar calibration section.
>
> <details><summary>Edited a file, explored a file</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `./11-SYMBOLIC-GRAMMAR.md`
>
> </details>
>
> - Wrote `./omi-canon/11-SYMBOLIC-GRAMMAR.md` (+4 -0)
>
> </details>
>
> The symbolic grammar doc now carries the `Omi-` delineation rule directly. I’m doing the final status and diff summary, including a check that `constitutional-grid` was left alone.
>
> <details><summary>Explored a search, ran 3 commands</summary>
>
> - Ran `git diff --stat`
>
> <details><summary>Explored a search</summary>
>
> - Searched for `11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|Receipt accepts|Receipts accept|receipt accepts` in `README.md`
>
> </details>
>
> - Ran `git diff --name-only | rg '^constitutional-grid/' || true`
>
> - Ran `git status --short constitutional-grid omi-canvas omi-isa omi-axioms 2>/dev/null || true; git status --short`
>
> </details>
>
> One small wording issue remains from promotion: the new root docs still say “Definitive dev doctrine.” Since they are now spine docs, I’m changing that status line to “Definitive canon doctrine.”
>
> <details><summary>Edited 2 files</summary>
>
> - Wrote `./omi-canon/11-SYMBOLIC-GRAMMAR.md` (+1 -1)
> - Wrote `./omi-canon/12-RELATIONAL-ACCESS-ENVELOPE.md` (+1 -1)
>
> </details>
>
> I’m running the final doc checks one last time after the status wording change.
>
> <details><summary>Explored a search, ran 2 commands</summary>
>
> <details><summary>Explored a search</summary>
>
> - Searched for `Definitive dev doctrine|11-PROJECTION|12-GAUGE|13-SURFACE|14-WAVE|15-IMO|16-DISTRIBUTED|17-BUFFER|18-VERSION|19-CONSTITUTION|20-GLOSSARY|Receipt accepts|Receipts accept|receipt accepts` in `README.md`
>
> </details>
>
> - Ran `git status --short`
>
> - Ran `git diff --name-only | rg '^constitutional-grid/' || true`
>
> </details>
</details>

Implemented the canon spine promotion in `/home/main/omi/omi-canon`.

Changed:
- Promoted:
  - [11-SYMBOLIC-GRAMMAR.md](./omi-canon/11-SYMBOLIC-GRAMMAR.md)
  - [12-RELATIONAL-ACCESS-ENVELOPE.md](./omi-canon/12-RELATIONAL-ACCESS-ENVELOPE.md)
- Renumbered old `11–20` root docs to `13–22`.
- Updated [README.md](./omi-canon/README.md) spine, movements, graph, and reader paths.
- Updated [21-CONSTITUTION.md](./omi-canon/21-CONSTITUTION.md) repository map and state table.
- Replaced old dev-doc copies with forwarding stubs.
- Added the `Omi-` delineation sentence to Symbolic Grammar.
- Removed remaining “Receipt accepts” primitive wording from root docs and replaced it with:
  - `Validation determines.`
  - `Omi-Attestation witnesses.`
  - `Accepted Omi-State may be recorded.`

Verification:
- No stale old-number references found.
- No remaining `Receipt accepts` / `Receipts accept` primitive wording found.
- No `constitutional-grid` files modified.
- No `omi-canvas`, `omi-isa`, or `omi-axioms` changes made in this pass.

Note: git currently shows the renumbering as deletes plus new untracked files until staged.

> are upgradng root and updatng can you remove these /home/main/omi/omi-canon/dev-docs/OMI-RELATIONAL-ACCESS-ENVELOPE.md . /home/main/omi/omi-canon/dev-docs/OMI-SYMBOLIC-GRAMMAR.md to /home/main/omi/omi-canon/_archive

<details><summary>1 previous message</summary>

> System error
>
> You've hit your usage limit. Upgrade to Pro (https://chatgpt.com/explore/pro), visit https://chatgpt.com/codex/settings/usage to purchase more credits or try again at 2:11 PM.
</details>

<details><summary>1 previous message</summary>

> Context compaction
>
> Source: manual
> Status: completed
</details>
