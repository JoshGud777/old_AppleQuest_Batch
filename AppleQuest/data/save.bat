:: Use as "call save [name]

if "%1"=="new" goto :newChar

set saveLocation=saves\AQ-%charName%.save

:saveChar

echo charPos=%charPos% > %saveLocation%
echo charHp=%charHp% >> %saveLocation%
echo charMp=%charMp% >> %saveLocation%
echo charAttMax=%charAttMax% >> %saveLocation%
echo charAttMin=%charAttMin% >> %saveLocation%
echo charGc=%charGc% >> %saveLocation%
echo charRs=%charRs% >> %saveLocation%


echo Saved player!
ping -n 3 0.0.0.0 >nul
goto :eof



:newChar
echo charPos=155 >> %saveLocation%
echo charHp=100 >> %saveLocation%
echo charMp=50 >> %saveLocation%
echo charAttMax=5 >> %saveLocation%
echo charAttMin=1 >> %saveLocation%
echo charGc=00 >> %saveLocation%
echo charRs=00 >> %saveLocation%
goto :eof














