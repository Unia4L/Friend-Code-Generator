@echo off
:start
cls
call settings.cmd
title Friend Code Generator - 1.2.0
echo Last Update: 31st March 2019
echo -----------------------
echo  1 - 3ds/Wii-U FC generator
echo  2 - Switch FC Generator
echo  3 - Clear Codes.txt
echo  4 - Settings
echo -----------------------


SET /P choose=Type 1, 2, 3 or 4 then press ENTER:
IF %choose%==1 goto 3ds
IF %choose%==2 goto Switch
IF %choose%==3 goto Clear
IF %choose%==4 goto Settings
echo Invalid Input.
PAUSE



:Clear
del Codes.txt
echo.>"Codes.txt"
cls
echo Cleared!
timeout 1 -nobreak >nul
cls
goto :start
EXIT

:3ds
del Codes.txt
echo.>"Codes.txt"
cls
set /p amount= Amount of codes you want: 
cls
echo Generating...
:loop3ds
set /a num1=%random% %%8999 +1000
set /a num2=%random% %%8999 +1000
set /a num3=%random% %%8999 +1000
@echo %num1%-%num2%-%num3% >> Codes.txt
set /a amt=%amt%+1
title %amt% generated.
set /a loop=%loop%+1 
if "%loop%"=="%amount%" goto done3ds
goto loop3ds
:done3ds
set /p p= Process Done. Press enter to close
EXIT

:Switch
del Codes.txt
echo.>"Codes.txt"
cls
set /p amount= Amount of codes you want: 
cls
echo Generating...
:loopSw
set /a num1=%random% %%8999 +1000
set /a num2=%random% %%8999 +1000
set /a num3=%random% %%8999 +1000
@echo SW-%num1%-%num2%-%num3% >> Codes.txt
set /a amt=%amt%+1
title %amt% generated.
set /a loop=%loop%+1 
if "%loop%"=="%amount%" goto donesw
goto loopSw
:donesw
set /p p= Process Done. Press enter to close
EXIT

:settings
cls
echo Settings is in beta. Some functions may not work proporly!
echo.
echo ------------------------------------
echo  1 - Change the color of the program!
echo  2 - Go back to generator.
echo ------------------------------------
echo.
SET /P choose=Type 1, 2, 3 or 4 then press ENTER:
IF %choose%==1 goto colorchange
IF %choose%==2 goto start
echo Invalid.
timeout 1 -nobreak >nul
cls
goto settings

:colorchange
cls
@echo. > settings.cmd
echo What color do you want to change it to?
echo.
echo 1: Blue
echo 2: Green
echo 3: Aqua
echo 4: Red
echo 5: Purple
echo 6: Yellow
echo 7: White
echo 8: Gray/Grey
echo 9: Light Blue
echo a: Light Green
echo b: Light Aqua
echo c: Light Red
echo d: Light Purple
echo e: Light Yellow
echo f: Light White
echo.
SET /P choose=Type a color-id then press enter:
IF %choose%==1 goto change
IF %choose%==2 goto change
IF %choose%==3 goto change
IF %choose%==4 goto change
IF %choose%==5 goto change
IF %choose%==6 goto change
IF %choose%==7 goto change
IF %choose%==8 goto change
IF %choose%==9 goto change
IF %choose%==a goto change
IF %choose%==b goto change
IF %choose%==c goto change
IF %choose%==d goto change
IF %choose%==e goto change
IF %choose%==f goto change

:change
@echo color %choose% > settings.cmd
cls
goto start