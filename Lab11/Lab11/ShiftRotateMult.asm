.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ! Lab 11 - Explore the shift and rotate instructions - advanced !

.data
ArraySize = 3
array DWORD ArraySize DUP(99999999h)

.code
main PROC 
	mov esi, 0
	shr array[esi + 8], 1			; high dword
	rcr array[esi + 4], 1			; middle dword, include Carry
	rcr array[esi], 1				; low dword, include Carry
	
	
	INVOKE ExitProcess, 0
main ENDP
END main