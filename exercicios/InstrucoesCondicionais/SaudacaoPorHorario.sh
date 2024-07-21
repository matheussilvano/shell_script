#!/bin/bash

# Hora atual para validação
HoraAtual=$(date +"%H")
# Hora e minuto atual
HoraMinutoAtual=$(date +"%H:%M")

if [ "$HoraAtual" -ge 6 -a "$HoraAtual" -lt 12 ]
then
  echo "Bom dia!"
elif [ "$HoraAtual" -ge 12 -a "$HoraAtual" -lt 18 ]
then
  echo "Boa tarde!"
else
  echo "Boa noite!"
fi

    
echo "A hora atual é: $HoraMinutoAtual"
