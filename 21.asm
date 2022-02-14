.model tiny
.code
N:	push cs
	pop ds
	mov ax,x
	mov	bx,y
	or	ax,bx
	mov	z,ax
	mov ax,4c00h
	int 21h
.data
x	dw	10110110b
y	dw	        1001b
z	dw	?
	end N
