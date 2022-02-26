; AddTwo.asm - adds two 32-bit integers.
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:DWORD

.data
    myString byte "This is a very long string made by your instructor to test how $ works in this lab hope you will like it"
    myString_length = ($ - myString)


.code
main PROC
    mov eax, 0
    mov al, myString_length

    INVOKE ExitProcess,0
main ENDP
END main