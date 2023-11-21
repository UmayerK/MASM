; Name: Umayer Khan
; Date: Nov 9, 2023
; ID: 110105667

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; These two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
a SWORD 0
    array SWORD 3, 6, 1, 10, 20, -30, 40, 4   ; Change array initializers to start with positive values
    sentinel SWORD 0

.code
main PROC
mov eax, A
mov ebx, 10
mov ecx, 9
cmp ebx, ecx
  jg j1:
  jmp done1: 
  j1: mov eax, 1
  done1: 

  mov edx, 1
  mov ecx, 3
  cmp edx ,ecx 
  je equal: 
  jmp done2:
  je: mov x, 1
  done2: 
  mov x, 2
;
cmp val1, ecx
jg next: 
jmp done: 

next:
cmp ecx,edx
jg finally:
jmp done:

finally:
mov x, 1
ret 
done: 
mov x,2
ret
main ENDP

END main
