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

: Jingle Bells - Morse/Beep Style
:: Format: powershell -c [console]::beep(frequency,duration)

:: "Dashing through the snow..."
powershell -c [console]::beep(659,300)
powershell -c [console]::beep(659,300)
powershell -c [console]::beep(659,600)

powershell -c [console]::beep(659,300)
powershell -c [console]::beep(659,300)
powershell -c [console]::beep(659,600)

:: "On a one-horse open sleigh..."
powershell -c [console]::beep(659,300)
powershell -c [console]::beep(783,300)
powershell -c [console]::beep(523,300)
powershell -c [console]::beep(587,300)
powershell -c [console]::beep(659,800)

:: "Jingle bells, jingle bells..."
powershell -c [console]::beep(698,300)
powershell -c [console]::beep(698,300)
powershell -c [console]::beep(698,300)
powershell -c [console]::beep(698,300)
powershell -c [console]::beep(659,300)
powershell -c [console]::beep(659,300)
powershell -c [console]::beep(659,600)

:: "Oh what fun it is to ride..."
powershell -c [console]::beep(783,300)
powershell -c [console]::beep(783,300)
powershell -c [console]::beep(783,300)
powershell -c [console]::beep(783,300)
powershell -c [console]::beep(698,300)
powershell -c [console]::beep(659,300)
powershell -c [console]::beep(587,300)
powershell -c [console]::beep(523,600) 



echo.
echo Enjoy your holidays, %Name%!


setlocal enabledelayedexpansion
set "text=Happy Holidays from BSCS!"
for /l %%i in (1,1,30) do (
    set "line=!text:~0,%%i!"
    cls
    echo !line!
    ping -n 1 localhost >nul
)


echo ==================================================
echo        WELCOME TO THE CHRISTMAS GIFT HUNT! 
echo ==================================================
echo.
echo You wake up on Christmas Eve... but Santa is missing!
echo It's your job to find him and save Christmas!
echo.
pause

:START
cls
echo Where will you go first?
echo [1] Visit the Snowy Forest
echo [2] Go to the North Pole Village
echo [3] Stay home and drink hot cocoa
choice /c 123 /n /m "Choose (1-3): "

if errorlevel 3 goto COCOA
if errorlevel 2 goto VILLAGE
if errorlevel 1 goto FOREST

:FOREST
cls
echo You enter the snowy forest...
echo You hear jingle bells in the distance.
echo.
echo [1] Follow the sound of bells
echo [2] Turn back to the village
choice /c 12 /n /m "Choose (1-2): "

if errorlevel 2 goto VILLAGE
if errorlevel 1 goto BELLS

:BELLS
cls
echo You follow the bells... and discover Santa's sleigh!
echo But Santa is not here. Only Rudolph is waiting.
echo Rudolph points his nose towards the village.
echo.
pause
goto VILLAGE

:VILLAGE
cls
echo You arrive at the North Pole Village.
echo The elves are panicking — Santa has been captured by the Grinch!
echo.
echo [1] Sneak into the Grinch's Cave
echo [2] Ask the elves for help
choice /c 12 /n /m "Choose (1-2): "

if errorlevel 2 goto ELVES
if errorlevel 1 goto GRINCH

:ELVES
cls
echo The elves give you candy cane weapons and magic snowballs.
echo You feel stronger!
echo.
pause
goto GRINCH

:GRINCH
cls
echo You bravely enter the Grinch's cave...
echo You see Santa tied up! The Grinch laughs menacingly.
echo.
echo [1] Fight the Grinch with candy cane
echo [2] Throw a snowball at him
choice /c 12 /n /m "Choose (1-2): "

if errorlevel 2 goto SNOWBALL
if errorlevel 1 goto FIGHT

:FIGHT
cls
echo You fight the Grinch with your candy cane sword!
echo After an epic battle, you defeat him.
echo Santa is free and Christmas is saved!
echo 🎅🎁✨
goto END

:SNOWBALL
cls
echo You throw a snowball at the Grinch...
echo But it was too weak. The Grinch catches you!
echo Christmas is ruined... 😭
goto END

:COCOA
cls
echo You stay home, drink hot cocoa, and take a nap.
echo But without you, Santa is never found... Christmas is cancelled.
echo 😢
goto END

:END
echo.
echo ==================================================
echo                       THE END
echo ==================================================
echo.
pause

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


pause




