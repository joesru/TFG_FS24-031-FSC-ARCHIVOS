@echo off
for %%f in (*.inp) do (
    echo Ejecutando %%f
    orca.exe %%f > %%~nf.out
)
pause
