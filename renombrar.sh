#!/bin/bash

cd /home/antonio/repos/pruebaRPALATAM/image

for archivo in *; do
  if [[ "$archivo" == *" "* ]]; then
    nuevo_nombre="${archivo// /_}"
    mv "$archivo" "$nuevo_nombre"
    echo "Archivo renombrado: $archivo -> $nuevo_nombre"
  fi
done