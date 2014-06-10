:: Use as "call save [name]

if %1=="new" goto new

set saveLocation=saves\AQ-%charName%.save

:saveChar
echo charName=%charName% > %saveLocation%
echo charPassword=%charPassword% >> %saveLocation%
echo charHp=%charHp% >> %saveLocation%
echo charMp=%charMp% >> %saveLocation%
echo charAtt=%charAtt% >> %saveLocation%














