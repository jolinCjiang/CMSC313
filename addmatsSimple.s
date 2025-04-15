	.file	"addmatsSimple.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$80, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	%gs:20, %eax
	movl	%eax, 76(%esp)
	xorl	%eax, %eax
    # initialize matrix 1 and matrix 2
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movl	$0, 44(%esp)
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
	movl	$1, 36(%esp)
	movl	$0, 56(%esp)
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	movl	$0, 68(%esp)
	movl	$0, 72(%esp)
	movl	$2, 56(%esp)
	movl	$0, 12(%esp)
    # call funcs.adMatracies
	jmp	.L2
.L3: # inside of the loop
	movl	12(%esp), %eax
	movl	36(%esp,%eax,4), %edx
	movl	12(%esp), %eax
	movl	56(%esp,%eax,4), %eax
	addl	%eax, %edx
	movl	12(%esp), %eax
	movl	%edx, 16(%esp,%eax,4)
	addl	$1, 12(%esp)
.L2: # loop guard
	cmpl	$4, 12(%esp)
	jle	.L3
	movl	$1, %eax
	movl	76(%esp), %edx
	subl	%gs:20, %edx
	je	.L5
	call	__stack_chk_fail_local
.L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB1:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE1:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
