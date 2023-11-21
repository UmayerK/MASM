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
    mov esi, ;esi value is 0 
    mov edi,SIZEOF array - TYPE array; 36 bytes because the last element will already be sorted  
    mov ecx, LENGTHOF array / 2;; loops 5 times

L1:
    mov eax,array[esi] ; first iteration makes esi point to 0 
    xchg eax,array[edi] ; then switch edi which points to the last element
    mov array[esi],eax

    add esi, TYPE array
    sub edi, TYPE array
    loop L1 
   call DumpRegs

    exit

main ENDP
END main
