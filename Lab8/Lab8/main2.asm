.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	Lab 8b - Exploring the PTR operator !

.data
varB		BYTE 65h,31h,02h,05h
varW		WORD 6543h,1202h
varD		DWORD 12345678h


.code
main PROC 
	mov ax, WORD PTR [varB+2]			;a. ax=0502h
	mov bl, BYTE PTR varD				;b. bl=78h
	mov bl, BYTE PTR [varW+2] 			;c. bl=02h
	mov ax, WORD PTR [varD+2]			;d. ax=1234h
	mov eax, DWORD PTR varW				;e. eax=12026543h
	
	INVOKE ExitProcess, 0
main ENDP
END main