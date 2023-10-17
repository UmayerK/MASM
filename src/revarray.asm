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
    array DWORD 1,5,6,8,0Ah,1Bh,1Eh,22h,2Ah,32h

.code
main PROC
    mov esi,0
    mov edi,SIZEOF array - TYPE array
    mov ecx, LENGTHOF array / 2

L1:
    mov eax,array[esi]
    xchg eax,array[edi]
    mov array[esi],eax

    add esi, TYPE array
    sub edi, TYPE array
    loop L1 
   call DumpRegs

    exit

main ENDP
END main
''