##########################
#Eudoro Olivares	 #
#CSCI 370		 #
#Wen Chen Hu		 #
#Spring 2019		 #
#January 26 2019	 #
#Programming Assignment 1 #
##########################

.data

welcomeMessage:	.asciiz		"\n  Hello, welcome to the premium MIPS tick-tac-toe game!"


board:    .ascii "\n\n  | . . . . | . . . . | . . . . | . . . . |   a b c d"
          .ascii   "\n  | . . . . | . . . . | . . . . | . . . . |   e f g h"
          .ascii   "\n  | . . . . | . . . . | . . . . | . . . . |   i j k l"
          .ascii   "\n  | . . . . | . . . . | . . . . | . . . . |   m n o p"
          .asciiz  "\n  |   (0)   |   (1)   |   (2)   |   (3)   |   (index)\n"



offset:    .half   6,   8,  10,  12,  16,  18,  20,  22,  26,  28,  30,  32,  36,  38,  40,  42
           .half  60,  62,  64,  66,  70,  72,  74,  76,  80,  82,  84,  86,  90,  92,  94,  96
           .half 114, 116, 118, 120, 124, 126, 128, 130, 134, 136, 138, 140, 144, 146, 148, 150
           .half 168, 170, 172, 174, 178, 180, 182, 184, 188, 190, 192, 194, 198, 200, 202, 204
           
gridIdPrompt: .asciiz  "Which grid do you want to mark "
indexPrompt: .asciiz  "Which index do you want to mark "
grid:     .word  0
cell:     .byte  'a'
          
.text	##Assembly Language instructions go in text segment
main:

li 	$v0, 4		#system call code for printing string = 4.
la	$a0,welcomeMessage #load address of string to be printed into $a0
syscall	



li 	$v0, 4		#system call code for printing string = 4.
la	$a0,board #load address of string to be printed into $a0
syscall			#call operating system to perform operation.
				#specified in $v0
				# syscall takes its arguements from $a0, $al,...



li 	$v0, 4		#system call code for printing string = 4.
la	$a0,gridIdPrompt #load address of string to be printed into $a0
syscall			#call operating system to perform operation.
	


    li  $v0, 5           # service 5 is read integer
    syscall
    
    move  $a0, $v0
    li  $v0, 1           # print hte v0 value
    syscall   
    
    sw    $a0, grid
    
    
    



li 	$v0, 4		#system call code for printing string = 4.
la	$a0,indexPrompt #load address of string to be printed into $a0
syscall			#call operating system to perform operation.



li  $v0, 12           # service 12 is read character
    syscall
    
    move   $a0, $v0
    li     $v0, 11
    syscall

    sb     $a0, cell

    li     $t0, 22 #load word which is why it is printing the 22 offset everytime 
    
    
    # here you will want ot use the reference equtation 
 # $t0 = (cell÷4)×16 + grid×4 + cell%4,
 
 
 
    
    
mul  $t0, $t0, 2        # Each offset is two-byte long.
lh   $t1, offset($t0)   # Load $t1 with the offset of the index $t0.
li   $t2, 'X'           # Put the piece ‘X’ in $t2.
sb   $t2, board($t1)    # Put the piece at the location, board+offset.

	


li 	$v0, 4		#system call code for printing string = 4.
la	$a0,board #load address of string to be printed into $a0
syscall	
	
	
	
	
li	$v0,10 #terminate program
syscall
