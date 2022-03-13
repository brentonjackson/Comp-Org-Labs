.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	Lab 8c - Exploring Memory Data !

.data?
dVal		DWORD ?


.code
main PROC 
	mov dVal, 12345678h
	mov ax, WORD PTR [dVal+2]	;1234
	add ax, 3					;1237
	mov WORD PTR dVal, ax		;dVal=37123412
	mov eax, dVal				;eax=12341237
	
	INVOKE ExitProcess, 0
main ENDP
END main