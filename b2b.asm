.model small
.stack 100h
.data
	n1 dw 53h
	p dw ?
.code
START:  mov ax,@data
		mov ds,ax
		mov ax,n1
		mov ah,00h
		and ax,000fh
    mov bx,ax
    mov ax,n1
    and ax,00f0h
    rol al,04h
    mov cx,000Ah
    mul cx
    mul cx
    mul cx
    mul cx
    add ax,0002h
    mov ah,4ch
    int 21h
END START
END
