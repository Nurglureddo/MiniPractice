.model	tiny
.data
strok1	db	'test1$'
strok2	db	10 dup	(0)
strok3	db	'testureddo$'
.code
include	COPY.asm
n:	push	cs
	pop	ds
	copy	strok1, strok2,5
	copy	strok3, strok2,10
	mov	ax,4c00h
	int	21h
end	n
