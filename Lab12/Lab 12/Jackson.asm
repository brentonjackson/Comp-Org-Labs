.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ! Lab 12 - Explore mul/div expression evaluation !

.data
Var1 SDWORD 100
Var2 SDWORD 200
Var3 SDWORD 50
Var4 SDWORD ?

.code
main PROC 
; var4 = (var1*var2)/(var3*5)
	mov eax, Var1
	CDQ
	imul Var2					; eax = var1 * var2
	idiv Var3					; eax = (var1 * var2)/var3
	mov ebx, 5
	idiv ebx						; eax = (var1 * var2)/(var3 * 5)
	mov Var4, eax				; Var4 = eax
	INVOKE ExitProcess, 0
main ENDP
END main