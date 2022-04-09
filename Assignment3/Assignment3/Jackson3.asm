.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ;		
		Student: Brenton Jackson
        	Class: CSC3210
        	Assignment#: 3 
       		Description: If-else logic ;

.data
var1 DWORD 10
var2 DWORD 11
var3 DWORD 12

.code
main PROC 
	; load variables
	mov eax, var1
	mov ebx, var2
	mov ecx, var3

	; make comparisons
	cmp eax, ebx
	jg IF_BLOCK
	cmp ecx, ebx
	jl IF_BLOCK
	
	; else condition
	dec eax
	dec ebx
	dec ecx
	mov var1, eax
	mov var2, ebx
	mov var3, ecx
	jmp Next

	IF_BLOCK:
		mov eax, ebx		; eax = var2
		add eax, ecx		; eax = var2 + var3
		mov var1, eax		; var1 = var2 + var3
		inc ebx
		inc ecx
		mov var2, ebx
		mov var3, ecx
		
	Next:
	
	
	INVOKE ExitProcess, 0
main ENDP
END main