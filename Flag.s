! Santiago Fleiderman
! October 20th,2016
! Test if flag 0x10 equal to l0
! Assignment 3

! Santiago Fleiderman
! October 20th,2016
! Test if flag 0x10 equal to l0
! Assignment 3

.section ".text"
.global main
main:
save %sp,-96,%sp
!mov 0x18, %l0 ! These are the same
!btst 0x10,%l0 !Test if a bit/s clear or set
!be clear !Goto
!nop

mov 0x08, %l0 ! Not The Same
btst 0x10,%l0 !Test if a bit/s clear or set
be clear !Goto
nop

set:
sll %l0,2,%l0 ! multiply by 2 ! if l0 =l0 multipy l0 = 48
ba End
nop
clear:
srl %l0,2,%l0 !shift right divide by 2 ! if not equal divide !l0 =4
End:
mov 1, %g1 !Exit
ta 0



