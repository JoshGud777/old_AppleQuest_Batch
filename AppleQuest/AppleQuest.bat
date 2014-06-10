:: Please open this file with ether code page 473 or OEM 850 to see the right symbols.
:: https://github.com/JoshuaGud777/AppleQuest
::
::
::
@echo off
Setlocal EnableDelayedExpansion
:HEADER
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set bit=x64) else (set bit=x86)

:VARS
if %bit%==x64 (set choose=Choose64.exe) else (set choose=Choose64.exe) 
if %bit%==x64 (set editv=EditV64.exe) else (set choose=EditV32.exe)



::adds the data folder to the path so that you can just call the exe name
for /F "delims=" %%I in ("%~dp0") do @set applequest_install_root=%%~fI
set PATH=%applequest_install_root%\data;%applequest_install_root%\data\exe;%PATH%
:: !VARS! if getting a parse error.
setlocal enabledelayedexpansion
:menu
:menu0
cls
echo Your running Win%bit%-bit
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
echo.
%editv% -p "Please enter your name: " charName 

set saveLocation=%applequest_install_root%saves\AQ-%charName%.save

 IF EXIST !saveLocation! (
 	echo Character exists! Loading...
 	for /f "tokens=* delims= " %%a in (!saveLocation!) do (
	set %%a
	)
	goto :menu
) ELSE (
 	set charName = nul
	echo ### That character does not exist! ###
	ping -n 3 0.0.0.0 >nul
	goto :menu
 )
goto :menu

:menu2 - Character Creation  - #################################################
echo Note: This name is also you login name!

:menu2name
echo.
%editv% -p "Please enter you Character's name: " charName
if %ERRORLEVEL%==2 goto :menu2name

:menu2check
set saveLocation=%applequest_install_root%saves\AQ-%charName%.save
IF EXIST !saveLocation! (
 	echo.
 	set /p choice="Character already exists. Do you want to override? [Y,N]:"
 	if /I !choice! == n goto :menu
)		

:menu2end
set saveLocation=saves\AQ-%charName%.save

echo charName=%charName% > %saveLocation%
echo charHp=100 >> %saveLocation%
echo charMp=50 >> %saveLocation%

echo.
echo Returning to Menu to login. Please use the login  cridentials you made just now.
ping -n 5 0.0.0.0 >nul
goto :menu

:menu3  - ######################################################################





exit

:menu4  - ######################################################################
exit

:menu5  - ######################################################################
SET /A die=6*%random%/32768+1 
echo ...
ping -n 2 0.0.0.0 >nul
echo ...
ping -n 3 0.0.0.0 >nul
echo When I said there was nothing here I lied.
ping -n 4 0.0.0.0 >nul
ECHO You rolled a %die% 
ping -n 5 0.0.0.0 >nul
goto menu

:main

