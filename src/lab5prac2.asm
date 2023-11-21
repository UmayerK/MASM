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
call Randomize 
call Rand1

exit
main ENDP

Rand1 PROC 
mov ecx, 10
L1: mov eax, 21
call RandomRange
sub eax, 10;
call WriteInt
mov al, TAB
call WriteChar

loop L1


Rand1 ENDP  ;
   

    exit
    call DumpRegs


END main

