.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ;		
		Student: Brenton Jackson
        	Class: CSC3210
        	Assignment#: 3 
       		Description: Find sum of words in array ;

.data
qVal WORD 0506h,0307h,0408h,0102h


.code
main PROC 
	mov ax, WORD PTR qVal				; ax = qVal[0]
	mov bx, WORD PTR qVal + 2			; bx = qVal[1]
	add ax, bx
	mov bx, WORD PTR qVal + 4			; bx = qVal[1]
	add ax, bx
	mov bx, WORD PTR qVal + 6			; bx = qVal[1]
	add ax, bx


	
	
	INVOKE ExitProcess, 0
main ENDP
END main