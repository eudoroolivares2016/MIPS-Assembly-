# Hello World
	.data ##Data Declaration Section.
## String to be printed:
out_string:	.asciiz		"\nHello, World!\n"


	.text	##Assembly Language instructions go in text segment
main:		##Start of code section.
	li	$v0, 4		#system call code for printing string = 4.
	la	$a0,out_string #load address of string to be printed into $a0
	syscall			#call operating system to perform operation.
				#specified in $v0
				# syscall takes its arguements from $a0, $al,...
	
	li	$v0,10 #terminate program
	syscall