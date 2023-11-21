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

.code
main PROC
call Randomize ; init random generator call Rand1
call Rand1

exit
main ENDP

Rand1 PROC 
mov ecx, 10; 10 loop counter 
L1: 
call Random32;
call WriteDec
mov al, TAB
call WriteChar

loop L1

Rand1 ENDP  ;
   

    exit
    call DumpRegs


END main

