program potencia_dB
implicit none
real::dB,P1,P2
P1=1E-3 !potencia em W
print*, "Este programa calcula a protˆncia em decib‚is da potencia indicada por vocˆ."
print*, "Obs: Utilizando uma potˆncia de referencia de 1mW"
print*,
print*, "Insira a potˆncia a ser medida:"
print*, "Lembre de usar <valor>E<n£mero da potˆncia da nota‡Æo>"
read*,P2
dB = 10*LOG10(ABS(P2/P1))
print*, "A potˆncia em decib‚is ‚:", dB
pause
end program
