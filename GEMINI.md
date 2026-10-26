# Google Antigravity SEO

Comprehensive SEO analysis plugin and toolkit for Google Antigravity.
Created by [@Arafath](https://github.com/smartworldarafath).

## Architecture

Antigravity SEO is structured as a native Google Antigravity plugin with:
- 26 sub-skills (22 core + 1 orchestrator + 1 framework integration + 2 extension mirrors) in `skills/`
- 19 sub-agents in `agents/`
- 60 Python execution scripts in `scripts/`
- Plugin definitions in `plugin.json` and `.claude-plugin/plugin.json`
- Test suite with >1000 automated regression tests in `tests/`

## Runtime Launcher

Run bundled Python tools using:
- Linux / macOS: `"./scripts/antigravity-seo" run <script.py>`
- Windows (PowerShell / Command Prompt): `.\scripts\antigravity-seo.cmd run <script.py>`
- Cross-platform Python: `python scripts/runtime.py run <script.py>`

## Guidelines

- All SEO recommendations are evidence-led, following Google Search Central and Webmaster guidelines.
- Python scripts use strict URL safety, SSRF validation, and input sanitization.
- No secrets or API credentials are ever logged or checked in.
- All tests in `tests/` must remain passing.
