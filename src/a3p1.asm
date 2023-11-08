TITLE

; Name: Umayer Khan
; Date: 07 Nov. 2023
; ID: 110105667
; Description: Just another mind-breaking assembly program part 1

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    num1 BYTE "Enter the first number: ", 0   
    num2 BYTE "Enter the second number: ", 0
    sum BYTE "The sum of the numbers is: ", 0

    x BYTE 0h
    y BYTE 0h

.code

main PROC
	
    ; Question 1
    mov dl, 20          ; Set DL register to 20
    mov dh, 10          ; Set DH register to 10

    call Clrscr          ; Clear the screen
    call Gotoxy          ; Set the cursor position

    mov edx, OFFSET num1    ; Load the address of num1 into EDX
    call WriteString       ; Display the prompt for the first number
    call ReadInt           ; Read an integer from the user

    mov ebx, eax            ; Copy the first number to EBX
    mov dl, 19              ; Set DL register to 19
    mov dh, 11              ; Set DH register to 11

    call Gotoxy              ; Set the cursor position

    mov edx, OFFSET num2    ; Load the address of num2 into EDX
    call WriteString         ; Display the prompt for the second number
    call ReadInt             ; Read a second integer from the user

    add eax, ebx             ; Add the two integers
    mov dl, 17               ; Set DL register to 17
    mov dh, 12               ; Set DH register to 12

    call Gotoxy              ; Set the cursor position

    mov edx, OFFSET sum      ; Load the address of sum into EDX
    call WriteString         ; Display the result message
    call WriteInt            ; Display the sum
    call Crlf                 ; Move to the next line
    exit

main ENDP
END main
