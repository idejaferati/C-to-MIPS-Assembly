.data
      char:  .asciiz " " 

.text
.globl main

	main:
		li $a1, 4                      #vlerën test=4 e ruajm në një variabël
		jal printFun        
		li $v0, 10                     #përfundimi i programit
	    syscall


printFun:
	blt $a1, 1, end               #if(test<1) 
	
	#vendosja e vlerave në stack
	subu $sp, $sp, 8              #rezervimi i stack për 2 vlera
	sw  $ra, 0($sp)               #ruajtja e regjistrit në memorie
	sw  $a1, 4($sp)               #ruajtja e regjistrit në memorie

 
	#printimi i numrit 
	li $v0, 1                     
	la $a0, ($a1)                 #load the address of test variable
	syscall

	#printimi i karakterit " "
	li $v0, 4                     
	la $a0, char                  #load the address of char
	syscall


	#Funksioni printFun(test-1)
	sub $a1, $a1, 1               #test=test-1
	jal printFun                  #rekursioni

	#nxjerrja e vlerave nga stack
	lw $ra, 0($sp)
	lw $a1, 4($sp)
	addu $sp, $sp, 8
	
	#printimi i numrit
	li $v0, 1                     
	la $a0, ($a1)                 #load the address of test variable
	syscall

	#printimi I karakterit " "
	li $v0, 4                     
	la $a0, char                  #load the address of char
	syscall
	
	jr $ra                        #return
	
end:
	jr $ra				#return
