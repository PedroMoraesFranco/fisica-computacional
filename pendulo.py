########################################
# Atibaia-SP  17/08/2021
# Pedro Luis Moraes Franco
# DF-UFSCar
########################################
# Programa0
import math
g=9.81 #gravidade em ms^-2
pi=math.acos(-1)
L = float(input('Digite o comprimento do pêndulo em metros'))
T=2*pi*math.sqrt(L/g)
print()
print('A frequência de oscilação é ',T)