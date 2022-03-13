.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	Lab 8d - Exploring Type, Length, and Sizeof operators !

.data
myBytes BYTE	10h,20h,30h,40h
myWords WORD	3 DUP(?),2000h
myString BYTE	"ABCDE"


.code
main PROC 
	mov eax, TYPE myBytes			;a. 1
	mov eax, LENGTHOF myBytes		;b. 4
	mov eax, SIZEOF myBytes			;c. 4
	mov eax, TYPE myWords			;d. 2
	mov eax, LENGTHOF myWords		;e. 4
	mov eax, SIZEOF myWords			;f. 8
	mov eax, SIZEOF myString		;g. 5

	
	INVOKE ExitProcess, 0
main ENDP
END main