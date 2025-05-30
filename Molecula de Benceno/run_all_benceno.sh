#!/bin/bash

# Número de hilos a usar por ORCA
export OMP_NUM_THREADS=4

# Ruta al ejecutable ORCA
ORCA=../orca

# Recorre todos los archivos .inp en orden alfabético
for f in *.inp; do
    echo ">>> Ejecutando $f"
    $ORCA "$f" > "${f%.inp}.out"
    echo ">>> Completado: ${f%.inp}.out"
done

echo ">>> TODOS LOS CÁLCULOS FINALIZADOS <<<"
