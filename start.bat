@echo off
cd /d "%~dp0"
echo Starting local server for Rulefruit...
where npx >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:3000
  npx --yes serve -l 3000 .
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000
  python -m http.server 8000
  goto :eof
)
echo.
echo Node.js (npx) or Python not found.
echo Please install Node.js from https://nodejs.org/ or Python from https://www.python.org/
echo Then run this script again.
pause
