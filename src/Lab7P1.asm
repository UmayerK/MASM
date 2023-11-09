; Name: Umayer Khan
; Date: Nov 9, 2023
; ID: 110105667

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; These two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    array SWORD 3, 6, 1, 10, 20, -30, 40, 4   ; Change array initializers to start with positive values
    sentinel SWORD 0

.code
main PROC
    mov esi, OFFSET array   ; Initialize esi with the address of array
    mov ecx, LENGTHOF array ; Initialize ecx with the length of the array
L1:
    test WORD PTR [esi], 8000h  ; Test the sign bit
    jns positive_value_found    ; Jump if not negative
    jmp quit                   ; Quit if a negative value is found
positive_value_found:
    add esi, TYPE array   ; Move to the next position
    loop L1               ; Continue loop if there are more elements
    jnz quit              ; None found, quit
quit:
main ENDP

END main
