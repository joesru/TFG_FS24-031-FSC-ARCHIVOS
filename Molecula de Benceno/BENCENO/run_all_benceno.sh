#!/bin/bash

# Número de núcleos a usar
export OMP_NUM_THREADS=4

# Ruta al ejecutable ORCA
ORCA=../orca

# Recorre todos los archivos .inp en el directorio
for f in *.inp; do
    echo ">>> Ejecutando $f"
    $ORCA "$f" > "${f%.inp}.out"
    echo ">>> Finalizado: ${f%.inp}.out"
done

echo ">>> TODOS LOS CÁLCULOS TERMINADOS <<<"
