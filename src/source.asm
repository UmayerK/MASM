TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    Var1 DWORD 10000h;
    Var2 DWORD 20000h;
    ; data declarations go here

.code
main PROC

    ; code goes here
    mov eax, Var1
    add eax, Var2
	sub eax, 10000h
    call DumpRegs ; displays registers in console

    exit

main ENDP
END main