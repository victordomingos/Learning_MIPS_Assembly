# No animals have been harmed during this exercise.

.data
macacos:	.word	0
limiteGaiola:	.word	16
diferenca:	.word	0

.text
main:
	la $t0, macacos
	lw $s0, 0($t0)

	la $t1, limiteGaiola
	lw $s1, 0($t1)

	la $t2, diferenca
	lw $s2, 0($t2)

	
	li $s0, 10 

	sub $s2, $s1, $s0   	# x = limiteGaiola - macacos
	li $s3, 2  		# z = 2
	sub $s2, $s2, $s3	# y = x - z
	sw $s2, 0($t2)


	li $s0, 10		# Of no use...


	li $v0, 10
	syscall
