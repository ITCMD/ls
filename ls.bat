@echo off
Rem to use this anywhere, put it in your system32 folder.
if "%~1"=="/p" set pause=true & shift
if not "%~1"=="" (
	if not exist "%~1\*" exit /b 1
	pushd "%~1"
	set push=1
)
if "%~2"=="/p" set pause=true
setlocal enabledelayedexpansion
set num=0
for /f "tokens=*" %%A in ('dir /b') do (
	if "!pause!"=="true" set /a num+=1
	set val=0
	if exist "%%~A\*" set val=1&echo [44m%%~A[0m
	if /i "%%~xA"==".bat" set val=1&echo [92m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".exe" set val=1&echo [92m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".cmd" set val=1&echo [92m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".html" set val=1&echo [92m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".hta" set val=1&echo [92m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".ahk" set val=1&echo [92m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".ini" set val=1&echo [96m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".inf" set val=1&echo [96m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".config" set val=1&echo [96m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".json" set val=1&echo [96m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".dll" set val=1&echo [90m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".tmp" set val=1&echo [90m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".temp" set val=1&echo [90m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".txt" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".log" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".doc" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".docx" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".xls" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".rtf" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".odt" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".odt" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".ascii" set val=1&echo [97m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".lnk" set val=1&echo [95m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".png" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".jpg" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".ico" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".heff" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".tiff" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".tif" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".gif" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".raw" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".bmp" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".eps" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if /i "%%~xA"==".webm" set val=1&echo [93m%%~A[90m %%~zA Bytes[0m
	if "!val!"=="0" echo [37m%%~A[90m %%~zA Bytes[0m
	if !num!==25 (
		echo [91m#   Press any key to continue . . .
		pause>nul
		set num=0
	)
)
endlocal
if "%push%"=="1" popd
exit /b 0
