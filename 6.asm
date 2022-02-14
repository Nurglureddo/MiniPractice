 .model	tiny
.code
	st_off	dw	0
	st_seg	dw	0
n:	push 	cs
	pop	ds
int	5h
	mov	ah,35h
	mov	al,5
	int	21h
	mov	st_seg,es
	mov	st_off,bx
	lea	dx,prog
	mov	ax,2505h
	int	21h
	int	5h
	mov	ax,2505h
	mov	dx,st_off
	mov	ds,st_seg
	int	21h
	int	5h
	mov	ax,4c00h
	int	21h
prog	proc	
	push	ax
	push	dx
	mov	ah,09h
	lea	dx,string
	int	21h
	pop	dx
	pop	ax
	iret
prog	endp
.data
	string	db	'Etot obrabotchik napisal Alfred$'
	end	n
