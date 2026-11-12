# AGENTS.md

Yair Mau's personal academic website, served at <https://yairmau.com>. It is a
Quarto website built with the Flatly theme plus custom SCSS.

## Build and deploy

- `quarto render` builds the whole site into `docs/`. GitHub Pages serves
  `docs/` from `main`, so **pushing to `main` publishes the site**. Ask before
  pushing.
- Commit the rebuilt `docs/` together with the source changes that produced it.
  `docs/CNAME` and `docs/.nojekyll` must stay in place.
- Quarto renders every `.md`, `.qmd` and `.ipynb` file into a public page.
  The `render:` list in `_quarto.yml` keeps `AGENTS.md` and `CLAUDE.md` off the
  site. Add any new notes-only Markdown file there too, or prefix its name with
  `_`.
- Don't run `quarto render` while the owner has `quarto preview` running
  (`ps -axo command | grep 'quarto preview'`). Both write to `docs/`. Either
  ask, or build in a copy of the repo and sync its `docs/` back.
- During a render, Quarto writes temporary files at the repo root (`*.html`,
  `site_libs/`, `*.html.md`) and then moves them into `docs/`. An interrupted
  render leaves them behind. Delete those strays, and never commit
  root-level `site_libs/` or generated `.html` files.
- Builds print `Error adding css vars block SCSSParsingError` and write
  `_quarto_internal_scss_error.scss`. The error is harmless and predates the
  current theme. The file is gitignored.
- The installed Quarto version can differ from the one that last built `docs/`
  (see `<meta name="generator">` in any page). That only changes generated
  boilerplate, but expect noise in `docs/` diffs.

## Code execution and freeze

- `papers.qmd` and `more/quotes.qmd` run Python that reads `papers.yaml` and
  `more/quotes.yaml`. Both use `freeze: auto`, and their cached output lives in
  `_freeze/`. Commit `_freeze/` changes.
- If a frozen page shows stale content after an edit, delete its folder in
  `_freeze/` and render again.
- `index.qmd` and the other pages have no code cells. Don't add a
  `jupyter:` key unless a page really runs code.

## Look and feel

- Colours are Sass variables in `custom-light.scss` (the "Midnight" palette).
  Change colours there, never as hard-coded colours in rules:

  | Variable | Value | Used for |
  |---|---|---|
  | `$primary`, `$navbar-bg` | `#0d1f2d` | navbar, buttons |
  | `$link-color` | `#0071eb` | links (4.6:1 on white, 3.2:1 against text) |
  | `$body-color` | `#1e2a33` | text |
  | `$code-block-bg` | `#f0f5f9` | code blocks |

- `custom.scss` holds the rules: Ubuntu / Ubuntu Mono fonts, thin underlines on
  links in running text, the navbar width, and the Group page layout.
- The same palette is copied into the sister sites listed below. If you change
  it here, tell the owner, because the other repos need the same change.
- Keep the site plain: no hover-zoom effects, and no Bootstrap `alert-*`
  boxes for decoration. `alert-success` and `btn-success` render green, which
  is off-palette.
- **Logo and favicons** live in `archive/logo/`. They are copies of files
  exported by the logo system notebook in the `python` repo
  (`jupyter/new_logo.ipynb`, which writes to `jupyter/logo/`). Never edit them
  by hand: change the notebook, re-export, and copy them here again.
  - The navbar shows the white φ mark (`phi-mark-white.svg`) at 32 px tall,
    set in `custom.scss`.
  - `favicon:` in `_quarto.yml` points to `favicon.svg`, which turns white in
    dark mode. `includes.html` adds the `.ico` fallback and the phone
    home-screen icon, and `resources:` in `_quarto.yml` makes sure both are
    copied into `docs/`.
  - The old logo files in `archive/site_images/` are no longer used.

## Content conventions

- **Line breaks:** a line ending in two spaces is a hard line break. Several
  pages depend on this, including quote attributions and the years on the
  Group page. Some editors and tools strip trailing whitespace, so check
  `grep -c '  $' file` before and after editing.
- **Closing quote:** most pages end with a quotation in this form:

  ```markdown
  > Quote text.  
  > **— Author**
  ```

- **Group page (`group.qmd`):** each current member is a `.person` block, with
  text first and the photo second. Former members are `.former` blocks inside
  `.former-grid`, newest first, with a bold `**YYYY--YYYY**, role` line. Photos
  go in `archive/images/group/`, must be square (at least 300 px), and display
  as rounded squares. Copy an existing block when adding someone.
- **Papers:**
  - Add an entry to `papers.yaml`. The key is the handle, and the fields are
    `title`, `handle`, `authors`, `journal`, `year`, `doi`, `pdf`, optional `md`,
    and `bib`.
  - Then add a `print_paper(yaml_data['<handle>'][0])` line under the right
    year in `papers.qmd`. Papers don't appear automatically.
  - PDFs go in `archive/papers/`.
  - The Markdown button is commented out in `papers.qmd` on purpose.
- **Paper Markdown versions:**
  - `archive/papers-md/<handle>/` holds a Markdown version of each paper,
    mainly for LLMs. Quarto currently renders them as site pages, which makes
    up much of the build time.
  - Whether to keep rendering them as pages, publish raw `.md` instead, or drop
    them is undecided. Ask before restructuring them.
  - `_notes/` holds the porting log and the PDF-cropping helper. Quarto
    ignores it.
- **`llms.txt`:** not published yet. It isn't copied into `docs/`, and its links
  point to folders that 404.

## Sister sites

These are separate repos served under `yairmau.com/<name>`:

- **Quarto books:** `python`, `physics1`, `statistics`, `time-series`,
  `mishmash`, `surface-hydrology`. Each has a "← Back to yairmau.com" link at
  the top of the sidebar.
- **Quarto websites:** `blog`, `talks-posters`. Each has the "← Back to
  yairmau.com" link on the right of the navbar.

All of them use the Midnight palette in their own SCSS files. Links from this
site to them, such as `/python`, can't be checked inside this repo.
