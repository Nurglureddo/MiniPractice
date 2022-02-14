.model tiny
.code
N:	push cs
	pop ds
	mov ax,4c00h
	int 21h
.data
a	db 12
b	dw 1000
c	dd 1000000000
d	db '306'
end N
