 .model	tiny
.code
	st_off	dw	0
	st_seg	dw	0
n:	push	cs
	pop	ds
	mov	ah,35h
	mov	al,09h
	int	21h
	mov	st_seg,es
	mov	st_off,bx
	lea	dx,prog
	mov	ax,2509h
	int	21h
	mov	ah,01h
	int	21h
	mov	ax,2509h
	mov	dx,st_off	;????
	mov	ds,st_seg
	int	21h
	mov	ax,4c00h
	int	21h
prog	proc
	pushf
	call	cs:	dword	ptr	st_off
	push	ax
	push	es
	mov	ax,0b800h
	mov	es,ax
	mov	byte	ptr	es:[0158],'*'
	mov	byte	ptr	es:[0159],4eh
	pop	es
	pop	ax
	iret
prog	endp
end	n	