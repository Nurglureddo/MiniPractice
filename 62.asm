 .model tiny
.code
	st_off	dw	0
	st_seg	dw	0
n:	push 	cs
	pop	ds
	mov	ah,35h
	mov	al,9h
	int	21h
	mov	st_seg,es
	mov	st_off,bx
	lea	dx,prog
	mov	ax,2509h
	int	21h
	mov	ah,01h
	int	21h
	mov	ax,2509h
	mov	dx,st_off
	mov	ds,st_seg
	int	21h
	mov	ax,4c00h
	int	21h
prog	proc
	push	ax
	push 	es
	mov	ax,0b800h
	mov	es,ax
	mov	byte	ptr	es:[0000],'5'
	mov	byte	ptr	es:[0001],4eh
	pop	es
	pop	ax
	jmp	cs:	dword	ptr	st_off
prog	endp
	end	n
