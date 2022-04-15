.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ;		
		Student: Brenton Jackson
        	Class: CSC3210
        	Assignment#: 4
       		Description: This program implements high level 
			control flow instructions;

.data
sum SDWORD 0
var1 SDWORD 3
var2 SDWORD 3
var3 SDWORD 0

.code
main PROC 
	mov eax, var1						; var1 = eax
	mov edi, var2						; var2 = edi
	mov ebx, var3						; var3 = ebx

	mov ecx, 0							; set loop counter i
	mov edx, 12							; set loop counter j
	FOR_LOOP:
		cmp ecx, edx
		jge done						; if i>=j go to next
		
		cmp eax, ebx
		jg IF_BLOCK
		ELSE_BLOCK:
			add ebx, ecx				; var3 = var3 + i
			jmp Next
		IF_BLOCK:
			sub eax, ecx				; var1 = var1 - i			
			
		Next:
		mov sum, eax					; sum = var1 + var2 + var3
		add sum, edi
		add sum, ebx
		dec edx							; j = j-1
		inc ecx							; i++
		jmp FOR_LOOP
		
	done:								; update variables in memory
		mov var1, eax
		mov var3, ebx
	INVOKE ExitProcess, 0
main ENDP
END main