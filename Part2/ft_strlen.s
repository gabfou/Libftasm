segment .text
	GLOBAL _ft_strlen

_ft_strlen:
	push rdi
	mov rcx, 0

while1:
	cmp byte [rdi + rcx], 0
	jle endwhile
	inc rcx
	jmp while1

endwhile:
	mov rax, rcx
	pop rdi
	ret
