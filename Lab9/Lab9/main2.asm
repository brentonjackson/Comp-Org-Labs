.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	Lab 9d - Exploring logical instructions !

.code
main PROC 
	mov al, 01101111b
	and al, 00101101b		;a. AL = 00101101b = 2Dh
	mov al, 6Dh
	and al, 4Ah				;b. AL = 01001000b = 48h
	mov al, 00001111b
	or al, 61h				;c. AL = 01101111b = 6Fh
	mov al, 94h
	xor al, 37h				;d. AL = 10100011b = A3h

	
	INVOKE ExitProcess, 0
main ENDP
END main