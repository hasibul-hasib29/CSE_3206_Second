    PRESERVE8
    THUMB       

    AREA    RESET, DATA, READONLY
    EXPORT  __Vectors

__Vectors 
    DCD  0x20001000  
    DCD  Reset_Handler  
    ALIGN

    AREA    MYCODE, CODE, READONLY

    EXPORT Reset_Handler

Reset_Handler


	; r1, #0x46a1f1b7
	mov r1,0x20000000
	mov r2, #10
	b eql
	
eql
	
	add r2, r2,#1
	ldr r2,[r1,#1]
	b ex
	str r2, [r1,#0]
	
	sub r2, r2,#2
	ldr r2,[r1,#0]
	

ex	
    END
