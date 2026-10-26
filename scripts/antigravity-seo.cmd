@echo off
setlocal
set "SCRIPT_DIR=%~dp0"
set "RUNTIME=%SCRIPT_DIR%runtime.py"

if defined ANTIGRAVITY_SEO_PYTHON (
    "%ANTIGRAVITY_SEO_PYTHON%" "%RUNTIME%" %*
    exit /b %ERRORLEVEL%
)

if defined CLAUDE_SEO_PYTHON (
    "%CLAUDE_SEO_PYTHON%" "%RUNTIME%" %*
    exit /b %ERRORLEVEL%
)

where py.exe >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    py -3 "%RUNTIME%" %*
    exit /b %ERRORLEVEL%
)

where python.exe >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    python "%RUNTIME%" %*
    exit /b %ERRORLEVEL%
)

echo Antigravity SEO needs Python 3.11 to 3.14. Please install Python or set ANTIGRAVITY_SEO_PYTHON. >&2
exit /b 2
