.model tiny
.data
a	dw	10
.code
start:	push 	cs
	pop	ds
	xor	bx,bx
	push	bx
v:	mov	ah,01h
	int	21h
	cmp	al,13
	je	c
	sub	al,30h
	mov	bl,al
	pop	ax
	mul	a
	add	ax,bx
	push	ax
	jmp	v
c:	xor	cx,cx
	pop	ax
	shl	ax,1
n:	cmp	ax,0
	je	j
	xor	dx,dx
	div	a
	add	dx,30h
	push	dx
	inc	cx
	jmp	n
j:	pop	dx
	mov	ah,02h
	int	21h
	loop	j
	mov	ax,4c00h
	int	21h
end	start
