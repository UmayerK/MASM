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

Dbte TYPEDEF PTR DWORD
pbyte TYPEDEF PTR BYTE 
.data
ada DWORD 1,2,3
myBytes BYTE 10h,20h,30h,40h
myWords WORD 3 DUP(?),2000h
ptr1 pbyte 



.code
main PROC
mov dx  , WORD PTR [ada+8]




   
    call DumpRegs

    exit

main ENDP
END main

