TITLE

; Name: Umayer Khan
; Date: Nov 9, 2023
; ID: 110105667
; Description: Question 2, lab 7

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    X DWORD 0
    val1 DWORD 0
	; data declarations go here

.code
main PROC
	    ; First condition
    mov ecx, 5     ; Assign a value to ECX
    mov ebx, 3     ; Assign a value to EBX
    ; Compare EBX and ECX
    cmp ebx, ecx
    jg a1  
    jmp done1
a1:
    mov X, 1
call DumpRegs 
done1:
    mov ecx, 3     
    mov edx, 5     

    ; Compare EDX and ECX
    cmp edx, ecx
    jle le2 
    jg a2
    jmp done:
a2:
    mov X, 2
le2:
    ; If EDX is less than or equal to ECX, set X to 1
    mov X, 1

done2:

;3
 mov val1, 15   ; Replace with your actual value for val1
    mov ecx, 10    ; Replace with your actual value for ecx
    mov edx, 5     ; Replace with your actual value for edx

    ; Check the condition: (val1 > ecx) AND (ecx > edx)
    cmp val1, ecx
    jbe notg3
    cmp ecx, edx
    jle notg3

    ; Set X to 1 if the condition is true
    mov X, 1
    jmp done3

notg3:
    ; Set X to 2 (else case)
    mov X, 2
done3:
    call DumpRegs 
;4

mov ebx, 15    ; Replace with your actual value for ebx
    mov ecx, 10    ; Replace with your actual value for ecx
    mov val1, 5    ; Replace with your actual value for val1

    ; Check the condition: (ebx > ecx) OR (ebx > val1)
    cmp ebx, ecx
    jle ng4
    jmp g4

ng4:
    cmp ebx, val1
    jle e4
    jmp g4

e4:
    ; Set X to 2 (else case)
    mov X, 2
    jmp d4

g4:
    ; Set X to 1 if the condition is true
    mov X, 1

d4:

;5
mov ebx, 15    ; Replace with your actual value for ebx
    mov ecx, 10    ; Replace with your actual value for ecx
    mov edx, 5     ; Replace with your actual value for edx
    mov eax, 2     ; Replace with your actual value for eax

    ; Check the condition: (ebx > ecx AND ebx > edx) OR (edx > eax)
    cmp ebx, ecx
    jle ng5

    cmp ebx, edx
    jle ng5

    ; Set X to 1 if the condition is true
    mov X, 1
    jmp d5

ng5:
    cmp edx, eax
    jle e5

    ; Set X to 1 if the second part of the condition is true
    mov X, 1
    jmp d5

e5:
    ; Set X to 2 (else case)
    mov X, 2

d5:

	exit

main ENDP
END main