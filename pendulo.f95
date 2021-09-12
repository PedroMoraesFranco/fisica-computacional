!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Atibaia-SP  17/08/2021
! Pedro Lu¡s Moraes Franco
! DF-UFSCar
!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program PENDULO

implicit none
!Definindo g como uma constante
real,parameter::g=9.81 ! Gravidade em ms^-2
!Definindo pi como uma constante
real,parameter::pi=acos(-1.)
real::L !Comprimento do pendulo
real::T !Periodo do pendulo
print*, 'Programa para calcular o per¡odo de um pˆndulo com pequenas oscila‡äes'
print*
print*, "Digite o valor do comprimento em metros"
read*,L
T=2*pi*sqrt(L/g)
print*
print*, 'O per¡odo do pˆndulo ‚ ',T
pause
end program PENDULO
