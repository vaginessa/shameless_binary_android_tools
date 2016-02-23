@echo off
:: :::::::::::::::::::::::::::::::::::::::::::::::::: ::
::  'HELP Info-File Generator' - use after an update  ::
:: :::::::::::::::::::::::::::::::::::::::::::::::::: ::

::programs that uses STDOUT
call java -jar apktool.jar  --advanced     1>apktool.nfo
call java -jar baksmali.jar --help --help  1>baksmali.nfo
call java -jar smali.jar    --help --help  1>smali.nfo

::programs that uses STDERR
call zipalign.exe                          2>zipalign.nfo
call aapt.exe                              2>aapt.nfo
call adb.exe                               2>adb.nfo