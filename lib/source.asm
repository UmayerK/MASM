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


; Create user-defined types.
PBYTE TYPEDEF PTR BYTE ; pointer to bytes
PWORD TYPEDEF PTR WORD ; pointer to words
PDWORD TYPEDEF PTR DWORD ; pointer to doublewords


.data
; data declarations go here
arrayB BYTE 10h, 20h, 30h
arrayW WORD 1, 2, 3
arrayD DWORD 4, 5, 6
; Create some pointer variables.
ptr1 PBYTE arrayB
ptr2 PWORD arrayW
ptr3 PDWORD arrayD
myBytes BYTE 10h,20h,30h,40h
myWords WORD 3 DUP(?),2000h
myString BYTE "ABCDE"

.code
main PROC
mov esi, ptr1
mov al, [esi] ; (a) ; AL is 10
call DumpRegs ; displays registers in console

mov esi, ptr2
mov ax, [esi] ; (b)AX is 3FFF
call DumpRegs ; displays registers in console
mov esi, ptr3
mov eax, [esi] ; (c) EAX = 00000004
call DumpRegs ; displays registers in console
mov eax,0
mov ecx,10 ; outer loop counter
L1:
mov eax,3
mov ecx,5 ; inner loop counter
L2:
  add eax,5
   loop L2 ; repeat inner loop
loop L1 ; repeat outer loop
;We will never know what EAX  as the inner loop never gets added to ecx therefore there will be an infinite loop







	; code goes here
	

	exit

main ENDP
END main