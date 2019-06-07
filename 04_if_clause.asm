# Convert this to MIPS Assembly
#
# int main(){
# 	int idade = 0;
# 	if(idade < 18){
# 		idade = idade + 1;
# 	else{
# 		idade = 0;
# 	}
# 	return 0;
# }


.data
	idade: .word	0;


.text
main:

	la $t0, idade
	lw $s0, 0($t0)

	slti $s1, $s0, 18
	beq $s1, $0, else
	addi $s0, $s0, 1
	j endif
	
else:
	li $s0, 0 

endif:
	sw $s0, 0($t0)

	li $v0, 10
	syscall

