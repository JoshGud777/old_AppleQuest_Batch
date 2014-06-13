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
 
:: ##########################################

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

::##########################################
::##########################################
:: Rooms - $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

:Room111
set cgn=0
set cge=1
set cgs=0
set cgw=0
::E121
goto :eof

:Room121
set cgn=0
set cge=0
set cgs=1
set cgw=0
::S122
goto :eof

:Room141
set cgn=0
set cge=1
set cgs=1
set cgw=0
::E151
::S142
goto :eof

:Room151
set cgn=0
set cge=1
set cgs=1
set cgw=1
::E161
::S152
::W141
goto :eof

:Room161 *
set cgn=0
set cge=0
set cgs=0
set cgw=1
::W151
::Take to World 2
goto :eof


::---------------------------------------------
:Room122
set cgn=1
set cge=1
set cgs=1
set cgw=0
::N121
::E132
::S123
goto :eof

:Room132
set cgn=0
set cge=1
set cgs=1
set cgw=1
::E142
::S133
::W122
goto :eof

:Room142
set cgn=1
set cge=1
set cgs=1
set cgw=1
::N141
::E152
::S143
::W132
goto :eof

:Room152
set cgn=1
set cge=1
set cgs=0
set cgw=1
::N151
::E162
::W142
goto :eof

:Room162
set cgn=0
set cge=0
set cgs=1
set cgw=1
::S163
::W152
goto :eof


::---------------------------------------------
:Room113
set cgn=0
set cge=1
set cgs=0
set cgw=0
::E123
goto :eof

:Room123
set cgn=1
set cge=1
set cgs=1
set cgw=1
::N122
::E133
::S124
::W113
goto :eof

:Room133
set cgn=1
set cge=1
set cgs=0
set cgw=1
::N132
::E143
::W123
goto :eof

:Room143
set cgn=1
set cge=0
set cgs=1
set cgw=0
::N142
::S144
goto :eof

:Room163
set cgn=1
set cge=1
set cgs=1
set cgw=0
::N162
::E173
::S164
goto :eof

:Room173
set cgn=0
set cge=0
set cgs=0
set cgw=1
::W163
goto :eof


::---------------------------------------------
:Room124
set cgn=1
set cge=1
set cgs=1
set cgw=0
::N123
::E134
::S125
goto :eof

:Room134
set cgn=0
set cge=1
set cgs=0
set cgw=1
::E144
::W124
goto :eof

:Room144
set cgn=1
set cge=0
set cgs=1
set cgw=1
::N143
::S145
::W134
goto :eof

:Room164
set cgn=1
set cge=0
set cgs=1
set cgw=0
::N163
::S165
goto :eof


::---------------------------------------------
:Room125
set cgn=1
set cge=1
set cgs=1
set cgw=0
::N124
::E135
::S126
goto :eof

:Room135
set cgn=0
set cge=1
set cgs=0
set cgw=1
::E145
::W125
goto :eof

:Room145
set cgn=1
set cge=1
set cgs=0
set cgw=1
::N144
::E155
::W135
goto :eof

:Room155 $

set cgn=0
set cge=1
set cgs=1
set cgw=1
::E165
::S156
::W145
goto :eof

:Room165
set cgn=1
set cge=1
set cgs=0
set cgw=1
::N164
::E175
::W155
goto :eof

:Room175
set cgn=0
set cge=1
set cgs=1
set cgw=1
::E185
::S176
::W165
goto :eof

:Room185
set cgn=0
set cge=1
set cgs=0
set cgw=1
::E195
::W175
goto :eof

:Room195 *
set cgn=0
set cge=0
set cgs=0
set cgw=1
::W185
::To world 3
goto :eof


::---------------------------------------------
:Room116
set cgn=0
set cge=1
set cgs=1
set cgw=0
::E126
::S117
goto :eof

:Room126
set cgn=1
set cge=1
set cgs=0
set cgw=1
::N125
::E136
::W116
goto :eof

:Room136
set cgn=0
set cge=0
set cgs=1
set cgw=1
::S137
::W126
goto :eof

:Room156
set cgn=1
set cge=0
set cgs=1
set cgw=0
::N155
::S157
goto :eof

:Room176
set cgn=1
set cge=0
set cgs=1
set cgw=0
::N175
::S177
goto :eof


::---------------------------------------------
:Room117
set cgn=1
set cge=1
set cgs=0
set cgw=0
::N116
::E127
goto :eof

:Room127
set cgn=0
set cge=1
set cgs=0
set cgw=1
::E137
::W117
goto :eof

:Room137
set cgn=1
set cge=0
set cgs=1
set cgw=1
::N137
::S138
::W127
goto :eof

:Room157
set cgn=1
set cge=0
set cgs=1
set cgw=0
::N156
::S158
goto :eof

:Room177
set cgn=1
set cge=0
set cgs=1
set cgw=0
::N176
::S178
goto :eof


::---------------------------------------------
:Room138
set cgn=1
set cge=1
set cgs=0
set cgw=0
::N137
::E148
goto :eof

:Room148
set cgn=0
set cge=1
set cgs=0
set cgw=1
::E158
::W138
goto :eof

:Room158
set cgn=1
set cge=1
set cgs=0
set cgw=1
::N157
::E168
::W148
goto :eof

:Room168
set cgn=0
set cge=1
set cgs=0
set cgw=1
::E178
::W158
goto :eof

:Room178
set cgn=0
set cge=1
set cgs=1
set cgw=1
::E188
::S179
::W168
goto :eof

:Room188
set cgn=0
set cge=0
set cgs=1
set cgw=1
::S189
::W178
goto :eof

::---------------------------------------------
:Room139
set cgn=0
set cge=1
set cgs=0
set cgw=0
::E149
goto :eof

:Room149
set cgn=1
set cge=0
set cgs=0
set cgw=1
::N148
::W139
goto :eof

:Room179
set cgn=1
set cge=0
set cgs=0
set cgw=0
::N178
goto :eof

:Room189
set cgn=1
set cge=0
set cgs=0
set cgw=0
::N188
goto :eof

