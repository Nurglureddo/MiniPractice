.model tiny
.code
N:	push cs
	pop ds
	mov ax,x
	mov bx,y
	mov cx,z
	add ax,bx
	div cx
	mov z1,cx
	mov ax,4c00h
	int 21h
.data
x dw 4095
y dw 256
z dw 7
z1 dw ?
end N
