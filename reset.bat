@echo off

echo:
echo 1. Cleaning Current Directory...
:: Delete all files except reset.bat
for %%f in (*.*) do (
    if /I not "%%f"=="reset.bat" del /q "%%f"
)

:: Delete ALL folders
for /f "delims=" %%d in ('dir /b /a:d') do (
    rd /s /q "%%d"
)

echo:
echo 2. Cloning Repository...
git clone https://github.com/JitishxD/JitishxD.git temp

echo:
echo 3. Copying Files Back...
:: Copy everything from "temp" into current directory
xcopy temp\* . /E /H /Y >nul

echo:
echo 4. Cleaning Temp Folder...
rd /s /q temp

echo:
echo Reset Complete.
pause
