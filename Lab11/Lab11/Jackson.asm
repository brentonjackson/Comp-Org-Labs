.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ! Lab 11 - Convert pseudo code into assembly !

.data
array_list BYTE 10,11,13,18,21,23,24,17,45
array_size DWORD $-array_List
sum BYTE 0

.code
main PROC 
	mov ecx, array_size				;current_size
	mov ebx, 0						;index = 0
	mov edi, OFFSET array_list

	L1:								;start for loop
	L2:								;while loop
	cmp ebx, ecx
	jge END_WHILE					; if index >= current_size
	mov al, [edi+ebx]				; al = array_list[index]
	AND al, 1						; if array_list[index] is even (al = 0)
	mov dl, al
	mov al, [edi+ebx]
	cmp dl, 0
	je IF_BLOCK
	jmp next
	IF_BLOCK:
		add sum, al					; sum += array_list[index]
	next:
	inc ebx							; index += 1
	jmp L2
	END_WHILE:
	loop L1							; loop
	
	INVOKE ExitProcess, 0
main ENDP
END main