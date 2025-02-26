@echo on
setlocal

:: Change directory to the location of the Java files
cd lox


:: Compile Java files
echo Compiling Java files...
javac *.java

:: Run the main class (replace 'Lox' with your actual main class name if different)
echo Running the application...
java Lox.class

echo Operation complete.
pause

:: Change back to the original directory
cd ..\..
