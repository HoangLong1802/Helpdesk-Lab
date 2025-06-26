@echo off
set LOG_DIR=C:\Logs
set BACKUP_DIR=C:\LogBackups\%date:~10,4%-%date:~4,2%-%date:~7,2%
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"
for %%F in ("%LOG_DIR%\*.log") do (
    xcopy "%%F" "%BACKUP_DIR%" /Y /I
)
echo Backup completed at %time% >> "%BACKUP_DIR%\backup_log.txt"