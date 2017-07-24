.model small
.stack 100h
.data
	n1 dw 8a5ch
	n2 dw 14h
	n3 dw ?
.code
START:  mov ax,@data
		mov ds,ax
		mov ax,n1
		mov bx,n2
		div bx
		mov n3,ax
		mov ah,4ch
		int 21h
END START
END
