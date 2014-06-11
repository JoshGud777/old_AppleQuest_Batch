:: Use as "call world1 [Room###] [Extra info]"
@echo off

goto :Room%1
goto :eof


echo #-#   #-#-*         
echo   ^|   ^| ^|       
echo   #-#-#-#-#
echo   ^| ^| ^|   ^|
echo #-#-# #   #-#
echo   ^|   ^|   ^|              
echo   #-#-#   #          
echo   ^|   ^|   ^|        
echo   #-#-#-$-#-#-#-*
echo   ^|     ^|   ^|
echo #-#-#   #   #
echo ^|   ^|   ^|   ^|
echo #-#-#   #   #
echo     ^|   ^|
echo     #-#-#-#-#-#
echo       ^|     ^| ^|
echo     #-#     # #  
 
##########################################

       1 2 3 4 5 6 7 8 9 
echo 1 #-#   #-#-*         
echo     |   | |       
echo 2   #-#-#-#-#
echo     | | |   |
echo 3 #-#-# #   #-#
echo     |   |   |              
echo 4   #-#-#   #          
echo     |   |   |        
echo 5   #-#-#-$-#-#-#-*
echo     |     |   |
echo 6 #-#-#   #   #
echo   |   |   |   |
echo 7 #-#-#   #   #
echo       |   |
echo 8     #-#-#-#-#-#
echo         |     | |
echo 9     #-#     # #  

##########################################
##########################################
:: Rooms - $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

:Room111
E121

:Room121
S122

:Room141
E151
S142

:Room151
E161
S152
W141

:Room161*
W151
Take to World 2


:Room122
N121
E132
S123
:Room132

:Room142

:Room152

:Room162


:Room113

:Room123

:Room133

:Room143

:Room163

:Room173


:Room124

:Room134

:Room144

:Room164


:Room125

:Room135

:Room145

:Room155$

:Room165

:Room175

:Room185

:Room195*


:Room116

:Room126

:Room126

:Room156

:Room176


:Room117

:Room127

:Room137

:Room157

:Room177


:Room138

:Room148

:Room158

:Room168

:Room178

:Room188


:Room139

:Room149

:Room179

:Room189