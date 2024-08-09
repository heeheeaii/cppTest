@echo off
setlocal enabledelayedexpansion

REM set word will replace
set "oldWord=DPCMC"
set "newWord=DPCMC"

REM 遍历当前目录下的所有文件
for /f "delims=" %%a in ('dir /b *%oldWord%*') do (
    set "filename=%%a"
    set "newname=!filename:%oldWord%=%newWord%!"
    if not "!filename!"=="!newname!" (
        echo Renaming "%%a" to "!newname!"
        ren "%%a" "!newname!"
    )
)

endlocal
REM pause

