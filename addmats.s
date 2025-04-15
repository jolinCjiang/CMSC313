	.file	"addmats.cpp"
	.text
	.section	.text._ZN15MatrixFunctionsC2Ei,"axG",@progbits,_ZN15MatrixFunctionsC5Ei,comdat
	.align 2
	.weak	_ZN15MatrixFunctionsC2Ei
	.type	_ZN15MatrixFunctionsC2Ei, @function
_ZN15MatrixFunctionsC2Ei:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN15MatrixFunctionsC2Ei, .-_ZN15MatrixFunctionsC2Ei
	.weak	_ZN15MatrixFunctionsC1Ei
	.set	_ZN15MatrixFunctionsC1Ei,_ZN15MatrixFunctionsC2Ei
	.section	.text._ZN15MatrixFunctions12addMatraciesEPiS0_S0_,"axG",@progbits,_ZN15MatrixFunctions12addMatraciesEPiS0_S0_,comdat
	.align 2
	.weak	_ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	.type	_ZN15MatrixFunctions12addMatraciesEPiS0_S0_, @function
_ZN15MatrixFunctions12addMatraciesEPiS0_S0_:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, -8(%ebp)
	jmp	.L3
.L4:
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %ebx
	movl	12(%ebp), %eax
	addl	%ebx, %eax
	addl	%ecx, %edx
	movl	%edx, (%eax)
	addl	$1, -8(%ebp)
.L3:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L4
	nop
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN15MatrixFunctions12addMatraciesEPiS0_S0_, .-_ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$84, %esp # uses 4 extra bytes of stack space
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$1, -52(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$2, -32(%ebp)
	subl	$8, %esp
	pushl	$5
	leal	-76(%ebp), %eax
	pushl	%eax
	call	_ZN15MatrixFunctionsC1Ei
	addl	$16, %esp
	leal	-32(%ebp), %eax
	pushl	%eax
	leal	-52(%ebp), %eax
	pushl	%eax
	leal	-72(%ebp), %eax
	pushl	%eax
	leal	-76(%ebp), %eax
	pushl	%eax
    # calls using "call" instruction
	call	_ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	addl	$16, %esp
	movl	$1, %eax
	movl	-12(%ebp), %edx
	subl	%gs:20, %edx
	je	.L7
	call	__stack_chk_fail_local
.L7:
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB5:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE5:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
