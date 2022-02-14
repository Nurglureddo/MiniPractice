.model tiny
.code
n:	push cs
	pop ds
	mov cx,16		;занесли
	xor dx,dx		;обнулили
	xor bx,bx
l:	cmp b[bx],0		;сравниваем
	jle s			;если меньше или равно 0
	add dl,b[bx]	;текущий элемент массива к dl
s:	inc bx			; увеличиваем на 1
	loop l			; цикл
	mov c,dl		;заносим в сумму
	mov ax,4c00h
	int 21h
.data
b	db	0,-1,2,-3,4,-5,6,-7,8,-9,10,-11,12,-13,14,-15
c	db	?
	end n