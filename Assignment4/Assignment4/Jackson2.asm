.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ;		
		Student: Brenton Jackson
        	Class: CSC3210
        	Assignment#: 4
       		Description: This program implements function 
			that returns largest item in array ;

.data
Array DWORD 10, 34, 2, 56, 67, -1, 9, 45, 0, 11
largest DWORD ?

.code
LargestItem PROC USES esi ebx ecx
	mov eax, [esi]

L1:	cmp [esi], eax
	jle next
	mov eax, [esi]
next:
	add esi, ebx
	loop L1

	ret
LargestItem ENDP

main PROC
	mov esi, OFFSET Array
	mov ebx, TYPE DWORD
	mov ecx, LENGTHOF Array
	CALL LargestItem
	mov largest, eax
	INVOKE ExitProcess, 0
main ENDP
END main