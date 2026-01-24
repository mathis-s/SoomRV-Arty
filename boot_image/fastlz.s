	.file	"fastlz.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	flz_readu32, @function
flz_readu32:
.LFB11:
	.cfi_startproc
	lbu	a5,3(a0)
	slli	a5,a5,24
	lbu	a4,2(a0)
	slli	a4,a4,16
	or	a5,a5,a4
	lbu	a4,0(a0)
	or	a5,a5,a4
	lbu	a0,1(a0)
	slli	a0,a0,8
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE11:
	.size	flz_readu32, .-flz_readu32
	.align	1
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	andi	a5,a1,3
	beq	a5,zero,.L24
	beq	a2,zero,.L4
	mv	a5,a0
.L5:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
	addi	a2,a2,-1
	andi	a4,a1,3
	beq	a4,zero,.L3
	bne	a2,zero,.L5
	andi	a4,a5,3
	beq	a4,zero,.L35
.L7:
	li	a3,31
	bleu	a2,a3,.L14
	li	a3,2
	beq	a4,a3,.L15
	li	a3,3
	beq	a4,a3,.L16
	lw	a4,0(a1)
	lbu	a3,0(a1)
	sb	a3,0(a5)
	lbu	a3,1(a1)
	sb	a3,1(a5)
	addi	t4,a1,3
	addi	t3,a5,3
	lbu	a3,2(a1)
	sb	a3,2(a5)
	addi	a3,a2,-20
	srli	t1,a3,4
	andi	a7,a3,-16
	addi	a7,a7,19
	add	a7,a5,a7
	mv	a1,t4
	mv	a5,t3
.L17:
	lw	a3,1(a1)
	srli	a4,a4,24
	slli	a6,a3,8
	or	a4,a4,a6
	sw	a4,0(a5)
	lw	a4,5(a1)
	srli	a3,a3,24
	slli	a6,a4,8
	or	a3,a3,a6
	sw	a3,4(a5)
	lw	a3,9(a1)
	srli	a4,a4,24
	slli	a6,a3,8
	or	a4,a4,a6
	sw	a4,8(a5)
	lw	a4,13(a1)
	srli	a3,a3,24
	slli	a6,a4,8
	or	a3,a3,a6
	sw	a3,12(a5)
	addi	a1,a1,16
	addi	a5,a5,16
	bne	a5,a7,.L17
	addi	a5,t1,1
	slli	a5,a5,4
	add	a1,t4,a5
	add	a5,t3,a5
	addi	a2,a2,-19
	slli	t1,t1,4
	sub	a2,a2,t1
.L14:
	andi	a4,a2,16
	beq	a4,zero,.L20
	lbu	a4,0(a1)
	sb	a4,0(a5)
	lbu	a4,1(a1)
	sb	a4,1(a5)
	lbu	a4,2(a1)
	sb	a4,2(a5)
	lbu	a4,3(a1)
	sb	a4,3(a5)
	lbu	a4,4(a1)
	sb	a4,4(a5)
	lbu	a4,5(a1)
	sb	a4,5(a5)
	lbu	a4,6(a1)
	sb	a4,6(a5)
	lbu	a4,7(a1)
	sb	a4,7(a5)
	lbu	a4,8(a1)
	sb	a4,8(a5)
	lbu	a4,9(a1)
	sb	a4,9(a5)
	lbu	a4,10(a1)
	sb	a4,10(a5)
	lbu	a4,11(a1)
	sb	a4,11(a5)
	lbu	a4,12(a1)
	sb	a4,12(a5)
	lbu	a4,13(a1)
	sb	a4,13(a5)
	lbu	a4,14(a1)
	sb	a4,14(a5)
	lbu	a4,15(a1)
	sb	a4,15(a5)
	addi	a1,a1,16
	addi	a5,a5,16
.L20:
	andi	a4,a2,8
	beq	a4,zero,.L21
	lbu	a4,0(a1)
	sb	a4,0(a5)
	lbu	a4,1(a1)
	sb	a4,1(a5)
	lbu	a4,2(a1)
	sb	a4,2(a5)
	lbu	a4,3(a1)
	sb	a4,3(a5)
	lbu	a4,4(a1)
	sb	a4,4(a5)
	lbu	a4,5(a1)
	sb	a4,5(a5)
	lbu	a4,6(a1)
	sb	a4,6(a5)
	lbu	a4,7(a1)
	sb	a4,7(a5)
	addi	a1,a1,8
	addi	a5,a5,8
.L21:
	andi	a4,a2,4
	beq	a4,zero,.L22
	lbu	a4,0(a1)
	sb	a4,0(a5)
	lbu	a4,1(a1)
	sb	a4,1(a5)
	lbu	a4,2(a1)
	sb	a4,2(a5)
	lbu	a4,3(a1)
	sb	a4,3(a5)
	addi	a1,a1,4
	addi	a5,a5,4
.L22:
	andi	a4,a2,2
	beq	a4,zero,.L23
	lbu	a4,0(a1)
	sb	a4,0(a5)
	lbu	a4,1(a1)
	sb	a4,1(a5)
	addi	a1,a1,2
	addi	a5,a5,2
.L23:
	andi	a2,a2,1
	beq	a2,zero,.L28
	lbu	a4,0(a1)
	sb	a4,0(a5)
	ret
.L24:
	mv	a5,a0
.L3:
	andi	a4,a5,3
	bne	a4,zero,.L7
	li	a4,15
	bleu	a2,a4,.L25
	addi	a7,a2,-16
	andi	a7,a7,-16
	addi	a7,a7,16
	add	a6,a5,a7
	mv	a4,a1
.L9:
	lw	a3,0(a4)
	sw	a3,0(a5)
	lw	a3,4(a4)
	sw	a3,4(a5)
	lw	a3,8(a4)
	sw	a3,8(a5)
	lw	a3,12(a4)
	sw	a3,12(a5)
	addi	a4,a4,16
	addi	a5,a5,16
	bne	a5,a6,.L9
	add	a1,a1,a7
	andi	a4,a2,15
.L8:
	andi	a5,a4,8
	beq	a5,zero,.L10
	lw	a5,0(a1)
	sw	a5,0(a6)
	lw	a5,4(a1)
	sw	a5,4(a6)
	addi	a6,a6,8
	addi	a1,a1,8
.L10:
	andi	a5,a4,4
	beq	a5,zero,.L11
	lw	a5,0(a1)
	sw	a5,0(a6)
	addi	a6,a6,4
	addi	a1,a1,4
.L11:
	andi	a5,a4,2
	beq	a5,zero,.L12
	lbu	a5,0(a1)
	sb	a5,0(a6)
	lbu	a5,1(a1)
	sb	a5,1(a6)
	addi	a1,a1,2
	addi	a6,a6,2
.L12:
	andi	a4,a4,1
	beq	a4,zero,.L28
	lbu	a5,0(a1)
	sb	a5,0(a6)
	ret
.L25:
	mv	a6,a5
	mv	a4,a2
	j	.L8
.L35:
	mv	a6,a5
	j	.L8
.L15:
	lw	a4,0(a1)
	lbu	a3,0(a1)
	sb	a3,0(a5)
	addi	t4,a1,2
	addi	t3,a5,2
	lbu	a3,1(a1)
	sb	a3,1(a5)
	addi	a3,a2,-20
	srli	t1,a3,4
	andi	a7,a3,-16
	addi	a7,a7,18
	add	a7,a5,a7
	mv	a1,t4
	mv	a5,t3
.L18:
	lw	a3,2(a1)
	srli	a4,a4,16
	slli	a6,a3,16
	or	a4,a4,a6
	sw	a4,0(a5)
	lw	a4,6(a1)
	srli	a3,a3,16
	slli	a6,a4,16
	or	a3,a3,a6
	sw	a3,4(a5)
	lw	a3,10(a1)
	srli	a4,a4,16
	slli	a6,a3,16
	or	a4,a4,a6
	sw	a4,8(a5)
	lw	a4,14(a1)
	srli	a3,a3,16
	slli	a6,a4,16
	or	a3,a3,a6
	sw	a3,12(a5)
	addi	a1,a1,16
	addi	a5,a5,16
	bne	a5,a7,.L18
	addi	a5,t1,1
	slli	a5,a5,4
	add	a1,t4,a5
	add	a5,t3,a5
	addi	a2,a2,-18
	slli	t1,t1,4
	sub	a2,a2,t1
	j	.L14
.L16:
	lw	a4,0(a1)
	addi	t4,a1,1
	addi	t3,a5,1
	lbu	a3,0(a1)
	sb	a3,0(a5)
	addi	a3,a2,-20
	srli	t1,a3,4
	andi	a7,a3,-16
	addi	a7,a7,17
	add	a7,a5,a7
	mv	a1,t4
	mv	a5,t3
.L19:
	lw	a3,3(a1)
	srli	a4,a4,8
	slli	a6,a3,24
	or	a4,a4,a6
	sw	a4,0(a5)
	lw	a4,7(a1)
	srli	a3,a3,8
	slli	a6,a4,24
	or	a3,a3,a6
	sw	a3,4(a5)
	lw	a3,11(a1)
	srli	a4,a4,8
	slli	a6,a3,24
	or	a4,a4,a6
	sw	a4,8(a5)
	lw	a4,15(a1)
	srli	a3,a3,8
	slli	a6,a4,24
	or	a3,a3,a6
	sw	a3,12(a5)
	addi	a1,a1,16
	addi	a5,a5,16
	bne	a5,a7,.L19
	addi	a5,t1,1
	slli	a5,a5,4
	add	a1,t4,a5
	add	a5,t3,a5
	addi	a2,a2,-17
	slli	t1,t1,4
	sub	a2,a2,t1
	j	.L14
.L4:
	andi	a4,a0,3
	mv	a5,a0
	bne	a4,zero,.L14
	mv	a6,a0
	j	.L10
.L28:
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	1
	.type	flz_literals, @function
flz_literals:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	s6,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	mv	s4,a0
	mv	s0,a1
	mv	s6,a2
	li	a5,31
	bleu	a0,a5,.L40
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	addi	s1,a2,1
	addi	s5,a0,-32
	srli	s5,s5,5
	addi	s5,s5,1
	slli	s2,s5,5
	add	s2,a1,s2
	li	s3,31
.L38:
	sb	s3,-1(s1)
	li	a2,32
	mv	a1,s0
	mv	a0,s1
	call	memcpy
	addi	s0,s0,32
	addi	s1,s1,33
	bne	s0,s2,.L38
	slli	a5,s5,5
	add	a5,a5,s5
	add	a0,s6,a5
	andi	s4,s4,31
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s5,4(sp)
	.cfi_restore 21
.L37:
	bne	s4,zero,.L43
.L36:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L40:
	.cfi_restore_state
	mv	a0,a2
	mv	s2,a1
	j	.L37
.L43:
	addi	s0,a0,1
	addi	a5,s4,-1
	sb	a5,0(a0)
	mv	a2,s4
	mv	a1,s2
	mv	a0,s0
	call	memcpy
	add	a0,s0,s4
	j	.L36
	.cfi_endproc
.LFE16:
	.size	flz_literals, .-flz_literals
	.align	1
	.globl	memset
	.type	memset, @function
memset:
.LFB7:
	.cfi_startproc
	beq	a2,zero,.L45
	andi	a5,a1,0xff
	sb	a5,0(a0)
	add	a4,a0,a2
	sb	a5,-1(a4)
	li	a4,2
	bleu	a2,a4,.L45
	sb	a5,1(a0)
	sb	a5,2(a0)
	add	a4,a0,a2
	sb	a5,-2(a4)
	sb	a5,-3(a4)
	li	a4,6
	bleu	a2,a4,.L45
	sb	a5,3(a0)
	add	a4,a0,a2
	sb	a5,-4(a4)
	li	a5,8
	bleu	a2,a5,.L45
	neg	a5,a0
	andi	a5,a5,3
	add	a4,a0,a5
	sub	a2,a2,a5
	andi	a2,a2,-4
	andi	a1,a1,255
	slli	a3,a1,8
	add	a3,a3,a1
	slli	a5,a3,16
	add	a3,a3,a5
	sw	a3,0(a4)
	add	a5,a4,a2
	sw	a3,-4(a5)
	li	a5,8
	bleu	a2,a5,.L45
	sw	a3,4(a4)
	sw	a3,8(a4)
	add	a5,a4,a2
	sw	a3,-12(a5)
	sw	a3,-8(a5)
	li	a5,24
	bleu	a2,a5,.L45
	sw	a3,12(a4)
	sw	a3,16(a4)
	sw	a3,20(a4)
	sw	a3,24(a4)
	add	a5,a4,a2
	sw	a3,-28(a5)
	sw	a3,-24(a5)
	sw	a3,-20(a5)
	sw	a3,-16(a5)
	andi	a5,a4,4
	addi	a5,a5,24
	add	a4,a4,a5
	sub	a2,a2,a5
	li	a5,31
	bleu	a2,a5,.L45
	addi	a2,a2,-32
	andi	a5,a2,-32
	addi	a5,a5,32
	add	a5,a4,a5
.L46:
	sw	a3,0(a4)
	sw	a3,4(a4)
	sw	a3,8(a4)
	sw	a3,12(a4)
	sw	a3,16(a4)
	sw	a3,20(a4)
	sw	a3,24(a4)
	sw	a3,28(a4)
	addi	a4,a4,32
	bne	a4,a5,.L46
.L45:
	ret
	.cfi_endproc
.LFE7:
	.size	memset, .-memset
	.align	1
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB8:
	.cfi_startproc
	beq	a0,a1,.L68
	add	a5,a1,a2
	bgeu	a0,a5,.L50
	add	a5,a0,a2
	bleu	a5,a1,.L50
	bgeu	a0,a1,.L52
	xor	a5,a1,a0
	andi	a5,a5,3
	beq	a5,zero,.L53
	mv	a5,a0
.L58:
	add	a3,a5,a2
	beq	a2,zero,.L86
.L60:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
	bne	a3,a5,.L60
	ret
.L50:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	memcpy
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L72:
	mv	a5,a4
	mv	a2,a3
	j	.L58
.L86:
	ret
.L53:
	andi	a5,a0,3
	beq	a5,zero,.L69
	addi	a3,a2,-1
	beq	a2,zero,.L84
	mv	a4,a0
	li	a2,-1
.L56:
	addi	a1,a1,1
	addi	a4,a4,1
	lbu	a5,-1(a1)
	sb	a5,-1(a4)
	andi	a5,a4,3
	beq	a5,zero,.L55
	addi	a3,a3,-1
	bne	a3,a2,.L56
.L84:
	ret
.L69:
	mv	a4,a0
	mv	a3,a2
.L55:
	li	a5,3
	bleu	a3,a5,.L72
	addi	a7,a3,-4
	andi	a7,a7,-4
	addi	a7,a7,4
	add	a5,a4,a7
	mv	a2,a1
.L59:
	lw	a6,0(a2)
	sw	a6,0(a4)
	addi	a4,a4,4
	addi	a2,a2,4
	bne	a5,a4,.L59
	andi	a2,a3,3
	add	a1,a1,a7
	j	.L58
.L52:
	xor	a4,a1,a0
	andi	a4,a4,3
	beq	a4,zero,.L61
.L66:
	beq	a2,zero,.L87
.L62:
	addi	a2,a2,-1
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
	bne	a2,zero,.L62
	ret
.L76:
	mv	a2,a5
	j	.L66
.L87:
	ret
.L61:
	andi	a5,a5,3
	beq	a5,zero,.L73
	addi	a5,a2,-1
	beq	a2,zero,.L84
	add	a4,a0,a5
	li	a2,-1
.L64:
	add	a3,a1,a5
	lbu	a3,0(a3)
	sb	a3,0(a4)
	andi	a3,a4,3
	beq	a3,zero,.L63
	addi	a5,a5,-1
	addi	a4,a4,-1
	bne	a5,a2,.L64
	ret
.L73:
	mv	a5,a2
.L63:
	li	a4,3
	bleu	a5,a4,.L76
	mv	a4,a5
	li	a6,3
.L67:
	addi	a4,a4,-4
	add	a3,a1,a4
	lw	a2,0(a3)
	add	a3,a0,a4
	sw	a2,0(a3)
	bgtu	a4,a6,.L67
	andi	a2,a5,3
	j	.L66
.L68:
	mv	a0,a1
	ret
	.cfi_endproc
.LFE8:
	.size	memmove, .-memmove
	.align	1
	.type	fastlz_memmove, @function
fastlz_memmove:
.LFB9:
	.cfi_startproc
	li	a5,4
	bleu	a2,a5,.L89
	add	a5,a1,a2
	bgeu	a0,a5,.L101
.L90:
	add	a2,a0,a2
.L95:
	addi	a1,a1,1
	addi	a0,a0,1
	lbu	a5,-1(a1)
	sb	a5,-1(a0)
	bne	a0,a2,.L95
	ret
.L101:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	memmove
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L89:
	li	a5,1
	beq	a2,a5,.L92
	bleu	a2,a5,.L98
	li	a5,2
	beq	a2,a5,.L93
	li	a5,3
	bne	a2,a5,.L90
	lbu	a5,0(a1)
	sb	a5,0(a0)
	addi	a1,a1,1
	addi	a0,a0,1
.L93:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	addi	a1,a1,1
	addi	a0,a0,1
.L92:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	ret
.L98:
	ret
	.cfi_endproc
.LFE9:
	.size	fastlz_memmove, .-fastlz_memmove
	.align	1
	.globl	fastlz1_compress
	.type	fastlz1_compress, @function
fastlz1_compress:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	li	t0,-32768
	add	sp,sp,t0
	.cfi_def_cfa_offset 32848
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s5,a0
	sw	a1,12(sp)
	sw	a2,8(sp)
	addi	s8,a1,-4
	add	s8,a0,s8
	addi	s7,a1,-13
	add	s7,a0,s7
	li	a5,-32768
	li	a4,32768
	add	a4,a4,a5
	addi	a5,sp,16
	add	a5,a4,a5
	li	a4,32768
	addi	a3,sp,16
	add	a4,a4,a3
.L103:
	sw	zero,0(a5)
	addi	a5,a5,4
	bne	a5,a4,.L103
	addi	s0,s5,2
	bleu	s7,s0,.L119
	mv	s11,s5
	lw	a5,8(sp)
	sw	a5,4(sp)
	li	s6,16777216
	addi	s6,s6,-1
	li	s4,-1640529920
	addi	s4,s4,-1607
	li	s10,8192
	addi	s9,s10,-1
	li	a5,-32768
	li	a4,32768
	add	a4,a4,a5
	addi	a5,sp,16
	add	a5,a4,a5
	sw	a5,0(sp)
	j	.L107
.L120:
	lw	a0,4(sp)
	j	.L108
.L128:
	srli	a3,s3,8
	addi	a3,a3,-32
	andi	a3,a3,0xff
	li	a1,-3
	li	a2,262
.L113:
	sb	a3,0(a0)
	sb	a1,1(a0)
	addi	a0,a0,3
	sb	s3,-1(a0)
	addi	a5,a5,-262
	bgtu	a5,a2,.L113
	j	.L112
.L114:
	srli	a3,s3,8
	addi	a3,a3,-32
	sb	a3,0(a0)
	addi	a5,a5,-7
	sb	a5,1(a0)
	addi	a5,a0,3
	sw	a5,4(sp)
	sb	s3,2(a0)
	j	.L115
.L129:
	mv	s11,s0
.L104:
	lw	a5,12(sp)
	add	a0,s5,a5
	lw	a2,4(sp)
	mv	a1,s11
	sub	a0,a0,s11
	call	flz_literals
	lw	a5,8(sp)
	sub	a0,a0,a5
	li	t0,32768
	add	sp,sp,t0
	.cfi_remember_state
	.cfi_def_cfa_offset 80
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L119:
	.cfi_restore_state
	mv	s11,s5
	lw	a5,8(sp)
	sw	a5,4(sp)
	j	.L104
.L105:
	bgeu	s0,s7,.L104
	addi	a5,s0,1
.L117:
	mv	s0,a5
.L107:
	mv	a0,s0
	call	flz_readu32
	and	s1,a0,s6
	mul	a5,s1,s4
	mulhu	a4,s1,s4
	slli	a4,a4,13
	srli	a5,a5,19
	or	a5,a4,a5
	and	a5,a5,s9
	zext.h	a5,a5
	lw	a4,0(sp)
	sh2add	a5,a5,a4
	lw	s2,0(a5)
	add	s2,s5,s2
	sub	a4,s0,s5
	sw	a4,0(a5)
	sub	s3,s0,s2
	bgeu	s3,s10,.L105
	mv	a0,s2
	call	flz_readu32
	and	a0,a0,s6
	bgeu	s0,s7,.L104
	addi	a5,s0,1
	bne	s1,a0,.L117
	bleu	s7,a5,.L104
	bgeu	s11,s0,.L120
	lw	a2,4(sp)
	mv	a1,s11
	sub	a0,s0,s11
	call	flz_literals
.L108:
	addi	s2,s2,3
	addi	a5,s0,3
	mv	a4,s2
.L109:
	bleu	s8,a5,.L110
	addi	a4,a4,1
	addi	a5,a5,1
	lbu	a2,-1(a4)
	lbu	a3,-1(a5)
	beq	a2,a3,.L109
.L110:
	sub	a4,a4,s2
	addi	s3,s3,-1
	li	a3,262
	mv	a5,a4
	bgtu	a4,a3,.L128
.L112:
	li	a3,6
	bgtu	a5,a3,.L114
	slli	a5,a5,5
	srli	a3,s3,8
	add	a5,a5,a3
	sb	a5,0(a0)
	addi	a5,a0,2
	sw	a5,4(sp)
	sb	s3,1(a0)
.L115:
	add	s1,s0,a4
	mv	a0,s1
	call	flz_readu32
	and	a4,a0,s6
	mul	a5,a4,s4
	mulhu	a4,a4,s4
	slli	a4,a4,13
	srli	a5,a5,19
	or	a5,a4,a5
	and	a5,a5,s9
	zext.h	a5,a5
	lw	a4,0(sp)
	sh2add	a5,a5,a4
	sub	a4,s1,s5
	sw	a4,0(a5)
	addi	s0,s1,2
	srli	a4,a0,8
	mul	a5,a4,s4
	mulhu	a4,a4,s4
	slli	a4,a4,13
	srli	a5,a5,19
	or	a5,a4,a5
	and	a5,a5,s9
	zext.h	a5,a5
	lw	a4,0(sp)
	sh2add	a5,a5,a4
	addi	s1,s1,1
	sub	s1,s1,s5
	sw	s1,0(a5)
	bleu	s7,s0,.L129
	mv	s11,s0
	j	.L107
	.cfi_endproc
.LFE18:
	.size	fastlz1_compress, .-fastlz1_compress
	.align	1
	.globl	fastlz1_decompress
	.type	fastlz1_decompress, @function
fastlz1_decompress:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	mv	s0,a2
	add	s2,a0,a1
	addi	s5,s2,-2
	add	s1,a2,a3
	addi	a1,a0,1
	lbu	a5,0(a0)
	andi	a5,a5,31
	mv	a0,a2
	li	s4,31
	li	s3,8192
	addi	s3,s3,-256
	li	s6,6
	j	.L136
.L143:
	bgtu	a1,s5,.L137
	lbu	a2,0(a1)
	addi	a2,a2,6
	addi	a1,a1,1
	j	.L132
.L131:
	addi	a2,a5,1
	add	s8,a0,a2
	bgtu	s8,s1,.L140
	add	s7,a1,a2
	bgtu	s7,s2,.L141
	call	memcpy
	mv	a0,s8
.L134:
	bgtu	s7,s5,.L135
	addi	a1,s7,1
	lbu	a5,0(s7)
.L136:
	bleu	a5,s4,.L131
	srli	a2,a5,5
	addi	a2,a2,-1
	slli	a5,a5,8
	and	a5,a5,s3
	beq	a2,s6,.L143
.L132:
	addi	s7,a1,1
	not	a5,a5
	lbu	a4,0(a1)
	sub	a5,a5,a4
	add	a1,a0,a5
	addi	a2,a2,3
	add	s8,a0,a2
	bgtu	s8,s1,.L138
	bgtu	s0,a1,.L139
	call	fastlz_memmove
	mv	a0,s8
	j	.L134
.L135:
	sub	a0,a0,s0
.L130:
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L137:
	.cfi_restore_state
	li	a0,0
	j	.L130
.L138:
	li	a0,0
	j	.L130
.L139:
	li	a0,0
	j	.L130
.L140:
	li	a0,0
	j	.L130
.L141:
	li	a0,0
	j	.L130
	.cfi_endproc
.LFE19:
	.size	fastlz1_decompress, .-fastlz1_decompress
	.align	1
	.globl	fastlz2_compress
	.type	fastlz2_compress, @function
fastlz2_compress:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	li	t0,-32768
	add	sp,sp,t0
	.cfi_def_cfa_offset 32864
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s3,a0
	sw	a1,28(sp)
	sw	a2,24(sp)
	addi	s10,a1,-4
	add	s10,a0,s10
	addi	s7,a1,-13
	add	s7,a0,s7
	li	a5,-32768
	li	a4,32768
	add	a4,a4,a5
	addi	a5,sp,32
	add	a5,a4,a5
	li	a4,32768
	addi	a3,sp,32
	add	a4,a4,a3
.L145:
	sw	zero,0(a5)
	addi	a5,a5,4
	bne	a5,a4,.L145
	addi	s0,s3,2
	bleu	s7,s0,.L167
	sw	s3,16(sp)
	lw	a5,24(sp)
	sw	a5,20(sp)
	li	s6,16777216
	addi	s6,s6,-1
	li	s4,-1640529920
	addi	s4,s4,-1607
	li	s8,8192
	addi	s8,s8,-1
	li	a5,-32768
	li	a4,32768
	add	a4,a4,a5
	addi	a5,sp,32
	add	a5,a4,a5
	sw	a5,12(sp)
	li	s9,73728
	addi	s9,s9,-4
	li	s11,8192
	addi	s11,s11,-2
	j	.L149
.L170:
	lw	a0,20(sp)
	j	.L152
.L157:
	addi	a5,a0,1
	srli	a4,a3,8
	addi	a4,a4,-32
	sb	a4,0(a0)
	addi	a4,s1,-7
	li	a2,254
	bleu	a4,a2,.L159
	li	a1,-1
.L160:
	addi	a5,a5,1
	sb	a1,-1(a5)
	addi	a4,a4,-255
	bgtu	a4,a2,.L160
.L159:
	sb	a4,0(a5)
	addi	a4,a5,2
	sw	a4,20(sp)
	sb	a3,1(a5)
	j	.L158
.L156:
	li	a4,6
	bgtu	s1,a4,.L161
	li	a5,-8192
	add	a5,s5,a5
	slli	a4,s1,5
	addi	a4,a4,31
	sb	a4,0(a0)
	li	a4,-1
	sb	a4,1(a0)
	srli	a4,a5,8
	sb	a4,2(a0)
	addi	a4,a0,4
	sw	a4,20(sp)
	sb	a5,3(a0)
	j	.L158
.L161:
	li	a5,-8192
	add	s5,s5,a5
	addi	a5,a0,1
	li	a4,-1
	sb	a4,0(a0)
	addi	a4,s1,-7
	li	a3,254
	bleu	a4,a3,.L162
	li	a2,-1
.L163:
	addi	a5,a5,1
	sb	a2,-1(a5)
	addi	a4,a4,-255
	bgtu	a4,a3,.L163
.L162:
	sb	a4,0(a5)
	li	a4,-1
	sb	a4,1(a5)
	srli	a4,s5,8
	sb	a4,2(a5)
	addi	a4,a5,4
	sw	a4,20(sp)
	sb	s5,3(a5)
	j	.L158
.L168:
	mv	s0,a5
	j	.L149
.L169:
	mv	s0,a5
	j	.L149
.L167:
	sw	s3,16(sp)
	lw	a5,24(sp)
	sw	a5,20(sp)
	j	.L146
.L171:
	sw	s0,16(sp)
.L146:
	lw	a5,28(sp)
	add	a0,s3,a5
	lw	a2,20(sp)
	lw	a5,16(sp)
	mv	a1,a5
	sub	a0,a0,a5
	call	flz_literals
	lw	a4,24(sp)
	lbu	a5,0(a4)
	ori	a5,a5,32
	sb	a5,0(a4)
	sub	a0,a0,a4
	li	t0,32768
	add	sp,sp,t0
	.cfi_remember_state
	.cfi_def_cfa_offset 96
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L147:
	.cfi_restore_state
	bgeu	s0,s7,.L146
	addi	a5,s0,1
.L165:
	mv	s0,a5
.L149:
	mv	a0,s0
	call	flz_readu32
	and	s1,a0,s6
	mul	a5,s1,s4
	mulhu	a4,s1,s4
	slli	a4,a4,13
	srli	a5,a5,19
	or	a5,a4,a5
	and	a5,a5,s8
	zext.h	a5,a5
	lw	a4,12(sp)
	sh2add	a5,a5,a4
	lw	s2,0(a5)
	add	s2,s3,s2
	sub	a4,s0,s3
	sw	a4,0(a5)
	sub	s5,s0,s2
	bgtu	s5,s9,.L147
	mv	a0,s2
	call	flz_readu32
	and	a0,a0,s6
	bgeu	s0,s7,.L146
	addi	a5,s0,1
	bne	s1,a0,.L165
	bleu	s7,a5,.L146
	bleu	s5,s11,.L150
	lbu	a3,3(s2)
	lbu	a4,3(s0)
	bne	a3,a4,.L168
	lbu	a3,4(s2)
	lbu	a4,4(s0)
	bne	a3,a4,.L169
.L150:
	lw	a5,16(sp)
	bleu	s0,a5,.L170
	lw	a2,20(sp)
	mv	a1,a5
	sub	a0,s0,a5
	call	flz_literals
.L152:
	addi	s2,s2,3
	addi	a5,s0,3
	mv	s1,s2
.L153:
	bleu	s10,a5,.L154
	addi	s1,s1,1
	addi	a5,a5,1
	lbu	a3,-1(s1)
	lbu	a4,-1(a5)
	beq	a3,a4,.L153
.L154:
	sub	s1,s1,s2
	addi	a3,s5,-1
	bgtu	a3,s11,.L156
	li	a4,6
	bgtu	s1,a4,.L157
	slli	a5,s1,5
	srli	a4,a3,8
	add	a5,a5,a4
	sb	a5,0(a0)
	addi	a5,a0,2
	sw	a5,20(sp)
	sb	a3,1(a0)
.L158:
	add	s1,s0,s1
	mv	a0,s1
	call	flz_readu32
	and	a4,a0,s6
	mul	a5,a4,s4
	mulhu	a4,a4,s4
	slli	a4,a4,13
	srli	a5,a5,19
	or	a5,a4,a5
	and	a5,a5,s8
	zext.h	a5,a5
	lw	a4,12(sp)
	sh2add	a5,a5,a4
	sub	a4,s1,s3
	sw	a4,0(a5)
	addi	s0,s1,2
	srli	a4,a0,8
	mul	a5,a4,s4
	mulhu	a4,a4,s4
	slli	a4,a4,13
	srli	a5,a5,19
	or	a5,a4,a5
	and	a5,a5,s8
	zext.h	a5,a5
	lw	a4,12(sp)
	sh2add	a5,a5,a4
	addi	s1,s1,1
	sub	s1,s1,s3
	sw	s1,0(a5)
	bleu	s7,s0,.L171
	sw	s0,16(sp)
	j	.L149
	.cfi_endproc
.LFE21:
	.size	fastlz2_compress, .-fastlz2_compress
	.align	1
	.globl	fastlz2_decompress
	.type	fastlz2_decompress, @function
fastlz2_decompress:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	mv	s1,a2
	add	s0,a0,a1
	addi	s5,s0,-2
	add	s2,a2,a3
	addi	a1,a0,1
	lbu	a5,0(a0)
	andi	a5,a5,31
	mv	a0,a2
	li	s4,31
	li	s3,8192
	addi	s3,s3,-256
	li	s6,6
	li	s7,255
	j	.L186
.L195:
	li	a3,255
.L182:
	bgtu	a1,s5,.L187
	addi	a1,a1,1
	lbu	a4,-1(a1)
	add	a2,a2,a4
	beq	a4,a3,.L182
	j	.L180
.L196:
	li	a3,8192
	addi	a3,a3,-256
	bne	a5,a3,.L183
	bleu	s5,s8,.L188
	addi	s8,a1,3
	lbu	a5,2(a1)
	li	a4,-8192
	sub	a4,a4,a5
	lbu	a5,1(a1)
	slli	a5,a5,8
	sub	a4,a4,a5
	add	a4,a0,a4
	j	.L183
.L179:
	addi	a2,a5,1
	add	s9,a0,a2
	bgtu	s9,s2,.L191
	add	s8,a1,a2
	bgtu	s8,s0,.L192
	call	memcpy
	mv	a0,s9
.L184:
	bgeu	s8,s0,.L185
	addi	a1,s8,1
	lbu	a5,0(s8)
.L186:
	bleu	a5,s4,.L179
	srli	a2,a5,5
	addi	a2,a2,-1
	slli	a5,a5,8
	and	a5,a5,s3
	beq	a2,s6,.L195
.L180:
	addi	s8,a1,1
	lbu	a3,0(a1)
	not	a4,a5
	sub	a4,a4,a3
	add	a4,a0,a4
	addi	a2,a2,3
	beq	a3,s7,.L196
.L183:
	add	s9,a0,a2
	bgtu	s9,s2,.L189
	bltu	a4,s1,.L190
	mv	a1,a4
	call	fastlz_memmove
	mv	a0,s9
	j	.L184
.L185:
	sub	a0,a0,s1
.L178:
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L187:
	.cfi_restore_state
	li	a0,0
	j	.L178
.L188:
	li	a0,0
	j	.L178
.L189:
	li	a0,0
	j	.L178
.L190:
	li	a0,0
	j	.L178
.L191:
	li	a0,0
	j	.L178
.L192:
	li	a0,0
	j	.L178
	.cfi_endproc
.LFE22:
	.size	fastlz2_decompress, .-fastlz2_decompress
	.align	1
	.globl	fastlz_compress
	.type	fastlz_compress, @function
fastlz_compress:
.LFB23:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	li	a5,65536
	blt	a1,a5,.L201
	call	fastlz2_compress
.L197:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L201:
	.cfi_restore_state
	call	fastlz1_compress
	j	.L197
	.cfi_endproc
.LFE23:
	.size	fastlz_compress, .-fastlz_compress
	.align	1
	.globl	fastlz_decompress
	.type	fastlz_decompress, @function
fastlz_decompress:
.LFB24:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	mv	a4,a0
	lbu	a5,0(a0)
	srli	a5,a5,5
	beq	a5,zero,.L207
	addi	a6,a5,1
	li	a5,2
	li	a0,0
	beq	a6,a5,.L208
.L202:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L207:
	.cfi_restore_state
	call	fastlz1_decompress
	j	.L202
.L208:
	mv	a0,a4
	call	fastlz2_decompress
	j	.L202
	.cfi_endproc
.LFE24:
	.size	fastlz_decompress, .-fastlz_decompress
	.align	1
	.globl	fastlz_compress_level
	.type	fastlz_compress_level, @function
fastlz_compress_level:
.LFB25:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	mv	a4,a1
	mv	a1,a2
	li	a2,1
	beq	a0,a2,.L214
	mv	a5,a0
	li	a2,2
	li	a0,0
	beq	a5,a2,.L215
.L209:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L214:
	.cfi_restore_state
	mv	a2,a3
	mv	a0,a4
	call	fastlz1_compress
	j	.L209
.L215:
	mv	a2,a3
	mv	a0,a4
	call	fastlz2_compress
	j	.L209
	.cfi_endproc
.LFE25:
	.size	fastlz_compress_level, .-fastlz_compress_level
	.ident	"GCC: () 13.2.0"
	.section	.note.GNU-stack,"",@progbits
