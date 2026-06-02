#!/bin/bash
while true; do
    # Obtenemos la temperatura (solo el número y la C)
    TEMP=$(vcgencmd measure_temp | cut -d "=" -f2)
    # Obtenemos la hora
    HORA=$(date '+%H:%M:%S')

    # Imprimimos ambos
    echo "$TEMP | $HORA"

    # Esperamos 10 segundos
    sleep 1
done
