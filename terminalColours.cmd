@echo off
@cls
@setlocal
@call :setESC

rem *** styles ***
@set _reset=%ESC%[0m
@set _bold=%ESC%[1m
rem @set _faint=%ESC%[2m
@set _italic=%ESC%[3m
@set _underline=%ESC%[4m
rem @set _slowFlash=%ESC%[5m
rem @set _fastFlash=%ESC%[6m
@set _flash=%ESC%[5m
@set _inverse=%ESC%[7m

@set _fgBlack=%ESC%[30m
@set _fgRed=%ESC%[31m
@set _fgGreen=%ESC%[32m
@set _fgYellow=%ESC%[33m
@set _fgBlue=%ESC%[34m
@set _fgmMgenta=%ESC%[35m
@set _fgCyan=%ESC%[36m
@set _fgWhite=%ESC%[37m

rem *** background colour ***
@set _bgBlack=%ESC%[40m
@set _bgRed=%ESC%[41m
@set _bgGreen=%ESC%[42m
@set _bgYellow=%ESC%[43m
@set _bgBlue=%ESC%[44m
@set _bgMagenta=%ESC%[45m
@set _bgCyan=%ESC%[46m
@set _bgWhite=%ESC%[47m

rem *** strong (bold) foreground colours ***
@set _fgBoldWhite=%ESC%[90m
@set _fgBoldRed=%ESC%[91m
@set _fgBoldGreen=%ESC%[92m
@set _fgBoldYellow=%ESC%[93m
@set _fgBoldBlue=%ESC%[94m
@set _fgBoldMagenta=%ESC%[95m
@set _fgBoldCyan=%ESC%[96m
@set _fgBoldWhite=%ESC%[97m

rem *** strong (bold) backgroujnd colours ***
@set _bgBoldBlack=%ESC%[100m
@set _bgBoldRed=%ESC%[101m
@set _bgBoldGreen=%ESC%[102m
@set _bgBoldYellow=%ESC%[103m
@set _bgBoldBlue=%ESC%[104m
@set _bgBoldMagenta=%ESC%[105m
@set _bgBoldCyan=%ESC%[106m
@set _bgBoldWhite=%ESC%[107m

rem *** examples ***
@echo *** STANDARD EXAMPLES ***
@echo %_fgRed%Red%_reset%
@echo %_fgGreen%Green%_reset%
@echo %_fgBlue%Blue%_reset%
@echo.

rem *** complex examples ***
@echo *** COMPLEX EXAMPLES ***
@echo %_fgBoldRed%%_bgWhite%BOLD RED on NORMAL WHITE background%_reset%
@echo %_italic%%_fgBoldRed%%_bgBlack%ITALIC BOLD RED on BLACK%_reset% followed by an %_inverse%%_fgRed%%_bgWhite%%_flash%INVERSED FLASHING RED/WHITE combination%_reset%
@echo.
@echo.
@echo %_fgYellow%On exit, the screen will be cleared to ensure there is no conflict with the normal workings of this terminal window.%_reset%
@echo %_flash%%_fgRed%Press any key to exit%_reset%
@pause >nul
@cls

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  @set _ESC=%%b
  exit /B 0
)
exit /B 0