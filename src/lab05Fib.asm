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

; data declarations go here

.code
main Proc

MOV EAX , 1    ; first number in sequence

CALL DumpRegs

MOV EBX, 0     ;Initialize EBX

MOV EDX, 1 ;second number in sequence

MOV ECX, 6     ; set the counter register to 6

L1:

MOV EAX,EBX

ADD EAX,EDX   ; EAX = EBX+ EDX 2= 1+1

CALL DumpRegs ; Display eax

MOV EBX,EDX ;increase ebx to the previous edx in order to continue the sequence

MOV EDX,EAX ;increase edx to the result of eax in oreder to continue the sequence

Loop L1; // Continue the loop untill the counter hits

	exit

main ENDP
END main