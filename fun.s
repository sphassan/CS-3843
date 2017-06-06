	.file	"fun.c"
	.text
	.globl	fun
	.type	fun, @function
fun:
.LFB24:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	je	.L4
	movl	$0, %eax
.L3:
	xorl	%edx, %eax
	movl	%edx, %ecx
	shrl	%ecx
	movl	%ecx, %edx
	testl	%ecx, %ecx
	jne	.L3
	jmp	.L2
.L4:
	movl	$0, %eax
.L2:
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	fun, .-fun
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	movl	$8, (%esp)
	call	fun
	movl	%eax, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
