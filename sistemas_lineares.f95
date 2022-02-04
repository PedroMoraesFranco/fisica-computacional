!Sistema linear
!A(1,:)=(/1.,-1.,-1.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0./)
!A(2,:)=(/0.,1.,0.,-1.,-1.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0./)
!A(3,:)=(/0.,0.,1.,0.,0.,-1.,-1.,0.,0.,0.,0.,0.,0.,0.,0./)
!A(4,:)=(/0.,0.,0.,-1.,0.,-1.,0.,1.,0.,0.,0.,0.,0.,0.,0./)
!A(5,:)=(/0.,0.,0.,0.,1.,0.,0.,0.,-1.,0.,0.,0.,0.,0.,0./)
!A(6,:)=(/0.,0.,0.,0.,0.,0.,0.,1.,0.,-1.,-1.,0.,0.,0.,0./)
!A(7,:)=(/0.,0.,0.,0.,0.,0.,1.,0.,0.,0.,0.,-1.,0.,0.,0./)
!A(8,:)=(/0.,0.,0.,0.,0.,0.,0.,0.,-1.,-1.,0.,0.,1.,0.,0./)
!A(9,:)=(/0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,-1.,-1.,0.,1.,0./)
!A(10,:)=(/0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,-1.,-1.,1./)
!A(11,:)=(/0.,2.,0.,0.,2.,0.,0.,0.,2.,0.,0.,0.,2.,0.,0./)
!A(12,:)=(/0.,2.,0.,2.,0.,0.,0.,0.,0.,2.,0.,0.,2.,0.,0./)
!A(13,:)=(/0.,2.,0.,2.,0.,0.,0.,0.,0.,0.,2.,0.,0.,2.,0./)
!A(14,:)=(/0.,0.,2.,0.,0.,0.,2.,0.,0.,0.,0.,2.,0.,2.,0./)
!A(15,:)=(/0.,0.,2.,0.,0.,2.,0.,0.,0.,2.,0.,0.,2.,0.,0./)
!B=(/0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,10.,10.,10.,10.,10./)
program resistencia_equivalente
implicit none
integer, parameter::i=15,j=15
real*16, dimension(i,j)::a
real*16,dimension(i)::x,b
integer::k,l,ddp
real*8::erro,R_eq
print*, "Este programa calcula a resistencia equivalente do circuito apresentado na atividade"
print*,
print*,"Indique a diferen‡a de potencial: "
read*, ddp
print*, "Vamos montar nosso sistema"
print*,
do l=1,i
   do k=1,j
      print*, "Indique o termo da linha ",l," e coluna ", k,":"
      read*,a(l,k)
   end do
   print*, "Por favor indique o termo independente da linha ", l,":"
   read*,b(l)
end do
print*,
call gauss_pivo_parcial(i,j,a,b,x,erro)
print*,
R_eq = ddp/x(1)
print*, "A resistencia equivalente ‚ ",R_eq
pause
end program

subroutine gauss_pivo_parcial(i,j,a,b,x,erro)
implicit none
integer, intent(in)::i,j
real*16,dimension(i,j), intent(inout)::a
real*16,dimension(i), intent(inout)::x,b
real*16,intent(out)::erro
integer::k,l,h,w,n
real*16::troca,m,res
real*16,dimension(i,j)::a_original
real*16,dimension(i)::b_original,AX,erro_m
a_original = a
b_original = b
n = 0
do h=1,j
   do l=h+1,i
      if (abs(a(l,h))>abs(a(h,h))) then
         do k=1,j
            troca=a(h,k)
            a(h,k)=a(l,k)
            a(l,k)=troca
        end do
        troca=b(h)
        b(h)=b(l)
        b(l)=troca
      end if
   end do
   do l=h+1,i
      m=(a(l,h)/a(h,h))
      n=n+1
      a(l,h)=0
      n=n+2
      do w=h+1,j
         a(l,w)=a(l,w)-m*a(h,w)
         n=n+2
      end do
      b(l)=b(l)-m*b(h)
   end do
end do
x=0.
do l=i, 1, -1
   res=b(l)
   do k=1,j
      if (l/=k) then
         res=res-(a(l,k)*x(k))
      end if
   end do
   x(l)=(res/a(l,l))
end do
call mm(i,j,a,x,AX)
erro_m= b - AX
erro=erro_m(1)
do k=2,i
   if (abs(erro_m(k))>erro) then
      erro=abs(erro_m(k))
   end if
end do
print*,
print*,"Matriz escalonada"
print*,
do l=1,i
   print*, a(l,1:j),b(l)
end do
print*, "Conjunto solu‡Æo ",x
print*,
print*, "N£mero de intera‡äes ",n
print*,
print*, "Maior erro",erro
print*,
end subroutine gauss_pivo_parcial

subroutine mm(i,j,a,x,AX)
implicit none
integer,intent(in)::i,j
real*16,dimension(i,j),intent(in)::a
real*16,dimension(i),intent(in)::x
real*16,dimension(i),intent(out)::AX
integer::l,k
AX=0.
do l=1,i
   do k=1,j
      AX(l)=AX(l)+(a(l,k)*x(k))
   end do
end do

end subroutine mm
