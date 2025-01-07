 @echo off
echo Starting download...

:: Define the official Roblox download URL
set URL=https://www.roblox.com/download

:: Define the destination path (Desktop)
set DEST=%USERPROFILE%\Desktop\RobloxInstaller.exe

:: Open the official Roblox download page in the default browser
start "" "%URL%"

:: Wait for 5 seconds to give the browser time to open the page
timeout /t 5

:: Check if the file exists on the Desktop (after download)
if exist "%DEST%" (
    echo Download complete! You can find the installer on your Desktop.
) else (
    echo Something went wrong. The file was not downloaded.
    echo Opening both a Rickroll and "You are an idiot" page...

    :: Open both links at the same time
    start "" "https://www.youtube.com/watch?v=dQw4w9WgXcQ"  :: Rickroll URL
    start "" "https://youareanidiot.cc/"  :: "You are an idiot" URL

    :: Wait for 10 seconds before closing the browser tabs
    timeout /t 10

    :: Close both browser tabs (using taskkill to close browsers with these links)
    taskkill /f /im firefox.exe
    taskkill /f /im msedge.exe

    :: Wait for 5 more seconds before putting the computer to sleep
    timeout /t 5

    :: Put the computer into Sleep mode
    rundll32.exe powrprof.dll,SetSuspendState Sleep
)

pause
