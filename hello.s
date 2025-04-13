	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]
	ldr	r0, LCPI0_0
LPC0_0:
	add	r0, pc, r0
	bl	_printf
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r7
	pop	{r7, lr}
	bx	lr
	.p2align	2
@ %bb.1:
	.data_region
LCPI0_0:
	.long	L_.str-(LPC0_0+8)
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Hello World"

.subsections_via_symbols
