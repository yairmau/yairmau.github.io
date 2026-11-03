# Papers-to-Markdown Porting Log

Started 2026-11-03. Autonomous run — Yair is away. This file collects
questions, blockers, and decisions made along the way instead of
interrupting. Read this when you're back.

## Policy decisions made while you were away (flag if you disagree)

- Committing locally after each paper (or small batch) so nothing is lost;
  pushing to origin periodically at natural checkpoints, not after every
  single paper.
- Process: for each paper, use the local PDF already in archive/papers/,
  extract with pymupdf4llm, clean up by hand into the established template
  (header, linked citations, inline supplementary info), crop figures
  directly from PDF coordinates (not pymupdf4llm's auto-crop, which proved
  unreliable — see feuer2026losses S10/S11 incident).
- If a PDF has no usable text layer (old scanned paper) or the extraction
  quality is too poor to trust, I'll log it below and move to the next
  paper rather than guess.

## Open questions / requests for you

(will be filled in as they come up)

## Progress

| Paper | Status | Notes |
|---|---|---|
| feuer2026losses | done (prior session) | pilot paper, template established |

## Triage notes (2026-11-03)

- **mau2009mscthesis**: `papers.yaml` points to `archive/papers/msc_thesis_yair11.pdf`,
  but that file does not exist anywhere in the repo (not a git issue — it's just
  never been added). The "PDF" button on the Papers page for this entry is
  already broken, independent of anything I'm doing. **Need the actual MSc
  thesis PDF from you to port it; skipping for now.**
- **mau2013phdthesis** (112 pages): full chapter-by-chapter porting in the same
  exhaustive per-paper format isn't practical or useful (it's a thesis, not a
  paper — mostly restates published chapters). My call: give it a lighter
  page — title, abstract, table of contents, and a link to the full PDF —
  rather than transcribing all 112 pages. Say if you want it done in full
  instead.
- Noticed `archive/papers/kramer-2024-Climate Change Shifts Risk of Soil
  Salinity and Land Degradation in Water-Scarce Regions.pdf` (42pp) is an
  orphaned file not referenced by any `papers.yaml` entry — the real
  `kramer2024climate` entry correctly points to the 10pp
  `kramer-2025-Climate change shifts...pdf` (presumably the typeset journal
  version vs. an old manuscript draft). Leaving the orphan alone, not deleting.
- All other PDFs have a working embedded text layer (checked via pdftotext),
  including the old 2009-2016 Physical Review papers. Some of those have
  known OCR/encoding artifacts from old PDF fonts (e.g. "(R)" renders as a
  garbled CJK-looking glyph) — I'll clean those by hand per paper.
- Page counts range 4-50 for actual papers (112 for the PhD thesis, see above).
  Processing roughly shortest-to-longest.

**Update**: Yair says he has the LaTeX source for both theses and will handle
those himself. Skipping mau2013phdthesis and mau2009mscthesis entirely —
not doing even the lighter treatment. 24 actual papers left to process.
| mau2009dual | done | 4pp PRL-style, direct-read + text-coordinate figure cropping (new reusable helper: _notes/crop_figures.py) |
| mau2012spatial | done | 5pp PRL, same direct-read + coordinate-crop method |
| mantova2024monitoring | done | 5pp New Phytologist forum report, single-column, pymupdf4llm extraction worked cleanly, author-year citation anchors |
| kramer2022effects | done | 7pp npj Clean Water, single-column, pymupdf4llm extraction very clean (minimal manual cleanup), numbered citation ranges expanded to individual links |
| adeyemo2022salinity | done | 8pp Geoderma, single-column, pymupdf4llm clean, author-year citations, table rendered, supplementary hosted externally (not available to inline) |
| haim2014spatial | done | 8pp PRE, heavy multi-scale perturbation theory, direct PDF read + coordinate figure cropping |
| goldberg2024effect | done | 10pp Catena, single-column, pymupdf4llm clean, ~59 author-year refs |
| mau2014multiplicative | done | 8pp PRE, stochastic jump-process theory, direct read + coordinate crop |
| mau2015reversing | done | 8pp PRE, FSH+vegetation model, 7 figures cropped via full-page PIL screenshot method (faster than PDF-coordinate hunting for vector-heavy multi-panel figures) |
| mau2013competing | done | 9pp PRE, long appendix with multi-scale perturbation derivation, 3 figures via PIL screenshot crop |
| rez2026stem | done | 12pp Agric. Forest Meteorol., single-column, pymupdf4llm clean (all 5 figures usable straight from auto-extraction, no manual cropping needed), ~66 author-year refs, 3 tables, Supplementary Information PDF not available locally (only main article PDF on file) — noted inline on the page with a callout linking to the publisher's SI instead of fabricating content; methods subsections reordered (2.2/2.3/2.4 were interleaved out of logical order in the source PDF due to two-column text-extraction order, corrected to 2.1→2.7) |
| missik2025using | done | 21pp JGR Biogeosciences, single-column, pymupdf4llm clean, all 7 figures usable straight from auto-extraction, 12 numbered equations (hydrodynamic model formulation), 78 author-year refs (several same-first-author-same-year Matheny/Xu/Scyphers/Missik entries disambiguated by co-author), Supporting Information S1 not available locally — noted inline with a callout |
