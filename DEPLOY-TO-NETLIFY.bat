@echo off
REM === QUICK DEPLOY TO NETLIFY ===
REM Uruchom ten plik z folderu PUNCHLINE-SKLEP

echo.
echo ========================================
echo   PUNCHLINE LANDING → NETLIFY DEPLOY
echo ========================================
echo.

REM Sprawdź czy Netlify CLI zainstalowane
where netlify >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Netlify CLI nie znalezione!
    echo.
    echo Zainstaluj najpierw:
    echo   npm install -g netlify-cli
    echo.
    pause
    exit /b 1
)

REM Sprawdź czy jesteśmy w odpowiednim folderze
if not exist "index.html" (
    echo [ERROR] Nie znaleziono index.html!
    echo.
    echo Uruchom ten skrypt z folderu PUNCHLINE-SKLEP
    echo.
    pause
    exit /b 1
)

echo [1/3] Sprawdzam pliki...
if not exist "assets\logo.png" (
    echo [WARNING] Brak assets\logo.png
)
if not exist "assets\loop.mp4" (
    echo [WARNING] Brak assets\loop.mp4
)

echo.
echo [2/3] Logowanie do Netlify...
netlify login

echo.
echo [3/3] Deploy do produkcji...
echo.
netlify deploy --prod --dir=.

echo.
echo ========================================
echo   DEPLOY ZAKOŃCZONY!
echo ========================================
echo.
echo Twój landing page jest teraz LIVE!
echo.
pause
