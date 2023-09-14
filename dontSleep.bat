@if (@CodeSection == @Batch) @then
@echo off
set sendKey=CScript //nologo //E:JScript "%~F0"

:LOOP
REM Envía la tecla F14 para evitar el bloqueo de pantalla
%sendKey% {F14}

REM Espera 290 segundos antes de volver a enviar la tecla
timeout 290 > nul

REM Comprueba si ocurrió un error durante el envío de tecla
IF ERRORLEVEL 1 (
    @echo on
    echo Error al enviar la tecla. Saliendo.
    exit /b 1
)

goto LOOP
@end

var WshShell = WScript.CreateObject("WScript.Shell");
try {
    // Obtiene el argumento que contiene la tecla a enviar y envía la tecla especificada
    WshShell.SendKeys(WScript.Arguments(0));
} catch (e) {
    WScript.Echo("Error: " + e.message);
    WScript.Quit(1);
}
