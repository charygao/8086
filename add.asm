.model small
.stack 100h
.data
n1 dw 1234h
n2 dw 2347h
n3 dw ?
.code
START: mov AX,@data
		mov ds,ax
		mov ax,n1
		mov bx,n2
		mov cx,00h
		add ax,bx
		jnc down
		inc cx
	down:mov n3,ax
		mov n3+2,cx
		mov ah,4ch
		int 21h
END START
END
