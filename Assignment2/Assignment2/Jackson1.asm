.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ;   Student: Brenton Jackson
        	Class: CSC3210
        	Assignment#: 2 
       		Description: Computes algebraic expression
;

.data
val1 word 120h
val2 word 39h
val3 word 20h
val4 word 27h

.code
main PROC 
	; edx = (val3 + val4) - (val2 - val1) - (5/3 * 7)
	mov ax, val3
	add ax, val4 ; ax = val3+val4
	
	mov bx, val2
	sub bx, val1 ; bx = val2-val1
	
	sub ax, bx   ; ax = (val3+val4)-(val2-val1)
	
	mov bx, 5/3
	add bx, 5/3
	add bx, 5/3
	add bx, 5/3
	add bx, 5/3
	add bx, 5/3
	add bx, 5/3 ; bx = 5/3*7
	
	sub ax, bx  ; ax = (val3+val4)-(val2-val1)-(5/3 * 7)
	
	movzx edx, ax
	INVOKE ExitProcess, 0
main ENDP
END main