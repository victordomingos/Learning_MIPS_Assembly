.data
	x:	.word	200
	square:	.word	0


.text

main:
	la $t0, x
	lw $t1, 0($t0)

	la $t2, square

	mul $t3, $t1, $t1
        sw $t3, 0($t2)

	li $v0, 10
	syscall

