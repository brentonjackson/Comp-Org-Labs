.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	Lab 10 - Use jumps and loops to find largest item in an
			array and store it in a variable named MAXIMUM!

.data
Array WORD 10, 2, 23, 45, 21, 11
MAXIMUM WORD ?

.code
main PROC 
	mov ax, Array						; ax = Array[0]
	mov edi, OFFSET Array + TYPE Array	; address of Array[1]
	mov ecx, LENGTHOF Array - 1			; initialize loop counter starting at second element
	mov maximum, ax						; maximum = 10

	; loop through array
	L1:									; beginning of loop
		mov ax, [edi]					; save current element to ax
		cmp ax, maximum					; perform comparison
		
		jg IF_BLOCK						; if element > maximum: mov maximum, element
		jmp Next
		IF_BLOCK:	mov maximum, ax

		Next:
	add edi, TYPE Array					; point to next element
	loop L1								; repeat until ecx = 0

	INVOKE ExitProcess, 0
main ENDP
END main