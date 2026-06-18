@echo off
chcp 65001 >nul
cd /d "%~dp0"

set "PY_HOME=C:\Users\nunch\AppData\Local\Programs\Python\Python312"
set "PYTHON_EXE=%PY_HOME%\python.exe"

if not exist "%PYTHON_EXE%" (
    echo [LOI] Khong tim thay python.exe tai: %PYTHON_EXE%
    echo Hay kiem tra lai duong dan Python 3.12 trong file run.bat
    pause
    exit /b 1
)

echo Dang khoi dong Athena Assistant...
echo Dung cua so nay se dong tien trinh app.
echo.
"%PYTHON_EXE%" main.py
pause
