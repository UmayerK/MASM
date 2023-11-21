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
val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh
Nval DWORD ?
arrayD DWORD 10000h,20000h


.code
main PROC
mov ax, val2
add ax, val4

movsx bx, val1
neg bx

sub ax, bx 
movzx eax, ax
mov Nval, eax

mov eax, val3
add eax, [arrayD+4]





   
    call DumpRegs

    exit

main ENDP
END main

