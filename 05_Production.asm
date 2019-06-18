# 1.1. Traducao de C para assembly do MIPS.
# 2019-06-14
# Victor Domingos

.text

main:
	la $t0, x
	lw $s0, 0($t0)

	la $t1, y
	lw $s1, 0($t1)

	la $t2, z
	lw $s2, 0($t2)

	li $s0, 1
	addi $s1, $s0, 1
	addi $s0, $s0, 1
	add $s2, $s2, $s0
	add $s2, $s2, $s1
	
	sw $s2, 0($t2)

	li $v0, 10
	syscall



.data

	x: 	.word 	0
	y:	.word	0
	z:	.word	3
