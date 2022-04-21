.data
	myArray: .word 10, 324, 45, 90, 9808
    largest: .asciiz "Largest in given array is "
	max: .word 0
	
.text
    .globl main

main:
	li $t0, 0                     #indexi
	lw $s0, myArray($t0)          #max
	li $t1, 1                     #t1 = i counter ne loop = 1
		
loop:
	beq $t1, 5, printoMax         #nese counter eshte 5, atehere shko printo maximum
	addi $t0, $t0, 4              #rrit indexin per nje element (4 byte)
	lw $s1, myArray($t0)
	bgt $s0, $s1, ndryshoMax      #kalo tek ndryshoMax nese vlera e s0 eshte me e madhe se s1 
	move $s0, $s1
	
ndryshoMax:
	add $t1, $t1, 1               #rritja e vleres se counter
	j loop
	
printoMax:
	li $v0, 4				      #printo mesazhin largest
	la $a0, largest
	syscall
	
	li $v0, 1				      #printo numrin
	move $a0, $s0
	syscall
	sw $s0, max
	
	li $v0, 10                    #fundi i programit
	syscall