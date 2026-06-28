# XMUM FYP LaTeX Workspace

This workspace follows the local FYP guideline and Word templates found in
`description/`.

## Structure

- `thesis.tex`: main assembly file.
- `metadata.tex`: thesis title, student details, supervisor, programme, and date.
- `xmum-fyp.cls`: formatting rules for page layout, headings, numbering, cover,
  title page, lists, captions, and front matter.
- `frontmatter/`: declaration, approval, copyright, acknowledgements, abstract,
  and symbols/abbreviations.
- `chapters/`: one `.tex` file per chapter.
- `appendices/`: appendix files.
- `references.bib`: BibLaTeX bibliography database.

## Build

On Windows, use the batch build script:

```powershell
.\build.bat
```

The PDF will be written to `build/thesis.pdf`.

If your PowerShell execution policy allows scripts, the PowerShell version is
also available:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\build.ps1
```

If Perl is installed, you can also use XeLaTeX through latexmk:

```powershell
latexmk -xelatex thesis.tex
```

If you need to clean generated files with latexmk:

```powershell
latexmk -C thesis.tex
```

## Format Notes

- Page size: A4.
- Margins: left 4.0 cm; top, right, and bottom 2.5 cm.
- Main font: Times New Roman 12 pt, with TeX Gyre Termes fallback.
- Front cover font: Arial Narrow-style 18 pt bold uppercase. This workspace uses
  Arial with narrow stretching because the local Windows installation does not
  include Arial Narrow.
- Line spacing: 1.5 lines for main text.
- Page numbers: centered at the bottom.
- Preliminary pages: lowercase roman numerals; the title page is counted as
  roman i but the number is hidden.
- Main text: Arabic numerals restart at 1; chapter opening pages are counted
  but their page numbers are hidden.
- Tables and figures are numbered by chapter.
- References use `biblatex` with APA style, single-spaced entries, double space
  between entries, alphabetical sorting, and 0.5 inch hanging indentation.

The PDF guideline says the abstract should be no more than 500 words, while the
2026 Word template contains a shorter note. Confirm the final abstract limit
with your School/Faculty before submission.
