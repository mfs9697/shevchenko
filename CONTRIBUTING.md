# Editorial workflow

Each report should be added in a dedicated branch and reviewed through a pull request.

## Preferred commit sequence

1. **Faithful conversion:** reproduce the source text, equations, tables, figures, and references without substantive language rewriting.
2. **Editorial revision:** improve grammar, terminology, typography, and coherence while preserving scientific meaning.
3. **Verification:** compare the compiled report with the source PDF and resolve or record every uncertain formula.

## File layout

- `book/reports/` — one LaTeX file per report.
- `book/figures/<report-id>/` — figures belonging to that report.
- `notes/formula-queries.md` — unresolved mathematical or source ambiguities.
- `book/styles/` — shared formatting only; report-specific fixes should not be placed here.

## Source policy

Do not silently repair scientific notation. Add a comment such as

```latex
% TODO[formula]: verify whether C_k should be C_{44,k}
```

and record the issue in `notes/formula-queries.md`.

The original PDF and Word files should not be committed unless their public distribution is authorized.
