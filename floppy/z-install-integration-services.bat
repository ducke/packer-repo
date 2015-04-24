setlocal EnableDelayedExpansion EnableExtensions
title Installing Integration Services. Please wait...

REM @for %%i in (%PACKER_SEARCH_PATHS%) do @if not defined setup @if exist "%%~i\support\x86\setup.exe" set setup=%%~i\support\x86\setup.exe

@for %%i in (d: e: f: g:) do @if not defined setup @if exist "%%~i\support\x86\setup.exe" set setup=%%~i\support\x86\setup.exe

if not defined setup goto nosetup

%setup% /quiet /norestart

goto :exit

:nosetup
echo ==^> ERROR: Could not find Integration Services setup program.

:exit
