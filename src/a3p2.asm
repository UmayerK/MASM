TITLE

; Name: Umayer Khan
; Date: 07 Nov. 2023
; ID: 110105667
; Description: Part 2 (save me pls)

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    colorWord BYTE "Colored text! ",0
    loopCount BYTE 8h

.code
main PROC
	
    ; Question 2

    mov eax, 00001111b    ; Set EAX to binary value 00001111b
    call SetTextColor     ; Set the text color based on EAX

    mov ecx, 4            ; Initialize ECX to 4 (number of color iterations)
    COLORLOOP:
        mov edx, OFFSET colorWord  ; Load the address of colorWord into EDX
        mov ebx, ecx               ; Copy ECX value to EBX
        imul ebx, 16               ; Multiply EBX by 16
        mov eax, yellow            ; Set EAX to the yellow color
        add eax, ebx               ; Add EBX to EAX for color variation
        call SetTextColor          ; Set the text color based on EAX
        call WriteString           ; Display the colored text
        loop COLORLOOP             ; Repeat the loop

    mov eax, 00001111b          ; Set EAX to binary value 00001111b
    call SetTextColor           ; Reset the text color to the original value
    exit

main ENDP
END main
