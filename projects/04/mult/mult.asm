// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@2
M = 0 // initialzing RAM[2] =0
@3
M = 0 // initializing RAM[3] =0

 // looping R1 times to add R0 to R2
(LOOP)
	// exit condition
	@1
	D=M
	@3
	D=M-D
	M=M+1 // i++

	//if R3 - R1 >= 0 (i - R3 >= 0)
	@END
	D; JGE

	@0
	D=M 
	@2
	M=M+D // recursive addition

	@LOOP
	0; JMP

(END)
	@END
	0; JMP