.model tiny
.data
x	db	1,2,3,4,5,6,7,8
.code
n:	push	cs
	pop		ds
	mov		bx,0	; смещение(индекс) первого элемента массиваs 
	mov		cx,8	; заносим количество элементов массива
m:	shl		x[bx],2	; увеличиваем элемент массива в 4 раза
	inc		bx
	loop	m		; цикл
	mov		ax,4c00h
	int		21h
end	n
