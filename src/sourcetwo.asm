TITLE YourProgramName

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
    X DWORD ? ; Define X to store the result

.code
main PROC

    ; code goes here
    mov eax, 0  ; Example: Initialize eax with a 0(you can change this)
    add eax, 4      ; Add 4 to eax
    imul eax, 3     ; Multiply eax by 3
    mov X, eax      ; Store the result in X

    call DumpRegs   ; Display registers in the console

    invoke ExitProcess, 0  ; Properly terminate the program

main ENDP
END main
