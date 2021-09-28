import math
G = 6.673E-11
print('Programa para calcular a velocidade de escape de um planeta')
M = float(input('Insira a massa do planeta:'))
R = float(input('Insira o raio do planeta:'))
v =  math.sqrt((2*G*M)/R)
print()
print('A velocidade de escape é de',v)