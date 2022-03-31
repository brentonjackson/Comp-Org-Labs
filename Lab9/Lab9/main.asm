.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	Lab 9a - Exploring Indirect Addressing and Indexed Operands !

.data
myBytes		BYTE 10h,20h,30h,40h
myWords		WORD 8Ah,3Bh,72h,44h,66h
myDoubles	DWORD 1,2,3,4,5
myPointer	DWORD myDoubles


.code
main PROC 
	mov esi, OFFSET myBytes
	mov al, [esi]	;indirect access	;a. AL = 10h
	mov al, [esi+3]						;b. AL = 40h
	mov esi, OFFSET myWords + 2
	mov ax, [esi]						;c. AX = 003Bh
	mov edi, 8      ;indexed operand
	mov edx, [myDoubles + edi]			;d. EDX = 00000003h
	mov edx, myDoubles[edi]				;e. EDX = 00000003h 
	mov ebx, myPointer
	mov eax, [ebx+4]					;f. EAX = 00000002h

	INVOKE ExitProcess, 0
main ENDP
END main