#include<stdio.h>
#include<conio.h>
void main(){
	int i;
	char s1[10]={'A','B','C','$'};
	char s2[10];
	clrscr();
	asm{
	lea si,s1
	lea di,s2
	mov cx,04H
	}
	up:asm{
		mov ax,[si]
		add ax,20H
		mov [di],ax
		inc si
		inc di
		dec cx
		jnz up
	      }
	printf("Lower case\n");
	for(i=0;i<3;i++)
		printf("%c ",s2[i]);
	getch();
}
