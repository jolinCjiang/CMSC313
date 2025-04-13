	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	sub	sp, sp, #8
	mov	r0, #0
	str	r0, [sp, #4]
	str	r0, [sp]
	b	LBB0_1
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #9
	bgt	LBB0_4
	b	LBB0_2
LBB0_2:                                 @   in Loop: Header=BB0_1 Depth=1
	b	LBB0_3
LBB0_3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	ldr	r0, [sp, #4]
	add	sp, sp, #8
	bx	lr
                                        @ -- End function
	.section	__DATA,__data
	.globl	_a                              @ @a
	.p2align	2, 0x0
_a:
	.long	1                               @ 0x1

	.globl	_c                              @ @c
_c:
	.byte	97                              @ 0x61

	.globl	_f                              @ @f
	.p2align	2, 0x0
_f:
	.long	0x3f9e0610                      @ float 1.23456001

	.globl	_string                         @ @string
_string:
	.asciz	"the bear at the grub"

.subsections_via_symbols
