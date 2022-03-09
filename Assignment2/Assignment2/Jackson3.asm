.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD


COMMENT ;	
		Student: Brenton Jackson
        	Class: CSC3210
        	Assignment#: 2 
       		Description: Adds expressions to an array
;


.data
x word 10
y word 15
r word 4

.data?
z dword 3 DUP(?)

.code
main PROC 
	; z0 = x+130
	; z1 = y-x+z0
	; z2 = r+x-z1

	movzx eax, x
	add ax, 130
	mov z, eax		; z0 = x+130

	movzx ebx, y
	sub bx, x
	add bx, ax
	mov z+4, ebx		; z1 = y-x+z0

	movzx eax, r
	add ax, x
	sub ax, bx
	mov z+8, eax		; z2 = r+x-z1

	INVOKE ExitProcess, 0
main ENDP
END main