.model small
.stack 100h
.data
	n1 dw 5555h
	n2 dw 2222h
	n3 dw ?
.code
START:  mov ax,@data
		mov ds,ax
		mov ax,n1
		mov bx,n2
		mul bx
		mov n3,ax
		mov ah,4ch
		int 21h
END START
END
