data	segment
	A	db	'GGgf fyfgggggg'
	B	db	20 dup (' ')
data	ends
code	segment
	assume	cs:code,ds:data,es:data
N:	mov	ax,data
	mov	ds,ax
	mov	al,' '
	push	ds
	pop	es
	lea	di,A
	mov	cx,13
repne	scas	es:A
	mov	ax,cx
	mov	cx,13
	sub	cx,ax
	dec	cx
	lea	si,A
	lea	di,B
rep	movs	B,A
	mov	ax,4c00h
	int	21h
code 	ends
end	N 
