:: Admin 911 Group
:: author: Earl John Abaquita
:: Description:
::      simple batch file to bypass valorant skip verifying files process on client
::  
:: How to use server-side:
:: for every valorant update, run script
::
:: How to use client-side:
:: include created batch file in game menu, execute ahead

:: ----------------------- VARIABLES START ------------------------------------
@echo off
set VALORANT_PROGRAMDATA="C:\ProgramData\Riot Games"

:: modify this folder where you want the files to be saved on your gamedisk.
@echo off
set GAMEDISK_FOLDER="D:\Valorant_Files\ProgramData\"

:: modify the name of the batch file
@echo off
set CLIENT_BATCHFILENAME="client_transfer.bat"

:: ------------------------ VARIABLES END -------------------------------------
:: initial setup
:: will run only when no variable VALORANT_PROGRAMDATA is found on ENV Variables
:: create a folder on gamedisk
mkdir %GAMEDISK_FOLDER%

::Copy files from ProgramData to Gamedisk valorant
xcopy %VALORANT_PROGRAMDATA%\* %GAMEDISK_FOLDER% /e /y

:: Create a new batchfile to
set FILE_PATH="%GAMEDISK_FOLDER%\..\%CLIENT_BATCHFILENAME%"
echo set VALORANT_PROGRAMDATA=%VALORANT_PROGRAMDATA% > "%FILE_PATH%"
echo set GAMEDISK_FOLDER=%GAMEDISK_FOLDER%>> "%FILE_PATH%"
echo xcopy %%GAMEDISK_FOLDER%%* %%VALORANT_PROGRAMDATA%% /e /y >> "%FILE_PATH%"
