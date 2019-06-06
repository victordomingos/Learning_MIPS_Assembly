.data
	X:  .word  4
	Y:  .word  2
	Z:  .word  0

.text

main:
	la  $t0, X		# address of variable X
	la  $t1, Y 		# address of aariable Y
	la  $t2, Z
	
	lw  $s0, 0($t0)		# load content of $t0 memory position to the $s0 register
	lw  $s1, 0($t1)

	add $s2, $s0, $s1	# do the math...
	sw  $s2, 0($t2)		# send the value back to Z variable

	li  $v0, 10 		# Stop execution and return controll to the OS
	syscall
