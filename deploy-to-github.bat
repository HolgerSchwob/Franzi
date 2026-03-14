@echo off
chcp 65001 >nul
set "DIR=%~dp0"
cd /d "%DIR%"

where git >nul 2>&1
if errorlevel 1 (
  echo Git ist nicht im PATH. Bitte installiere Git: https://git-scm.com/download/win
  echo Danach Terminal neu öffnen und dieses Skript erneut starten.
  pause
  exit /b 1
)

if not exist ".git" (
  git init
  git branch -M main
  echo Repo initialisiert.
)

git add index.html README.md GITHUB_ANLEITUNG.md deploy-to-github.bat
if exist "spacemathe_v3.html" git add spacemathe_v3.html
git status

set /p DOCOMMIT="Commit erstellen? (j/n): "
if /i not "%DOCOMMIT%"=="j" exit /b 0

git commit -m "SpaceMathe: langsamer, mehr Effekte, Combo-Popups, Motivationstexte"
if errorlevel 1 (
  echo Nichts zu committen oder Fehler.
  pause
  exit /b 1
)

echo.
echo === Nächste Schritte ===
echo 1. Auf https://github.com/new ein neues Repo anlegen (z.B. "spacemathe", Public).
echo 2. Keine README/Lizenz anlegen.
echo 3. Dann in diesem Ordner ausführen:
echo    git remote add origin https://github.com/DEIN-USERNAME/spacemathe.git
echo    git push -u origin main
echo 4. DEIN-USERNAME durch deinen GitHub-Benutzernamen ersetzen.
echo 5. Beim ersten Push: Anmeldung im Browser oder Token eingeben.
echo.
set /p REMOTE="Repo-URL schon bekannt? Einfach einfügen und Enter (oder Enter zum Überspringen): "
if not "%REMOTE%"=="" (
  git remote remove origin 2>nul
  git remote add origin "%REMOTE%"
  echo Remote gesetzt. Starte Push...
  git push -u origin main
  echo.
  echo Wenn GitHub Pages gewünscht: Repo ^> Settings ^> Pages ^> Source: main, / (root) ^> Save
)
pause
