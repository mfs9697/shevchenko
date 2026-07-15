# Shevchenko — MPTM 2026 proceedings in LaTeX

This repository is the working source for converting the conference book **Mathematical Problems of Technical Mechanics — 2026, Part 2** into a clean, editable LaTeX edition.

## Editorial goals

- reconstruct all formulas as native LaTeX;
- preserve figures and tables at the best available quality;
- correct grammar and scientific English/Ukrainian;
- standardize titles, author names, affiliations, references, DOIs, notation, and typography;
- flag uncertain formulas or scientific corrections for author/editor confirmation;
- keep every substantive editorial intervention reviewable through Git history and pull requests.

## Proposed structure

```text
book/
  main.tex                 # complete proceedings volume
  frontmatter/             # cover, committees, preface, contents
  reports/                 # one numbered .tex file per report
  bibliography/            # shared bibliography and reference data
  figures/                 # report-specific figure directories
  styles/                  # class/style and shared macros
source/
  original/                # original source material, when licensing permits
  page-images/             # selected reference images for difficult formulas
notes/
  editorial-log.md         # global decisions and house style
  formula-queries.md       # unresolved mathematical ambiguities
pilot/
  marina/                  # formula-heavy pilot conversion
.github/workflows/
  build.yml                # automatic LuaLaTeX build and PDF artifact
```

## Working method

1. Convert one report at a time on a dedicated branch.
2. Compare text, equations, figures, equation numbering, and references against the source PDF.
3. Record every uncertain symbol or substantive correction in an editorial note.
4. Compile the report and the full book automatically.
5. Review the changes in a draft pull request before merging into `main`.

## Editorial principle

Language, typography, and obvious formatting defects may be corrected directly. Changes that may alter a scientific claim, mathematical definition, formula, numerical value, or authorial attribution must be flagged rather than silently rewritten.

## Initial pilot

The first pilot is V. Yu. Marina, **“A Hybrid Approach to Calibrating a Multiscale Constitutive Model”** (source pages 9–14). It is the most formula-intensive contribution and is therefore a useful test of the conversion workflow.
