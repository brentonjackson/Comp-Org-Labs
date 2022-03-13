.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	Lab 8a - Exploring the OFFSET operator !

.data
myBytes		BYTE 10h,20h,30h,40h
myWords		WORD 8Ah,3Bh,72h,44h,66h
myDoubles	DWORD 1,2,3,4,5
myPointer	DWORD myDoubles


.code
main PROC 
	mov esi, OFFSET myBytes
	mov ax, [esi]					;a. AX = 2010h
	mov eax, DWORD PTR myWords		;b. EAX = 32-bit value of myWords (0x003B008A)
	mov esi, myPointer
	mov ax, [esi+2]					;c. AX = 00
	mov ax, [esi+6]					;d. AX = 00
	mov ax, [esi-4]					;e. AX = 44

	
	INVOKE ExitProcess, 0
main ENDP
END main