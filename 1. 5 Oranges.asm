##
## addition.a - does some arithmetic and prints out "5 oranges"
##
##	a0 - points to the string
##

#################################################
#					 	#
#		text segment			#
#						#
#################################################
	.text
	.globl __start
__start:		#execution starts here
	lw $t0, number_three	# loads an integer from memory
	li $t1, 2		# loads a CONSTANT Immediately from instr.
	add $a0, $t0, $t1	# result and addition in $a0	
			# a0 is by convention the argument to..
	li $v0, 1		# print integer service number 1
	syscall		# call on operating system to fo this
	la $a0, str	# put string address into a0
	li $v0, 4		# system call to print 
	syscall		#out a string	
	
	li $v0, 10
	syscall		# au revoir...


#################################################
#					 	#
#     	 	data segment			#
#						#
#################################################

	.data
number_three:	.word	3	#memory word with initial value
str:	.asciiz " oranges\n"	# a string, with a "newline" char

##
## end of file addition.a
