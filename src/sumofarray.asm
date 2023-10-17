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
    array DWORD 10h,20h,30h,40h,50h,60h
    sum DWORD ?
.code
main PROC
    mov ecx,LENGTHOF array
    mov eax,0
    mov esi,0

L1: add eax,array[esi*4]
    inc esi
    loop L1

    call DumpRegs
    exit

main ENDP
END main

