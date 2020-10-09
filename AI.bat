@echo off
title AI v.5
cls
::comment out the below line to get rid of the credits on startup
set credits=1
if "%credits%"=="1" echo|set /p="C:\Users\Guest\AI> "
if "%credits%"=="1" echo|set /p="A"
if "%credits%"=="1" echo|set /p="I "
if "%credits%"=="1" echo|set /p="V"
if "%credits%"=="1" echo|set /p="."
if "%credits%"=="1" echo|set /p="5 "
if "%credits%"=="1" echo|set /p="- "
if "%credits%"=="1" echo|set /p="M"
if "%credits%"=="1" echo|set /p="a"
if "%credits%"=="1" echo|set /p="d"
if "%credits%"=="1" echo|set /p="e "
if "%credits%"=="1" echo|set /p="b"
if "%credits%"=="1" echo|set /p="y "
if "%credits%"=="1" echo|set /p="M"
if "%credits%"=="1" echo|set /p="a"
if "%credits%"=="1" echo|set /p="x"
if "%credits%"=="1" echo|set /p="w"
if "%credits%"=="1" echo|set /p="e"
if "%credits%"=="1" echo|set /p="l"
if "%credits%"=="1" echo|set /p="l "
if "%credits%"=="1" echo|set /p="F"
if "%credits%"=="1" echo|set /p="i"
if "%credits%"=="1" echo|set /p="s"
if "%credits%"=="1" echo|set /p="h"
if "%credits%"=="1" echo|set /p="e"
if "%credits%"=="1" echo|set /p="r "
if "%credits%"=="1" echo|set /p="@ "
if "%credits%"=="1" echo|set /p="h"
if "%credits%"=="1" echo|set /p="t"
if "%credits%"=="1" echo|set /p="t"
if "%credits%"=="1" echo|set /p="p"
if "%credits%"=="1" echo|set /p="s"
if "%credits%"=="1" echo|set /p=":"
if "%credits%"=="1" echo|set /p="/"
if "%credits%"=="1" echo|set /p="/"
if "%credits%"=="1" echo|set /p="m"
if "%credits%"=="1" echo|set /p="a"
if "%credits%"=="1" echo|set /p="x"
if "%credits%"=="1" echo|set /p="w"
if "%credits%"=="1" echo|set /p="e"
if "%credits%"=="1" echo|set /p="l"
if "%credits%"=="1" echo|set /p="l"
if "%credits%"=="1" echo|set /p="c"
if "%credits%"=="1" echo|set /p="r"
if "%credits%"=="1" echo|set /p="a"
if "%credits%"=="1" echo|set /p="f"
if "%credits%"=="1" echo|set /p="t"
if "%credits%"=="1" echo|set /p="e"
if "%credits%"=="1" echo|set /p="r"
if "%credits%"=="1" echo|set /p="."
if "%credits%"=="1" echo|set /p="c"
if "%credits%"=="1" echo|set /p="o"
if "%credits%"=="1" echo|set /p="m"
if "%credits%"=="1" ping 127.0.0.1 -n 2 >nul
if "%credits%"=="1" echo.
if "%credits%"=="1" echo|set /p="C:\Users\Guest\AI> "
if "%credits%"=="1" echo|set /p="s"
if "%credits%"=="1" echo|set /p="t"
if "%credits%"=="1" echo|set /p="a"
if "%credits%"=="1" echo|set /p="r"
if "%credits%"=="1" echo|set /p="t"
if "%credits%"=="1" echo.
if "%credits%"=="1" ping 127.0.0.1 -n 2 >nul
color F0
echo.
set nodeInstalled=false
set nodeVersion=null
FOR /F "tokens=*" %%g IN ('node -v') do (SET nodeVersion=%%g)
cls
echo %nodeVersion%|find /i "v" >nul && set nodeInstalled=true
if not exist node_modules echo It seems like you don't have the required node.js dependencies installed.&& set problem=1&& goto errorCheckNext
if not exist node_modules\.bin echo It seems like you don't have the required node.js dependencies installed.&& set problem=1& goto errorCheckNext
if not exist node_modules\brain.js echo It seems like you don't have the required node.js dependencies installed.&& set problem=1&& goto errorCheckNext
if not exist node_modules\string-sanitizer echo It seems like you don't have the required node.js dependencies installed.&& set problem=1&& goto errorCheckNext
if not exist node_modules\fs echo It seems like you don't have the required node.js dependencies installed.&& set problem=1&& goto errorCheckNext
if not exist node_modules\remove-punctuation echo It seems like you don't have the required node.js dependencies installed.&& set problem=1&& goto errorCheckNext
if not exist node_modules\readline echo It seems like you don't have the required node.js dependencies installed.&& set problem=1&& goto errorCheckNext
:errorCheckNext
if not exist trained.net echo It seems like you don't have the trained version of the neural network installed. This program will not work without it.&& set problem=1
if not exist load.js echo It seems like you don't have the AI installed. (This is just the launcher)&& set problem=1
if not exist package-lock.json echo It seems like you don't have the file "package-lock.json". The AI will most likely run without it, but may have some issues.&& set problem=1
if "%nodeInstalled%"=="false" echo It seems like you don't have Node.js installed.&& set problem=1
if "%problem%"=="1" pause
cls
:getInput
cls
::echo Type "train" to train the neural network
echo Type "load" to load the neural network
echo Type "exit" to exit the program
echo.
set /p input=:
::if "%input%" == "train" goto train
if "%input%" == "load" goto load
if "%input%" == "exit" exit
goto getInput
:load
if not exist trained.net echo File does not currently exist && pause && goto getinput
node load.js
goto getInput