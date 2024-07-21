#!/bin/bash

################################################################################################
##                                                                                            ## 
## exercicio2.sh                                                                              ##
##                                                                                            ## 
## Autor: Matheus Silvano (matheussilvano2005@gmail.com)                                      ##
## Data Criação: 14/07/2024                                                                   ##
##                                                                                            ##
## Descrição: Crie um script que gere um relatório de algumas informações da máquina atual:   ##
## • Nome da Máquina                                                                          ##
## • Data e Hora Atual                                                                        ##
## • Desde quando a máquina está ativa                                                        ##
## • Versão do Kernel                                                                         ##
## • Quantidade de CPUs/Cores                                                                 ##
## • Modelo da CPU                                                                            ##
## • Total de Memória RAM Disponível                                                          ##
## • Partições                                                                                ##
##                                                                                            ##
## Exemplo de uso: ./exercicio2.sh                                                            ##
##                                                                                            ## 
################################################################################################

# Variaveis
NomeMaquina=$(uname -n)
DataHoraAtual=$(date)
HoraMaquinaAtiva=$(uptime -s)
VersaoKernel=$(uname -r)
QuantidadeCpus=$(grep 'cpu cores' /proc/cpuinfo | awk -F': ' '{print $2}' | uniq)
ModeloCpu=$(grep 'model name' /proc/cpuinfo | awk -F': ' '{print $2}' | uniq)
RamDisponivel=$(grep 'MemTotal' /proc/meminfo | awk '{print $2}')
Particoes=$(df -h)

# ERelatorio
echo "========================================="
echo "Relatorio da Maquina: $NomeMaquina"
echo "Data/Hora: $DataHoraAtual"
echo "========================================="
echo ""
echo "Maquina ativa desde: $HoraMaquinaAtiva"
echo ""
echo "Versao do Kernel: $VersaoKernel"
echo ""
echo "CPUs:"
echo "Quantidade de CPUs/Core: $QuantidadeCpus"
echo "Modelo da CPU: $ModeloCpu"
echo ""
echo "Memoria total: $RamDisponivel"
echo ""
echo "Particoes:"
echo "$Particoes"





