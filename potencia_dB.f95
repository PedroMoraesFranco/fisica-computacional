program potencia_dB
implicit none
real::dB,P1,P2
P1=1E-3 !potencia em W
print*, "Este programa calcula a prot�ncia em decib�is da potencia indicada por voc�."
print*, "Obs: Utilizando uma pot�ncia de referencia de 1mW"
print*,
print*, "Insira a pot�ncia a ser medida:"
print*, "Lembre de usar <valor>E<n�mero da pot�ncia da nota��o>"
read*,P2
dB = 10*LOG10(ABS(P2/P1))
print*, "A pot�ncia em decib�is �:", dB
pause
end program
