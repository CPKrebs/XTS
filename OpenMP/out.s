	.file	"hello.c"
	.option nopic
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	mv	a5,a0
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	lui	a5,%hi(main._omp_fn.0)
	addi	a0,a5,%lo(main._omp_fn.0)
	call	GOMP_parallel
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello from process %d no-order: %d\n"
	.align	3
.LC1:
	.string	"Hello from process %d in-order: %d\n"
	.text
	.align	1
	.type	main._omp_fn.0, @function
main._omp_fn.0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	addi	s0,sp,80
	sd	a0,-72(s0)
	addi	a5,s0,-48
	addi	a4,s0,-56
	li	a3,1
	li	a2,1
	li	a1,4
	li	a0,0
	call	GOMP_loop_ordered_static_start
	mv	a5,a0
	beq	a5,zero,.L4
.L6:
	ld	a5,-56(s0)
	sw	a5,-36(s0)
	ld	a5,-48(s0)
	sext.w	s1,a5
.L5:
	call	omp_get_thread_num
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	call	GOMP_ordered_start
	call	omp_get_thread_num
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	call	GOMP_ordered_end
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	mv	a4,s1
	blt	a5,a4,.L5
	addi	a4,s0,-48
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	GOMP_loop_ordered_static_next
	mv	a5,a0
	bne	a5,zero,.L6
.L4:
	call	GOMP_loop_end_nowait
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	addi	sp,sp,80
	jr	ra
	.size	main._omp_fn.0, .-main._omp_fn.0
	.ident	"GCC: (GNU) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
