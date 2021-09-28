import math
print('Este programa calcula uma aprioximação do número de euler.')
n = float(input('Insira um número n. Lembre-se que quanto maior o valor de n, melhor será a apriximação do número e.'))
e = (1+1/n)**n
print('O valor aproximado de e é',e)