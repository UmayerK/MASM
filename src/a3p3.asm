; Name: Saymon Hwaier  
; Date: Nov 7, 2023
; ID: 110104714
; Description: Assignment 3, section 2, question 3. The purpose of the program takes an array of integers and sums up its elements using a loop. 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.stack 100h


.data
  array dd 1, 2, 3, 4, 5 ; array of integers

.code
main proc
    ; push esi and ecx to the stack
    push esi
    push ecx
    
    mov eax, 0
    
loop_start:
    ; Add the value at [esi] to eax
    add eax, [esi]
    
    ; Increment esi by 4 to move to the next element in the array
    add esi, 4
    
    ; Decrement ecx by 1
    dec ecx
    
    ; Check if ecx is greater than zero
    cmp ecx, 0
    jg loop_start ; if ecx is greater than zero, go to loop_start
    
    ; Restore the previous values of esi and ecx from the stack
    pop ecx
    pop esi
    
    ; Return control to the operating system
    ret
main ENDP
END main