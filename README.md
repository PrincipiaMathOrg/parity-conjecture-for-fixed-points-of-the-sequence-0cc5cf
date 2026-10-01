# Parity conjecture for fixed points of the sequences A(p)

Lean 4 formalization of the Principia project [Parity conjecture for fixed points of the sequences A(p)](https://principia-staging.anton-8d8.workers.dev/projects/0cc5cf82e6784589bd27717599c10cc0), in the Palomar layout.

Let A(p) be the sequence constructed from an odd prime p, and call an integer n a fixed point when a(n)=n. **Parity conjecture.** The fixed points of sequences A(p), for p an odd prime, are odd. This observation appeared in all cases computed in the paper. The statement is also suggested for A(1), but the conjecture here concerns the sequences A(p) with p an odd prime.

## Layout

- `Challenge.lean` states the advertised results with `sorry`; it may import only Lean core, Mathlib, Tau Ceti or CSLib.
- `Solution.lean` proves the same declarations by importing the development in `ParityConjectureForFixed/`.
- `comparator.json` lists the declarations Comparator checks between the two.
- `formalization.yaml` records the public description, provenance, authorship, automation and review status. Replace every `TEMPLATE` value.

## Checks

```text
lake exe cache get
lake build
ruby scripts/validate-formalization.rb
./scripts/verify-comparator.sh
```

## Submission

The project owner submits the pinned commit to Palomar from the project page on Principia, which uses https://submit.palomar-registry.org/ on their behalf. Only a responsible author or maintainer, or someone with their approval, may submit.

Repository: https://github.com/PrincipiaMathOrg/parity-conjecture-for-fixed-points-of-the-sequence-0cc5cf
