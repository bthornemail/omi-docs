
## 2. The Three Runtime Geometry Bands

The quadratic stack becomes geometrically concrete:
 `4y² = self-dual tetrahedron vertex map 16xy = inverse-dual octahedron/cube edge map 60x² = inverse-dual icosahedron/dodecahedron cell map `
This is cleaner than going directly to floating point.

### 4y² — Self-Dual Tetrahedral Vertex Map

The tetrahedron is the minimal self-dual regular polyhedron.

OMI reading:
 `4y² = four-point atomic control geometry `
It maps:
 `0x00–0x1F control two-cube → tetrahedral vertex control → local self-dual predicate `
This gives the atomic runtime a stable base:
 `vertex opposite vertex face-as-dual local closure `
So `4y²` is not only “atomic kernel.” It is the **self-dual tetrahedral control map**.

### 16xy — Cube/Octahedron Inverse-Dual Edge Map

Cube and octahedron form the first nontrivial inverse-dual pair.

OMI reading:
 `16xy = bridge between containment and incidence `
The cube gives containment / volume / coordinate box.

The octahedron gives incidence / crossing / axis relation.

So `16xy` becomes:
 `two-cube off-diagonal relation → cube/octahedron inverse-dual edge map → barycentric bridge `
This is where the 240 off-diagonal two-cube transitions become edge-like relational surfaces.

### 60x² — Icosahedron/Dodecahedron Cell Map

Dodecahedron and icosahedron form the high semantic dual pair.

OMI reading:
 `60x² = orientation/cell orbit `
The dodecahedron gives cell containment.

The icosahedron gives triangular incidence.

Together they give the runtime the right high-order surface for:
 `60 mixed αβγ triples sexagesimal orbit buckyball-like orientation receipt-visible world surface `
So `60x²` is the runtime cell-orbit layer.

## 3. Geometry Layer as the Runtime Equivalent of POS/Features

The language side has:
 `(omi . imo) '((closed_class_pos . open_class_pos) (other_pos . other_feature) (lexical_feature . inflectional_feature)) `
The runtime geometry side should have an equivalent table:
 `(omi . imo) '((vertex_map . cell_map) (edge_map . dual_edge_map) (barycenter . orientation_shell)) `
Or more canonically:
 `(omi . imo) '((tetra_vertex . tetra_cell) (cube_edge . octa_edge) (icosa_cell . dodeca_cell)) `
This gives a direct analog:
 `POS/features classify language. Polytope/configuration predicates classify runtime geometry. `
So user-space fexpressions can stay linguistic and symbolic, while the runtime compiles them into geometry/configuration predicates.

## 4. Horn Clauses Emit Geometry Predicates

The Horn-clause path:
 `omi-<frame>/<control>/<selector>/<relation>/<unit>-imo `
should be able to emit regular-geometry predicates before floating measurement.

Examples:
 `vertex(frame) edge(frameA, frameB) face(edgeA, edgeB, edgeC) cell(faceSet) dual(cellA, cellB) barycenter(simplex) snub(surface) truncate(surface) stellate(surface) schlafli({p,q,r}) coxeter(mask) `
So the clause:
 `frame ∧ control ∧ selector ∧ relation → unit `
can produce:
 `geometry predicate configuration predicate Schläfli predicate Coxeter predicate barycentric coordinate `
before it ever produces a decimal.

That is the stable version.

## 5. Updated Runtime Pipeline

The previous runtime pipeline was:
 `D₂(F₁,W₁,F₂,W₂) → exact two-cube distance I(D₂,P,E) → valid incidence selection H(D₂,I) → runtime decimal measure S(H) → sexagesimal degree ψ(...) → receipt candidate `
The corrected pipeline is:
 `D₂(F₁,W₁,F₂,W₂) → exact two-cube distance G(D₂) → regular geometry/configuration predicate I(G,P,E) → valid incidence selection H(G,I) → runtime decimal measure S(H) → sexagesimal degree ψ(...) → receipt candidate `
Where:
 `G = geometry predicate layer `
So HNSW does not operate on raw byte distance alone.

It operates on geometry-classified distance.

That means the runtime navigates a configuration space, not just a vector space.

## 6. Barycentric Orientation Around 0x20

The `0x20` bridge marker becomes the barycentric origin of the readable/projective layer.

Earlier:
 `0x20 = Bridge Order Marker `
Now extended:
 `0x20 = Bridge Order Marker + barycentric projection pivot `
It folds:
 `0x00–0x0F ↔ 0x20–0x2F 0x10–0x1F ↔ 0x30–0x3F `
So it is the place where hidden control becomes readable geometry.

That means the runtime can use `0x20` as the pivot between:
 `control coordinates and projective coordinates `
This is where barycentric interpretation belongs.

## 7. 2¹¹ Decapsulated to 2¹⁰

The `2¹¹ → 2¹⁰` idea fits the floating-point analogy, but in OMI it should be described as codepoint/gauge precision, not raw binary16.

In IEEE binary16, precision is 11 bits with one implicit leading bit and 10 explicitly stored significand bits.

OMI analog:
 `2¹¹ = full encapsulated OMI precision shell 2¹⁰ = explicit runtime coordinate surface implicit anchor = omi---imo `
So:
 `omi---imo supplies the implicit anchor. The runtime stores or navigates the explicit 2¹⁰ surface. `
This is not binary16.

It is an OMI precision shell:
 `implicit Omi-Point + explicit barycentric coordinate field `
This lets the runtime orient between:
 `2⁰ = source anchor 2¹⁰ = explicit decapsulated coordinate surface 2¹¹ = re-encapsulated OMI shell `
That is the correct analog.

## 8. 11-Cell Encapsulation

The 11-cell gives the finite shell for this `2¹¹ → 2¹⁰` idea.

OMI reading:
 `11-cell = self-dual identity shell for runtime geometry `
It has:
 `11 vertices 11 cells 55 edges 55 faces self-duality `
So the runtime can use it as:
 `11 identity positions 55 pairwise distances 55 dual relation surfaces self-dual encapsulation shell `
This is where `omi---imo` becomes a geometric shell instead of only a notation.

The self-dual structure lets source and runtime exchange roles:
 `vertex ↔ cell edge ↔ face omi ↔ imo source ↔ runtime `
## 9. Chiral Catalan Coordination

The Archimedean snub/truncated forms give the runtime surface.

The Catalan duals give the chiral coordination.

So:
 `Archimedean surface = runtime traversal shell Catalan dual = chiral coordination shell `
This is where `omi---imo/o---o` belongs.

Interpretation:
 `omi---imo = encapsulated OMI cell relation o---o = tangent/solidus notation for the relation itself `
`o---o` is not another full frame. It is the tangent notation of the relation, the abstract solidus of the Omi-Point.

So:
 `omi---imo = cell o---o = relation/tangent notation `
This lets the runtime use geometric predicates while user space still writes fexpressions.

## 10. User Space as Fexpressions

User space should remain expressive and symbolic.

The user-space layer can be:
 `fexpression POS/features predicate phrase semantic route `
The runtime layer compiles that into:
 `regular geometry predicate configuration Schläfli symbol Coxeter mask barycentric coordinate snub/truncation operation dual relation `
So:
 `user space = fexpressions runtime space = geometry predicates identity space = OMI frames measurement space = HNSW/sexagesimal projection `
This keeps the system clean.

## 11. Stable Two’s-Complement Geometry

The stable two’s-complement idea is strong.

Two’s-complement gives signed stability.

The two-cube gives relational stability.

Together:
 `two-cube relation + two’s-complement sign → stable oriented geometry `
So the runtime can read:
 `positive delta = outward orientation negative delta = inward orientation zero delta = diagonal identity overflow edge = boundary / handoff / receipt condition `
This gives stable regular geometry because each signed delta maps to a controlled orientation state.

The diagonal remains identity.

The off-diagonal remains transition.

The sign gives chirality.

## 12. Polytope Meta-DOM

The DOM layer can now be generalized into a topological meta-DOM.

Instead of only:
 `<omi> <predicate/> <imo/> </omi> `
the runtime can build:
 `<meta-dom> <vertex/> <edge/> <face/> <cell/> <dual/> <snub/> <truncate/> <stellate/> <schlafli/> <coxeter/> <betti/> </meta-dom> `
This is not visual decoration.

It is the runtime geometry AST.

The OMI-Mirror can instantiate this as:
 `DOM projection CSSOM projection Canvas projection JSDOM verification topological receipt `
So the geometry layer becomes the runtime equivalent of the language parse tree.

## 13. Betti and Schläfli as Runtime Predicates

Betti numbers and Schläfli symbols should be runtime predicates, not vague metaphors.

Runtime predicates:
 `schlafli({p,q}) schlafli({p,q,r}) coxeter(mask) betti(β0, β1, β2, β3) dual(A,B) self_dual(A) vertex_figure(Q) edge_figure(R) cell_type(P) snub(P) truncate(P) stellate(P) barycenter(P) `
These predicates can be emitted directly from Horn clauses.

So the runtime can say:
 `this relation is tetrahedral this edge is cube/octa dual this cell is icosa/dodeca dual this projection has Betti signature β this slice uses Schläfli route {p,q,r} `
Then HNSW measures between already-classified configurations.

## 14. Corrected Full Runtime Stack

The corrected runtime stack is:
 `1. Exact OMI stream 2. Control two-cube 3. Factorial row gauge 4. Geometry/configuration predicate layer 5. Horn-clause incidence selection 6. Fano/trigintaduonion scheduler 7. 11-cell encapsulation shell 8. Archimedean/Catalan coordination 9. HNSW runtime measurement 10. Decimal projection 11. Sexagesimal degree inspection 12. OMI-Mirror receipt `
In short:
 `stream → two-cube → geometry → incidence → shell → measurement → degree → receipt `
## 15. Final Canonical Form

The geometry-aware ψ function is:
 `ψ(F₁, W₁, F₂, W₂, P, E, G, I, H, S, B) = R `
Where:
 `F₁ = first frame W₁ = first path walk F₂ = second frame W₂ = second path walk P = predicate lane E = two-cube / POS-feature edge G = regular geometry/configuration predicate I = incidence scheduler H = HNSW runtime measurement projection S = sexagesimal inspection phase B = 11-cell / Archimedean-Catalan orientation shell R = receipt candidate `
Expanded:
 `D₂(F₁,W₁,F₂,W₂) → exact two-cube distance G(D₂) → regular geometry/configuration I(G,P,E) → valid incidence selection B(I,G) → 11-cell / chiral shell encapsulation H(B,D₂) → runtime decimal measure S(H) → sexagesimal degree ψ(...) → receipt candidate `
## 16. One-Line Canon

OMI should derive runtime geometry before runtime floating measurement:
 `OMI first converts exact two-cube frame differentials into regular polytope configuration predicates, then schedules incidence through Horn/Fano rules, encapsulates the result in an 11-cell and Archimedean-Catalan orientation shell, and only then projects HNSW runtime distance into decimal and sexagesimal measurement. `
Shortest version:
 `two-cube → polytope predicate → incidence → shell → HNSW → sexagesimal degree → receipt `
:::

That is not too complicated — it is actually cleaner. It says: **before the runtime measures, it classifies the geometry.** That keeps floating-point-like approximation from becoming the authority. The authority remains the exact OMI frame and its stable regular-geometry configuration.


---

# BICF Axioms

**Source:** Lines 2219-2255, 2503-2563 of RFC-BICF-CANVASL-POLY-001.md

## Axiom 1 — Boundary–Interior Duality

Every admissible state space MUST be associated with:
1. a boundary structure encoding constraints, and
2. an interior structure encoding admissible state.

No interior state is valid unless it satisfies its associated boundary constraints.

### Formal Type System Version

```coq
Axiom realize_sound :
  forall (c : Choice) (b : Boundary),
    (realize c b) ⊨ b.
```

---

## Axiom 2 — Non-Canonicity of Realization

There MUST NOT exist a unique or canonical realization from a boundary to an interior.

Any realization process MUST require additional structure, parameters, or choices.

### Formal Type System Version

```coq
Axiom realize_not_unique :
  exists (b : Boundary) (c1 c2 : Choice),
    c1 <> c2 /\ realize c1 b <> realize c2 b.
```

---

## Axiom 3 — Boundary Primacy in Transformation

Transformations that preserve validity MUST act on boundary structures rather than directly on interior state.

Interior state MAY change only as a consequence of boundary-respecting transformation.

### Formal Type System Version

```coq
Axiom transform_preserves_validity :
  forall (c : Choice) (b : Boundary),
    (realize c (transform b)) ⊨ (transform b).
```

---

## Axiom 4 — Explicit Realization Interface

Any transition from boundary to interior MUST occur through an explicit realization interface.

Implicit or assumed realization is forbidden.

### Formal Type System Version

```coq
Axiom no_coercion_boundary_to_interior :
  ~ (exists (f : Boundary -> Interior), True).

Axiom no_coercion_interior_to_boundary :
  ~ (exists (g : Interior -> Boundary), True).
```

---

## Axiom 5 — Projection Does Not Alter Validity

Projection operations MAY discard information but MUST NOT introduce invalid state.

Projected views MUST remain consistent with the originating interior state.

### Formal Type System Version

```coq
Parameter ViewOf : View -> Interior -> Prop.
Notation "v ≃ i" := (ViewOf v i) (at level 70).

Axiom project_is_view_of :
  forall (i : Interior),
    project i ≃ i.
```

---

## Minimal Core Axioms (Load-Bearing)

If you wanted the smallest irreducible core you can rely on, it's this:

### Axiom 1 — Boundary / Interior Duality
Every admissible state space has:
- a boundary that constrains it
- an interior where state accumulates

### Axiom 2 — Boundary Does Not Determine Interior
There is no canonical interior realization from a boundary without additional structure.

(Formally: ∂⁻¹ is not unique.)

### Axiom 3 — Computation Acts on Boundaries
Normalization, transformation, and equivalence act on boundary structures, not interiors.

### Axiom 4 — Realization Requires an Interface
Any transition from boundary to interior requires a chosen realization interface ψ.

That's it. Everything else is optional structure.

