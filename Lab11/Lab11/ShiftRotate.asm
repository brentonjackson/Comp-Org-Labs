.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ! Lab 11 - Explore the shift and rotate instructions !


.code
main PROC 
	mov al, 0D4h
	shr al, 1				; a. 6Ah (one bit shifted to the right)
	mov al, 0D4h
	sar al, 1				; b. EAh (one bit shifted right and msb duplicated in front)
	mov al, 0D4h
	sar al, 4				; c. FDh (4 bits shifted to right and msb duplicated 4 times to fill)
	mov al, 0D4h
	rol al, 1				; d. A9h (lsb rotated to msb)
	mov al, 0D4h
	ror al, 3				; e. 9Ah (last 3 lsb rotated to msb)
	
	
	INVOKE ExitProcess, 0
main ENDP
END main