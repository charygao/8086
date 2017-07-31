.model small
.stack 100h
.data
	n1 db 01h
	n2 db 02h
	p db ?
.code
START:  mov ax,@data
		mov ds,ax
		mov al,n1
		mov ah,00h
		mov bl,n2
		rol al,04h
		or al,bl
		mov p,al
		mov ah,4ch
		int 21h
END START
END	
