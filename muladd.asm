.model small
.stack 100h

.data

n1 dw 0043h
n2 dw 0010h
n3 dw ?

.code
START:
mov ax,@data
mov ds,ax

mov cx,n2
dec cx
mov ax,n1
mov bx,n1

a:
add ax,bx
loop a

mov n3,ax
mov ah,4ch
int 21h

END START
END
