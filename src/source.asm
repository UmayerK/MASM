TITLE

; Name: Faraan Rashid
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    Rval SDWORD 22
    Xval SDWORD 26
    Yval SDWORD 30
    Zval SDWORD 40

.code
main PROC
    mov ax,1000h
    inc ax
    dec ax
    mov eax,Xval
    neg eax
    mov ebx,Yval
    sub ebx,Zval
    add eax,ebx
    mov Rval,eax
    mov cx,1
    sub cx,1
    mov ax,0FFFFh
    inc ax
    mov ecx,0B9F6h
    sub ecx,9874h

    call DumpRegs
    ; end of A
    ; Carry Flag = 0
    ; Overflow Flag = 0
    ; Sign Flag = 0
    ; Zero Flag = 0
    ; CX = 0000
    ; AL = 00

    mov cx,0
    sub cx,1
    mov ax,7FFFh
    add ax,2

    call DumpRegs
    ; end of B
    ; Carry Flag = 0
    ; Overflow Flag = 1 Generated as adding the numbers 2 and 7FFF causes overflow as its 16 digits  and exceeds 32 thousand and ax is 64 thousand as its already full(after subtracting 1 ax register)
    ; Sign Flag = 1  Generated because the number  0 -1 is negative in cx register
    ; Zero Flag = 0
    ; CX = 0000
    ; AL = 01

    mov al,0FFh
    add al,1
    mov al,+127
    add al,1
    mov ax,7FFEh
    add ax,22h

    call DumpRegs
    ; end of C
    ; Carry Flag = 0
    ; Overflow Flag = 1 Generated as adding the numbers  7FFEh + 22h to an already overflown number causes overflow as al is 8 bits and the FFFF plus anything is greater than what 8 bits can handle
    ; Sign Flag = 1 sf stays on as the most significant digit is 1
    ; Zero Flag = 0
    ; CX = 0000
    ; AL = 20

    mov al,-128
    sub al,1
    mov al,0DFh
    add al,32h
    mov al,72h
    sub al,0E6h
    mov bl,-127
    dec bl

    call DumpRegs
    ; end of D
    ; Carry Flag = 1 this occurs as there is a carry done when adding 72h and 32h This is as subtracting 128 and 1 does not make it so the number is small enough to overflow 
    ; Overflow Flag = 0
    ; Sign Flag = 1 Generated because the number is negative -127 (bl register)
    ; Zero Flag = 0
    ; CX = 0000
    ; AL = 8C
;The final value for ECX=0000
;The final value of AL  = 8C

    exit
main ENDP
END main
﻿
