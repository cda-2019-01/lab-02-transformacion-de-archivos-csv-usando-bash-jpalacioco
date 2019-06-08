#!/bin/bash
# Laboratorio No 2

archivos=("data1.csv" "data2.csv" "data3.csv")

for archivo in ${archivos[*]}     # Iterador para los archivos
do
  i=1                             # Inicio de contador para cada linea
  while read linea; do            # Lectura de la linea
  
    # reading each line
    linea_actual=($linea)         # Linea como arreglo
    linea_letra=${linea_actual[0]}  # Letra en la linea
    linea_texto=${linea_actual[1]}  # Texto en la linea
      for elemento in $(echo $linea_texto | tr "," "\n") # Similar a hacer el split por ,
      do
       echo $archivo,$i,${linea_letra},$elemento
      done
    if [ "$linea_actual" != "" ]; then # Si la linea esta vacia no aumenta el contador
        i=$((i+1))
    fi
  done < <(grep "" $archivo) # Se usa el grep para que lea todas
                             # las lineas. 
  i=0                        # reiniciar el contador de lineas
done