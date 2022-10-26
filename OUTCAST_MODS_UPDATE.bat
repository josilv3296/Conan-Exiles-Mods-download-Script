@echo off

:: THIS IS THE STARTING AREA YOU CAN SETUP CONFIGURATIONS HERE
:: REMEMBER I ALREADY SETUP THE MODS FOR OUTCAST COMMUNITY
:: BUT AS MODS COMING MODS GO, YOU PROBABLY NEED TO SETUP IT AGAIN SOON MOD LIST CHANGE

:: ALL MODS LIST ARE NEXT
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





















:: OKAY IF YOU ARE EXPERIENCE EDIT THE NEXT CODE, FEEL FREE TO DO IT
:: HOPE YOU LIKE THE LITTLE MINUTES I TAKE TO DO THIS SCRIPT


:: BE AWARE YMIR IS WATCHING  HAHHAHA



echo BEFORE CONTINUE,
echo I ALREADY SETUP THE MOD IDs FOR OUTCAST COMMUNITY
echo BUT IF YOU NEED TO CHANGE IT,
echo EDIT THE BAT SCRIPT WITH YOUR NOTEPAD
echo AT THE TOP OF THE FILE YOU CAN SEE THE CONFIGURATION AREA
echo. 
echo.
echo BUT IF YOU DONT WANT TO CHANGE IT, PLEASE PRESS ANY KEY TO CONTINUE
echo. 
echo.
pause
echo START DOWNLOADING steamcmd.zip A SOFTWARE NEEDED TO DOWNLOAD OR UPDATE MODS
echo IT IS AN OFFICIAL APP FROM STEAM.
echo IF YOU NEED MORE INFO CONTACT ME.
timeout /T 120
powershell -Command "Invoke-WebRequest https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -OutFile steamcmd.zip"
echo NOW WE GOING TO UNZIP FILE
timeout /T 10
echo UNZIPING THE FILE...DONE!
tar -xf steamcmd.zip
echo NOW WE WILL EXECUTE THE DOWNLOAD OF THE OUTCAST MOD LIST
echo THAT YOU PREVIOUS SET ON THIS FILE, WITH ONES THAT ARE REALLY UPDATED
timeout /T 60
echo STARTING steamcmd.exe PROGRAM

set "x=0"

:SymLoop
if defined Mods[%x%] (
	call set list=%list% +"workshop_download_item 440900 %%Mods[%x%]%%" validate
    set /a "x+=1"
    GOTO :SymLoop
)
echo.
steamcmd +login anonymous%list% +quit

echo REMEMBER YOUR MODS ARE ON SUBFOLDERS OF WHERE YOU RUN THIS SCRIPT
echo CHECK THE SUBFOLDERS AT
echo steamapps\workshop\content\440900
timeout /T 300
pause 