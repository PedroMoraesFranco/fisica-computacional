program aproximacao_e
implicit none
real::euler,n,n1
print*, 'Este programa calcula um valor aproximado do n�mero e com base em um n�mero n'
print*, 'Obs: quanto maior for o n�mero n, melhor ser� a aproxima��o'
print*,'Indique um n�mero n para utilizarmos na f�rmula de aproxima��o do n�mero de Euler'
print*,"Lembre de usar <valor>E<n�mero da pot�ncia da nota��o>"
read*,n
n1 = ABS(n)
euler = (1+1/n1)**n1
print*, "seu valor aproximado de e usando", n
print*, "�", euler
pause
end program
