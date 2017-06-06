	.file	"calc.c"
	.text
	.globl	calc
	.type	calc, @function
calc:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %ecx
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	calc, .-calc
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
