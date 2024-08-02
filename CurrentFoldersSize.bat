@echo off
setlocal enabledelayedexpansion

(for /d %%i in (*) do (
    echo Directory of %%i
    set lastLine=
    for /f "tokens=*" %%j in ('dir /s /a "%%i" 2^>nul ^| findstr /c:"File(s)"') do (
        set lastLine=%%j
    )
    if defined lastLine (
        echo !lastLine!
    ) else (
        echo No files found
    )
    echo.
))

endlocal

pause
