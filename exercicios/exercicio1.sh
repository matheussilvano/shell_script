###########################################################################
#                                                                                    
# exercicio1.sh                                                                     
#                                                                                    
# Autor: Matheus Silvano (matheussilvano2005@gmail.com)                              
# Data Criação: 14/07/2024                                                           
#                                                                                    
# Descrição: Crie um Script que após executado solicite dois valores como entrada,   
# esses valores devem ser somados e o resultado exibido para o usuário.              
#                                                                                    
# Exemplo de uso: ./exercicio1.sh                                                     
#                                                                                    
######################################################################################

echo ====== Somador de números ======

echo -n Insira o primeiro valor:
read VALOR1

echo -n Insira o segundo valor:
read VALOR2

SOMA= $VALOR1 + $VALOR2
echo O valor da soma é: $SOMA
