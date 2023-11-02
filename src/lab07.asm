TITLE

; Name:  Umayer Khan 
; Date: Tues Nov 2, 2023
; ID: 110105667
; Description: Another lab hahahaha (not funny)

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    value DWORD ?
    
    SetX DWORD 1, 2, 3, 4, 5   ; Example array representing SetX
    SetY DWORD 3, 4, 5, 6, 7   ; Example array representing SetY
    Result DWORD 0 

    V1 WORD ?
    V2 WORD ?
    V3 WORD ?
.code
main PROC
	
    ;Q 1
    and ax,0000000011111111b
    ;Q 2
    or ax, 1111111100000000b
    ;Q 3
    xor eax,11111111111111111111111111111111b
    ;Q 4
    test eax,00000000000000000000000000000001b
    ;Q 5
    and al, 0DFh
    ;Q6
    and al,11001111b


    ;Q 7
    mov eax, 01b
    call DumpRegs
    mov al, BYTE PTR value
    xor al, BYTE PTR value+1
    xor al, BYTE PTR value+2
    xor al, BYTE PTR value+3 ; the value of AL shows parity; 0 is even, 1 is odd

    
    ;Q 8
    mov     ECX, LENGTHOF SetX    ; Getting the number of elements in SetX
    mov     ESI, OFFSET SetX      ; Load the address of SetX into ESI
    mov     EDI, OFFSET Result    ; Load the address of Result into EDI

    xor     EAX, EAX              ; Clear EAX (result)
    
    ; Loop through SetX and check each element
CLoop:
    mov     EBX, [ESI]            ; Load an element from SetX into EBX
    test    EBX, EBX              ; Test if the element is zero (end of the array)
    jz      Q9                  ; If it's zero, we are done
    
    ; Check if the element is not in SetY
    mov     EDX, LENGTHOF SetY    ; Get the number of elements in SetY
    mov     ESI, OFFSET SetY      ; Load the address of SetY into ESI
    xor     ECX, ECX              ; Clear ECX (counter)
    
SLoop:
    cmp     EBX, [ESI]            ; Compare the current element in SetX with SetY
    je      FoundMatch            ; If they are equal, it's a match
    
    add     ESI, 4                ; Move to the next element in SetY
    inc     ECX                   ; Increment the counter
    cmp     ECX, EDX              ; Have we checked all elements in SetY?
    jl      SLoop            ; If not, continue searching
    
    ; If we reach this point, the element is not in SetY
FoundMatch:
    jz      NELEMENT           ; If it's a match, skip to the next element in SetX

    ; Add the element to the result (you can modify this part as needed)
    or      EAX, EBX              ; Add the element to the result in EAX

NELEMENT:
    add     ESI, 4                ; Move to the next element in SetX
    jmp     CLoop              ; Continue checking the next element in SetX

Q9:
;Q 9
; Assuming you have two unsigned integers in EAX and EBX
    cmp EAX, EBX       ; Compare EAX and EBX
    ja  EAXIsLarger    ; Jump if EAX is larger (unsigned comparison)

    ; If we reach this point, EBX is larger or they are equal
    mov EDX, EBX       ; Move the value of EBX to EDX
    jmp Q10

    EAXIsLarger:
    mov EDX, EAX       ; Move the value of EAX to EDX

    Q10: 
    ; Assuming you have 16-bit values in V1, V2, and V3

; Start by assuming V1 is the smallest
mov ax, V1

; Compare V2 with AX (smallest value so far)
cmp V2, ax
jb V2IsSmal ; Jump if V2 is smaller

; If we reach here, V2 is not smaller, so compare V3 with AX
cmp V3, ax
jb V3IsSmal  ; Jump if V3 is smaller

; If we reach this point, AX still contains the smallest value (V1)

V2IsSmal:
mov ax, V2  ; Move V2 into AX
jmp Q11

V3IsSmal:
mov ax, V3  ; Move V3 into AX

Q11:
cmp dx, cx        ; Compare DX and CX
jbe L1            ; Jump to L1 if DX is less than or equal to CX
L1: 
cmp ax, cx        ; Compare AX and CX
jg L2             ; Jump to L2 if AX is greater than CX
L2: 
; Clear bits 0 and 1 in AL
and al, 0FCh   ; 0FCh is 11111100 in binary, which clears bits 0 and 1

; Check if AL is equal to zero
test al, al    ; Test if AL is zero
jz L3          ; Jump to L3 if AL is zero
jmp L4         ; Jump to L4 if AL is not zero
L3:
L4:



	exit

main ENDP
END main