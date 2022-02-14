model tiny 
.data
	strok1	db	'test$'
	strok2	db	10 dup (0)
.code
copy	macro	stroka1,stroka2,len
	mov 	ax, seg strok1
	mov	ds,ax
	mov 	ax, seg strok2
	mov	es,ax	
	lea	si,stroka1
	lea	di,stroka2
	mov	cx,len
	rep	movsb
	endm
n:	
	push	cs
	pop	ds
	copy	strok1,strok2,4
	mov	ax,4c00h
	int	21h
end	n

copy	macro	stroka1, stroka2, len
	mov	ax,seg	stroka1
	mov	ds,ax
	mov	ax,seg	stroka2
	mov	es,ax
	lea	si,stroka1
	lea	di,stroka2
	mov	cx,len
	rep	movsb
endm
