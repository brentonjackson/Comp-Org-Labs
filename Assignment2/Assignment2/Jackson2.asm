.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
val1 sdword 23
val2 sdword -35
val3 sdword 4


.code
main PROC 
	; ebx = (-val1 + val2) + (val3 * 3)
	mov eax, val3
	add eax, val3
	add eax, val3
	mov ebx, val2
	sub ebx, val1
	add ebx, eax

	
	INVOKE ExitProcess, 0
main ENDP
END main