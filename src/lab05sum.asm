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
Arr DW 10000h,20000h,30000h,40000h
Sum DW 0
	; data declarations go here

.code
main PROC
MOV AX, 0
MOV CX, 4 ; length of array 

Loop1:
    MOV BX, [Arr + AX]
    ADD Sum

Explanationfor step 2
ADD Sum, BX ; add the array element to the sum 
    ADD AX, 2 ; advance the index by 2 bytes (DWORD)
    LOOP Loop1 ; loop until CX is 0

; Print the result
MOV AH, 09h   ;code for print string 
MOV DX, offset Sum
INT 21h

MOV AX, 4C00h
INT 21h
; code goes here
call DumpRegs ; displays registers in console

	exit

main ENDP
END main