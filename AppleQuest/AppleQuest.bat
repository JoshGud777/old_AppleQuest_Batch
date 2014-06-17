:: Please open this file with ether code page 473 or OEM 850 to see the right symbols.
:: https://github.com/JoshuaGud777/AppleQuest
::
::
::
@echo off
Setlocal EnableDelayedExpansion
:HEADER
mode con:cols=80 lines=40
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set bit=x64) else (set bit=x86)
title AppleQuest
::adds the data folder to the path so that you can just call the exe name
for /F "delims=" %%I in ("%~dp0") do @set applequest_install_root=%%~fI
set PATH=%applequest_install_root%data;%applequest_install_root%data\exe;%PATH%
:: !VARS! if getting a parse error.
setlocal enabledelayedexpansion

:VARS
if %bit%==x64 (set choose=Choose64.exe) else (set choose=Choose32.exe) 
if %bit%==x64 (set editv=EditV64.exe) else (set choose=EditV32.exe)




:menu
:menu0
cls
echo Your running Win%bit%-bit
::echo Your path = %PATH%
echo(
type data\TitleImg
echo(
echo(
echo ษอออออออออออออออออออออออป
echo บ Welcome to AppleQuest บ
echo ฬอออออออออออออออออออออออน
echo บ 1. Login              บ
echo บ 2. Create a Character บ
echo บ 3. Options            บ
echo บ 4. Dev. Contact info  บ
echo บ 5. Not actualy an     บ
echo บ option. Just needed   บ
echo บ this to look nice. :) บ
echo ศอออออออออออออออออออออออผ
%choose% -c 12345 -n -p "Please select a number then press Enter: "

goto :menu%ERRORLEVEL%


:menu1 - ######################################################################
echo(
%editv% -p "Please enter your name: " charName 
:menu1autoload
set saveLocation=%applequest_install_root%saves\AQ-%charName%.save

 IF EXIST !saveLocation! (
 	echo Character exists! Loading...
 	for /f "tokens=* delims= " %%a in (!saveLocation!) do (
	set %%a
	)
	goto :main
) ELSE (
 	set charName = nul
	echo ### That character does not exist! ###
	ping -n 3 0.0.0.0 >nul
	goto :menu
 )
goto :menu

:menu2 - Character Creation  - #################################################
echo(
echo *** Note: This name is also you login name!

:menu2name
echo(
%editv% -p "Please enter you Character's name: " charName
if %ERRORLEVEL%==2 goto :menu2name

:menu2check
set saveLocation=%applequest_install_root%saves\AQ-%charName%.save
IF EXIST !saveLocation! (
 	echo(
 	set /p choice="Character already exists. Do you want to override? [Y,N]:"
 	if /I !choice! == n goto :menu
)		

:menu2end
set saveLocation=saves\AQ-%charName%.save
call save new
echo(
echo Please wait while we do some important things.
ping -n 5 0.0.0.0 >nul
goto :menu1autoload

:menu3  - ######################################################################
call options menu
goto :menu


:menu4  - ######################################################################
call :DevInfo
goto :menu

:menu5  - ######################################################################
SET /A die=6*%random%/32768+1 
echo ...
call :sleep 2
echo ...
call :sleep 3
echo When I said there was nothing here I lied.
call :sleep 4
ECHO You rolled a %die% 
call :sleep 5
goto menu

:: main - #######################################################################
:main - #########################################################################
cls
if %charPos% LSS 200 goto :world1
if %charPos% LSS 300 goto :world2
if %charPos% LSS 400 goto :world3
if %charPos% LSS 500 goto :world4
if %charPos% LSS 600 goto :world5

:world1

call world1 %charPos% map

call world1 %charPos% %roomInfo%
if "%roomInfo%"=="shop" echo There is no store here.

echo( 
echo [N]orth, [S]outh, [E]ast or [W]est
echo Room# %charPos%
set /p choice="What would you like to do?: "

set roomInfo=%choice%



if /I %choice%==n goto :moveN
if /I %choice%==s goto :moveS
if /I %choice%==e goto :moveE
if /I %choice%==w goto :moveW

if /I %choice%==help call :help
if /I %choice%==save call save
if /I %choice%==quit call :quit
if /I %choice%==options call options ingame


goto :main



:moveN
if %cgn%==0 (
	echo Sorry you can't go that way!
	ping -n 2 0.0.0.0 >nul
	goto :main
	)
set /a charPos=%charPos% - 1
goto main2

:moveS
if %cgs%==0 (
	echo Sorry you can't go that way!
	ping -n 2 0.0.0.0 >nul
	goto :main
	)
set /a charPos=%charPos% + 1
goto main2

:moveE
if %cge%==0 (
	echo Sorry you can't go that way!
	ping -n 2 0.0.0.0 >nul
	goto :main
	)
set /a charPos=%charPos% + 10
goto main2

:moveW
if %cgw%==0 (
	echo Sorry you can't go that way!
	ping -n 2 0.0.0.0 >nul
	goto :main
	)
set /a charPos=%charPos% - 10
goto main2

:main2


goto :main



:: Fuctions - ####################################################################
:sleep
ping -n %1 0.0.0.0 >nul
goto :eof

:help
echo(
echo You can say.
echo ---------------------------------------------------
echo w - to go west
echo e - to go east
echo n - to go north
echo s - to go south
echo(
echo [name] - to talk to that person
echo who- - - to see who is in the room
echo map- - - pulls up the map
echo help - - to see the help message
echo save - - saves the player and all stats
echo quit - - saves player then exits from the game
echo cls- - - Clears all text other that story text in each room
echo options- takes you to options
echo(
echo +++ People talking to you
echo --- Story/flavour text
echo *** Important system information
echo(
echo Press any key to go back to the game...
pause >nul
goto :eof



:quit
call save
echo(
echo(
set /p xChoice="Goto [M]enu or E[X]it. Defualt is Exit: "
if /I %xChoice%==m (goto :HEADER) else (Exit)




