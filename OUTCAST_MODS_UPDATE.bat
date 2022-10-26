@echo off

:: THIS IS THE STARTING AREA YOU CAN SETUP CONFIGURATIONS HERE
:: REMEMBER I ALREADY SETUP THE MODS FOR OUTCAST COMMUNITY
:: BUT AS MODS COMING MODS GO, YOU PROBABLY NEED TO SETUP IT AGAIN SOON MOD LIST CHANGE

:: ALL MODS LIST ARE NEXT
:: KEEP IT THE SAME WAY LIKE
:: set Mods[0]=1823412793
:: WHERE THE 0 BETWEEN THE [] NEED TO BE THE FIRST ONE.
:: AND ALL THE MODs IDs AFTER THE EQUAL (=) CHARACTER

set Mods[0]=1823412793
set Mods[1]=880454836
set Mods[2]=2871328013
set Mods[3]=1159180273
set Mods[4]=1369802940
set Mods[5]=1976970830
set Mods[6]=2086135111
set Mods[7]=2010870025
set Mods[8]=1402835318
set Mods[9]=1367404881
set Mods[10]=1966733568
set Mods[11]=901911361
set Mods[12]=933782986
set Mods[13]=1928978003
set Mods[14]=1705201022
set Mods[15]=1906158454
set Mods[16]=1734383367
set Mods[17]=2644416526
set Mods[18]=1629644846
set Mods[19]=2050780234
set Mods[20]=2275543723
set Mods[21]=1396310739
set Mods[22]=931088249
set Mods[23]=1797359985
set Mods[24]=2436421560
set Mods[25]=1545911731
set Mods[26]=2305969565
set Mods[27]=2377569193
set Mods[28]=2641269333
set Mods[29]=2300463941
set Mods[30]=2820165372
set Mods[31]=2723987721
set Mods[32]=877108545
set Mods[33]=1369743238

:: DO NOT CROSS THIS LINE












































:: TOLD YOU TO NOT CROSS THIS LINE
































:: OKAY IF YOU ARE EXPERIENCE ON EDITING THE NEXT CODE, FEEL FREE TO DO IT
:: HOPE YOU LIKE THE MINUTES I TAKE TO DO THIS SCRIPT


:: BE AWARE YMIR IS WATCHING  HAHHAHA

:MENU
cls
echo.
echo.
echo ==================================================
echo      MADE WITH LOVE TO THE OUTCAST COMMUNITY
echo ==================================================
echo.
echo.
echo 1 - Tell me how do i Edit the Mod List this Script uses?
echo 2 - Download Updated Mods From List
echo 3 - Copy Mods to my Game Workshop Folder
echo 4 - Open Downloaded Mods Folder
echo 5 - Open My Steam Workshop Folder From C Drive
echo 5 - EXIT
echo.
echo.

SET /P M=TYPE 1, 2 3 etc. to select what you want to do, then press ENTER:
IF %M%==1 GOTO HELP
IF %M%==2 GOTO DOWNLOAD
IF %M%==3 GOTO COPYING
IF %M%==4 GOTO OPENFOLDER
IF %M%==5 GOTO OPENFOLDERC
IF %M%==6 GOTO EOF

GOTO MENU

:HELP
cls
echo.
echo.
echo ==================================================
echo      MADE WITH LOVE TO THE OUTCAST COMMUNITY
echo ==================================================
echo.
echo.
echo FIRST YOU NEED TO GO TO THIS FILE
echo THAT YOU JUST DOUBLE CLICK
echo AND RIGHT CLICK AND OPEN WITH NOTEPAD
echo OR ANYOTHER TEXT EDITOR YOU MAY USE
echo.
echo THEN READ THE TOP AREA AND EDIT THE MOD LIST THERE
echo.
echo.
timeout /T 300
GOTO MENU


:OPENFOLDER
cls
echo.
echo.
echo ==================================================
echo      MADE WITH LOVE TO THE OUTCAST COMMUNITY
echo ==================================================
echo.
echo.
echo OPENING THE FOLDER...
echo.
echo.
start "" ".\steamapps\workshop\content\440900\"
timeout /T 10
GOTO MENU

:OPENFOLDERC
cls
echo.
echo.
echo ==================================================
echo      MADE WITH LOVE TO THE OUTCAST COMMUNITY
echo ==================================================
echo.
echo.
echo OPENING THE FOLDER...
echo.
echo.
start "" "C:\Program Files (x86)\Steam\steamapps\workshop\content\440900\"
timeout /T 10
GOTO MENU


:DOWNLOAD
cls
echo.
echo.
echo ==================================================
echo      MADE WITH LOVE TO THE OUTCAST COMMUNITY
echo ==================================================
echo.
echo.
echo START DOWNLOADING steamcmd.zip A SOFTWARE NEEDED TO DOWNLOAD OR UPDATE MODS
echo IT IS AN OFFICIAL APP FROM STEAM.
echo IF YOU NEED MORE INFO CONTACT ME.
timeout /T 120
powershell -Command "Invoke-WebRequest https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -OutFile steamcmd.zip"
echo NOW WE GOING TO UNZIP FILE
timeout /T 10
echo.
@ECHO ON
tar -xf steamcmd.zip
@ECHO OFF
echo UNZIPING THE FILE...DONE!
echo.
echo.
echo NOW WE WILL EXECUTE THE DOWNLOAD OF THE MODs FROM THE LIST
echo THAT YOU PREVIOUS SET ON THIS FILE
echo.
echo.
timeout /T 60
echo STARTING steamcmd.exe PROGRAM
echo.
echo.
set "x=0"

:SymLoop
if defined Mods[%x%] (
	call set list=%list% +"workshop_download_item 440900 %%Mods[%x%]%%" validate
    set /a "x+=1"
    GOTO :SymLoop
)
echo.
echo.
steamcmd +login anonymous%list% +quit
echo.
echo.
timeout /T 10
GOTO MENU

:COPYING
cls
echo.
echo.
echo ==================================================
echo      MADE WITH LOVE TO THE OUTCAST COMMUNITY
echo ==================================================
echo.
echo 1 - Move Mods to my Steam Workshop on C: Disk Drive
echo 2 - Back to the Main Menu
echo 3 - EXIT
echo.
echo.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO COPYALL
IF %M%==2 GOTO MENU
IF %M%==3 GOTO EOF

:COPYALL
cls
echo.
echo.
echo ==================================================
echo      MADE WITH LOVE TO THE OUTCAST COMMUNITY
echo ==================================================
echo.
echo.
echo START MOVING...
@ECHO ON
move /y steamapps\workshop\content\440900 "C:\Program Files (x86)\Steam\steamapps\workshop\content\440900"
@ECHO OFF
echo.
echo.
echo DONE. CHECK YOUR GAME, AND HAVE FUN PLAYING!
echo.
echo.
timeout /T 10
GOTO COPYING


exit
