@echo off
title Merry Merry
color 0A
cls

:: Greeting echo
echo =============================== 
echo        MERRY CHRISTMAS! 
echo ===============================
echo.

set /p Name= What is your name?
echo Hello, %Name%!
echo.

set /p Gift= What do you want for Christmas?
echo You want: %Gift%
echo.

set /p Wish= What do you wish for Christmas?
echo You wish: %Wish%
echo.

:: Christmas Tree
echo           *
echo          ***
echo         *****
echo        *******
echo       *********
echo      ***********
echo     *************
echo          ^|^|^|
echo          ^|^|^|
echo.

for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value') do set datetime=%%i
set year=%datetime:~0,4%

set /a nyear=year+1
echo MERRY CHRISTMAS %Name%!
echo And lots of CODE in %nyear%!
echo.

:: Simple Jingle Bells beep
powershell -c "[console]::beep(659,300); [console]::beep(659,300); [console]::beep(659,600);"
powershell -c "[console]::beep(659,300); [console]::beep(659,300); [console]::beep(659,600);"
powershell -c "[console]::beep(659,300); [console]::beep(784,300); [console]::beep(523,300); [console]::beep(587,300); [console]::beep(659,1200);"
powershell -c "[console]::beep(659,300); [console]::beep(659,300); [console]::beep(659,600);"
powershell -c "[console]::beep(659,300); [console]::beep(659,300); [console]::beep(659,600);"
powershell -c "[console]::beep(659,300); [console]::beep(784,300); [console]::beep(523,300); [console]::beep(587,300); [console]::beep(659,1200);"


:: Blinking color effect
for /l %%i in (1,1,5) do (
    color 0A
    timeout /t 1 >nul
    color 0C
    timeout /t 1 >nul
    color 0A
    timeout /t 1 >nul
)

:: O Christmas Tree, O Christmas Tree
powershell -c "[console]::beep(392,400)"   
powershell -c "[console]::beep(440,400)"   
powershell -c "[console]::beep(494,400)"   
powershell -c "[console]::beep(392,600)"   
powershell -c "[console]::beep(392,400)"   
powershell -c "[console]::beep(440,400)"   
powershell -c "[console]::beep(494,400)"   
powershell -c "[console]::beep(392,600)"   


echo.
echo Enjoy your holidays, %Name%!

echo.
echo   *     *     *     *     *
echo      M E R R Y   C H R I S T M A S
echo   *     *     *     *     *
echo.


setlocal enabledelayedexpansion
set "text=Happy Holidays from BSCS!"
for /l %%i in (1,1,30) do (
    set "line=!text:~0,%%i!"
    cls
    echo !line!
    ping -n 1 localhost >nul
)

start santa.gif 



:: =============================
:: MATRIX EFFECT FOR THE WISH
:: =============================
cls
echo.
echo MATRIX EFFECT STARTING... Press CTRL+C to stop.
echo.


:matrix
:: Randomize color (0A = green, 0B = cyan, 0C = red, 0E = yellow, 0F = white)
set /a col=%random% %% 6
if %col%==0 color 0A
if %col%==1 color 0B
if %col%==2 color 0C
if %col%==3 color 0E
if %col%==4 color 0F
if %col%==5 color 0D

:: Print each letter of wish vertically in random column
for /l %%i in (0,1,10) do (
    echo %Wish%
    timeout /t 1 >nul
)

goto matrix

start santa.gif 

pause




