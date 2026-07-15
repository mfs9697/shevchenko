# Formula decisions and source corrections

This file records editorial decisions made while reconstructing equations from the rendered proceedings PDF. Author confirmation is unavailable, so corrections are based on the printed context, definitions, and algebraic consistency. Source departures are documented rather than hidden.

## V. Yu. Marina, “A Hybrid Approach to Calibrating a Multiscale Constitutive Model”

Source pages: 9–14 of the MPTM 2026 Book of Abstracts, Part 2.

1. **Equation (6): `C_k` corrected to `C_{44,k}`.** The PDF prints the undefined symbol `C_k` in two denominators. Equation (5) and the accompanying definitions use `C_{44,k}`. More decisively, substituting `C_{44}` and `b=B/(2C_{44})` into the corrected Eq. (6) reproduces the printed single-phase result in Eq. (16). Both denominators are therefore set to `2C_{44,k}+A_kB` and `2C_{44,k}+B`.

2. **Equation (9): notation retained and clarified.** The rendered equation consistently shows uppercase `\Psi'` as the normalizing measure and upper integration limit, lowercase `\psi` as the integration coordinate, and a time derivative on the subelement irreversible-strain tensor. The formula is retained. The text now identifies `\psi` as the subelement-weight coordinate and `\Psi'` as the total weight of the averaging set, which is consistent with the later weight function `\psi(\xi')` and averaging notation `\langle\cdot\rangle_\psi`.

3. **Equation (23): `F(b)` corrected to `F(A)`.** The PDF prints `F(b)` in the first expression, although it defines only `F(A)` and uses `F(A)` throughout Eq. (24). The correction also follows by substituting `m=b/[b+F(A)]` and `a=\chi/(1-\chi)` into Eq. (20). All three occurrences are therefore written as `F(A)`.

4. **Equation (28): missing number restored; added derivative removed.** The PDF prose explicitly refers to Eq. (28), but the displayed relation `d\phi=e_p\,dp` is unnumbered. It has been numbered as Eq. (28). The pilot had added `e_p=de/dp`; this was removed because Eq. (26) implies that the full derivative of `e` also contains the linear term `a+a_0`. The text now states the mathematically consistent interpretation `e_p=d\phi/dp` along the current approximation.

5. **General reconstruction policy.** Faint overbars, dots, averaging marks, and indices were resolved using definitions and subsequent equations. Where a source correction was made, it is recorded here and, when helpful, noted in a LaTeX source comment.
