.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
arrayB WORD 1,2,3,4

;arrayD DWORD 10000h,20000h,30000h

;myByte1 byte 9bh


COMMENT !
count byte 100
wVal word 2
wVal2 word 4 !

.code
main PROC ;exchange array 1,2,3,4 to 4,3,1,2
	mov ax, [arrayB+2]; eax=2
	xchg ax, [arrayB+6] ; 1,2,3,2 & eax=4
	xchg ax, arrayB ; 4,2,3,2 & eax=1
	xchg ax, [arrayB+4] ; 4,2,1,2 & eax=3
	mov [arrayB+2], ax ; 4,3,1,2

COMMENT !
	mov eax, arrayD
	mov ebx, [arrayD+4]
	mov edx, [arrayD+8] !


COMMENT !
	mov bx, 0a69bh
	movzx eax, bx
	
	movzx eax, myByte1

	mov bx, 0a69bh
	movsx eax, bx !


COMMENT !
	mov bl, count
	mov ax, wVal
	mov count, al

	mov al, count
	mov ax, wVal
	;mov eax, count
	mov wVal2, ax !
	
	INVOKE ExitProcess, 0
main ENDP
END main
