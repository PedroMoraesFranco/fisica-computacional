!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Atibaia-SP  11,/09/2021
! Pedro Lu°s Moraes Franco
! DF-UFSCar
!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program TRABALHO_1 !Inicia o programa
implicit none
real, parameter::G = 6.673E-11 !Define a constante gravitacional como uma constante valor real em [Nm^-2 Kg^-2]
real::v, M, R !Define os valores da velocidade de escape, da massa e o raio do planeta como valores reais
print*, "Programa para calcular a velocidade de escape de um planeta"  !Este print mostra na tela qual o objetivo do programa
print*, !Este print serve para pular uma linha
print*, "Insira a massa do planeta em kg. Obs: use a massa do planeta como x.xE+n" !Este print mostra na tela do usu†rio o que deve ser inserido e como
read*, M  !O read vai pegar a Massa do planeta inserida pelo usuario
print*,  !Este print serve para pular uma linha
print*, 'Insira o raio do planeta em metros. Obs: use a massa do planeta como x.xE+n' !Este print mostra na tela do usuario o que deve ser inserido e como
read*, R !O read vai pegar o raio do planeta inserido pelo usuario
v =  sqrt((2*G*M)/R) !Aqui Ç definida a conta a ser feita
print*, !Este print serve para pular uma linha
print*, 'A velocidade de escape deste planeta Ç', v !Este print nos retorna o resultado na tela
pause !Pause pausa o programa
end program TRABALHO_1  !Finaliza o programa

!Terra:0.000011552489 m/s
!Marte:0.0000043664304 m/s
!OBS: n∆o consegui colocar os resultados em notaá∆o
