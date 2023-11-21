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
    array DWORD 10h,20h,30h,40h,50h,60h
    
.code
main PROC
  mov esi,0 ; first element is esi 
  mov edi, LENGTHOF array last element is edi 


  mov ecx, 3
  L1:
  mov eax, array[esi]; store first element in eax
  xchg array[esi], edi ; switch last with first 
mov array[esi],eax

array rn 60 20 30 40 50 10

  loop L1


    call DumpRegs
    exit

main ENDP
END main

