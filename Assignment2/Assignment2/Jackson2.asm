.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
val1 byte 12
val2 word 9
val3 dword 2
val4 byte 20

.code
main PROC 
	; ecx = -(val3 + val1) + (-val4 - val2) + 3
	mov eax, val3
	add al, val1
	neg eax			; eax = -(val3+val1)
	
	movzx bx, val4
	neg bx
	sub bx, val2 ; bx = (-val4 - val2)
	
	add ax, bx   ; ax =  -(val3+val1)+(-val4 - val2)
	add eax, 3		; eax = -(val3 + val1) + (-val4 - val2) + 3
	
	mov ecx, eax
	INVOKE ExitProcess, 0
main ENDP
END main