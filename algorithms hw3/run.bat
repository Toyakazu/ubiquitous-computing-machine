@echo off
setlocal

:: Set the package directory
set PACKAGE_DIR=lox

:: Make sure we're in the right directory
cd %~dp0

:: Clean previous compilation
echo Cleaning previous compilation...
del /Q %PACKAGE_DIR%\*.class 2>nul

:: Compile all Java files
echo Compiling Java files...
javac %PACKAGE_DIR%\*.java

:: Check if compilation was successful
if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    pause
    exit /b 1
)

:: Run the Lox interpreter
echo Running Lox interpreter...
java lox.Lox %*

:: If additional arguments were passed, exit
if not "%~1"=="" (
    exit /b 0
)

:: Otherwise pause to see the output
echo.
echo Execution complete.
pause