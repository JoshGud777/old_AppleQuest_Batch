:: Please open this file with ether code page 473 or OEM 850 to see the right symbols.
:: https://github.com/JoshuaGud777/AppleQuest
::
::
::
@echo off
Setlocal EnableDelayedExpansion
:HEADER
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
echo Your path = %PATH%
echo(
echo ษอออออออออออออออออออออออป
echo บ Welcome to AppleQuest บ
echo ฬอออออออออออออออออออออออน    AA            l          QQQ                 t 
echo บ 1. Login              บ   A  A           l         Q   Q                t 
echo บ 2. Create a Character บ   AAAA ppp  ppp  l eee     Q   Q  u  u eee  ss ttt
echo บ 3. Options            บ   A  A p  p p  p l e e     Q  QQ  u  u e e  s   t
echo บ 4. Dev. Contact info  บ   A  A ppp  ppp  l ee       QQQQ   uuu ee  ss   tt 
echo บ 5. Not actualy an     บ        p    p                   Q  
echo บ option. Just needed   บ        p    p      
echo บ this to look nice. :) บ
echo ศอออออออออออออออออออออออผ
%choose% -c 12345 -n -p "Please select a number then press Enter: "

goto :menu%ERRORLEVEL%


:menu1 - ######################################################################
echo(
%editv% -p "Please enter your name: " charName 

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
echo Note: This name is also you login name!

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
call world1 %charPos%


goto :main



:: Fuctions - ####################################################################
:sleep
ping -n %1 0.0.0.0 >nul
goto :eof










