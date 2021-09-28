import math
P_referencia = 1E-3
print('Este programa calcula a protência em decibéis da potência indicada por você.'
    'A potência de referencia é 1mW'
)
P = float(input('Insira a potência a ser medida '))
dB = 10*math.log10(abs(P/P_referencia))
print('A potência em dB é:', dB)