     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R0,#0
		MOV R1,#1
		MOV R2,#45
		MOV R3,#0X20000000
		MOV R4,#0
		ADD R4,R0,R1
LOOP1  CMP R2,R4
	    BGT LOOP
	    B STOP
LOOP    STR R4,[R3]
        MOV R0,R1
		MOV R1,R4
		ADD R4,R0,R1
		B LOOP1
STOP	B STOP
        ENDFUNC
    END	 
        