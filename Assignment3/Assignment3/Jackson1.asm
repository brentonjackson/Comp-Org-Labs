.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ;		
		Student: Brenton Jackson
        	Class: CSC3210
        	Assignment#: 3
       		Description: Use loop and xchg to reorder array ;

.data
inputStr BYTE 'A','B','C','D','E','F','G','H'


.code
main PROC 
	; inputStr = G,H,E,F,C,D,A,B

	mov edi, OFFSET inputStr			; set data location
	mov ecx, 2							; set loop counter
	mov edx, 6
	L1:
		mov ax, [edi]					; ax = current element
		mov bx, [edi+edx]				; bx = next element
		
		xchg bx, [edi]					; swap
		xchg ax, [edi+edx]

		mov edx, 2
		add edi, TYPE inputStr * 2
		loop L1
	

	
	
	INVOKE ExitProcess, 0
main ENDP
END main