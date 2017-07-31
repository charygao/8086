.model small
.stack 100h
.data
	n1 db 42h
	p db ?
.code
START:  mov ax,@data
		mov ds,ax
		mov al,n1
		mov ah,00h
		and al,0f0h
		rol al,04h
		mov bl,al
		mov al,n1
		and al,00fh
		mov ah,4ch
		int 21h
END START
END
