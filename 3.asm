.model tiny
.code
start:	push cs
		pop ds
		mov al, a 	; al=a
		cmp al, b 	; Сравнение
		mov c, al 	; c=al
		jg m	  	; Если больше
		mov al, b	; al=b
		mov c, al	; c=al
m: 		mov ax, 4c00h
		int 21h 
.data	
		a db 20
		b db 10
		c db ?
end start
