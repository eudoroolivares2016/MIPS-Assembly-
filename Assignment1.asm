##########################
#Eudoro Olivares	 #
#CSCI 370		 #
#Wen Chen Hu		 #
#Spring 2019		 #
#January 26 2019	 #
#Programming Assignment 1 #
##########################	
	
	.data ##Data Declaration Section.
## String to be printed:
row1column1:	.asciiz		"| . . . . "
row1column2:	.asciiz		"| . . . . "
row1column3:	.asciiz		"| . . . . "
row1column4:	.asciiz		"| . . . . "
out_string5:	.asciiz		"| a b c d\n"
row2column1:	.asciiz		"| . . . . "
row2column2:	.asciiz		"| . . . . "
row2column3:	.asciiz		"| . . . . "
row2column4:	.asciiz		"| . . . . "
out_string10:	.asciiz		"| e f g h\n"
row3column1:	.asciiz		"| . . . . "
row3column2:	.asciiz		"| . . . . "
row3column3:	.asciiz		"| . . . . "
row3column4:	.asciiz		"| . . . . "
out_string15:	.asciiz		"| i j k l\n"
row4column1:	.asciiz		"| . . . . "
row4column2:	.asciiz		"| . . . . "
row4column3:	.asciiz		"| . . . . "
row4column4:	.asciiz		"| . . . . "
out_string20:	.asciiz		"| m n o p\n"
out_string21:	.asciiz		"|   (0)   |   (1)   |   (2)   |   (4)   | (index)\n"

prompt:		.asciiz		"Enter a string " 
message: .asciiz  "This suprisingly o\worked"
userInput: .space 20
testString: .asciiz "e"
	

	.text	##Assembly Language instructions go in text segment
main:		##Start of code section.
	
		# gets the users input as text 													
	
	
	
	
	
	
	
	li	$v0, 4		#system call code for printing string = 4.
	la	$a0,row1column1 #load address of string to be printed into $a0
	syscall			#call operating system to perform operation.
				#specified in $v0
				# syscall takes its arguements from $a0, $al,...
				
	
	li	$v0, 4		#second column printing
	la	$a0,row1column2 
	syscall	
	
	li	$v0, 4		#Third column printing
	la	$a0,row1column3 
	syscall	
	
	li	$v0, 4		#Fourth column printing
	la	$a0,row1column4 
	syscall	
	
	li	$v0, 4		#Fifth column printing
	la	$a0,out_string5 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row2column1 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row2column2 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row2column3 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row2column4 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,out_string10 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row3column1 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row3column2 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row3column3 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row4column4 
	syscall		

	li	$v0, 4		#nth line printing
	la	$a0,out_string15 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row4column1 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row4column2 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row4column3 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,row4column4 
	syscall	
	
	li	$v0, 4		#nth line printing
	la	$a0,out_string20 
	syscall
	
	li	$v0, 4		#nth line printing
	la	$a0,out_string21 
	syscall	
				
		
						
										
	# prints prompt asking for move
	li $v0, 4 
	la $a0, prompt  
	syscall
					
		#teaks in the user input onto the a1 register 							
	li $v0, 8 
	la $a0, userInput 
	li $a1 , 20
	syscall
	

	
	# this will print out the user input
	#li $v0, 4 
	#la $a0, userInput  
	#syscall				
	
	
	
	li $v0, 4 
	la $a1, testString  
	syscall	
				
	beq $a0,$a1,ifEqual
	
	
	
	 ifEqual:
	 li $v0, 4 
	la $a0, message 
	syscall	
	
	
	
	  			
	
	
	li	$v0,10 #terminate program
	syscall
	
	