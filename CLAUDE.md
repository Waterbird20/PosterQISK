# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a LaTeX academic poster template — a fork of [Gemini](https://github.com/anishathalye/gemini) styled for UChicago Computer Science. The poster is compiled with LuaLaTeX (required for fontspec/custom fonts).

## Build Commands

```bash
make          # Build poster.pdf using latexmk + lualatex
make clean    # Remove all latexmk build artifacts
```

The Makefile uses `texfot` to filter lualatex output and `latexmk` to manage incremental compilation.

## Architecture

The poster is composed of three files:

- **`poster.tex`** — The main file to edit. Contains title, authors, institute, footer, logo placement, and all poster content organized in a `columns`/`column` layout inside a single `frame`.
- **`beamerthemegemini.sty`** — Layout and typography theme (Raleway + Lato fonts via fontspec). Defines the headline, block, alertblock, exampleblock, and footline templates.
- **`beamercolorthemeuchicago.sty`** — UChicago color palette (maroon/darkgray/lightgray primaries). Copy and rename this to create a custom color theme.

Logo assets are in `logos/` (both `.eps` and `.png` variants for maroon/white versions of the UC shield and CS wordmark).

## Column Layout

In `poster.tex`, columns are managed manually. For N content columns:

```
(N+1)*\sepwidth + N*\colwidth = \paperwidth
```

Separator columns (`\separatorcolumn`) provide spacing. The current layout uses 3 content columns at `0.3\paperwidth` each with `0.025\paperwidth` separators.

## Block Types

- `\begin{block}{Title}` — Standard white block
- `\begin{alertblock}{Title}` — Light gray highlighted block
- `\begin{exampleblock}{Title}` — Example/alternate highlighted block
- `\heading{text}` — Bold subheading within a block

## Overleaf Compatibility

The template is also published on Overleaf. The `\usepackage[patch=none]{microtype}` option is required for Overleaf compatibility (avoids a patching issue with LuaLaTeX on Overleaf).
