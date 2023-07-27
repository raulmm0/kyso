@if (@CodeSection == @Batch) @then
@echo off
set sendKey=CScript //nologo //E:JScript "%~F0"
:a
%sendKey% {F15}
timeout 290 > nul
goto a
@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));