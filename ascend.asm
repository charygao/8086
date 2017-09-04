.model small
.stack 100h

.data
arr1 db 05h,04h,03h,02h,01h

.code
START:
mov ax,@data
mov ds,ax

mov ch,04h
mov bl,00h
up1:
mov cl,04h
lea si,arr1
up:mov al,arr1[si]
inc si
mov dl,arr1[si]
cmp dl,al
jnl next
 xchg al,dl
next: mov arr1[si],dl
dec si
mov arr1[si],al
inc si
dec cl
jnz up
dec ch
jnz up1
mov ah,4ch
int 21h
END START
END
