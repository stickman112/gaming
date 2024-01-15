@echo off
setlocal

:: OBS settings directory
set "obsDir=C:\Users\%USERNAME%\AppData\Roaming\obs-studio"

:: Backup directory in OneDrive
set "backupDir=C:\Users\%USERNAME%\OneDrive\YourOneDriveFolderPath\OBS-Backup"

:: Creating backup directory if it doesn't exist
if not exist "%backupDir%" mkdir "%backupDir%"

:: Copying OBS settings to the backup directory
xcopy "%obsDir%" "%backupDir%" /E /H /C /I

echo Backup completed successfully.
pause
endlocal
