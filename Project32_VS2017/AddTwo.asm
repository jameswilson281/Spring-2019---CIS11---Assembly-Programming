INCLUDE Irvine32.inc

.data
rows WORD ?
cols WORD ?

.code
main PROC
mov ecx, 100
RandomGen :
call GetMaxXY; size of window
mov rows, ax
mov cols, dx

movzx eax, rows
call RandomRange; random in ax / dx values
mov dh, al

movzx eax, cols ;movzx used for more registers
call RandomRange
mov dl, al

call Gotoxy
mov al, 'A'
call WriteChar

mov eax, 100
call Delay

LOOP RandomGen

exit
main ENDP

END main