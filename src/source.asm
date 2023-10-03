TITLE

; Name: umayer khan 
; Date: 
; ID: 110105667
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib


.data
val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh
val5 DWORD ?
arrayW WORD 100h,200h,300h
byte 20 DUP(0)

.code
main PROC
	

;a increment val 12
mov ax, val2
inc ax;
;b subtract
sub eax, val3
;c sub val 4 from val 2
mov val2, ax
sub val4, ax
;d val5 = -val1 - (val2 + val4).
mov al, val1
neg al
movsx eax, ax      ; Sign-extend AL to EAX (since it's signed)
mov ax, val2       ; Load val2 into AX
add ax, val4       ; Add val4 to AX
neg ax             ; Negate AX (two's complement)
add eax, eax       ; Multiply AX by 2 (since we negated it)
add val5, eax      ; Store the result in val5
;e the value of carry flag is 0 value of sign flag is 1
add val2, 1
call DumpRegs
;f he value of carry flag is 0 value of sign flag is 1
sub val4, 1
call DumpRegs
mov dx, [arrayW +4]
add val4, dx 

     mov val2,7FF0h

     add val2,10h ; a. CF = 0 SF =1 ZF = 0 OF =1
     call DumpRegs
     add val2,1 ; b. CF = 0 SF = 1 ZF = 0 OF =0
     call DumpRegs
     add val2,2 ; c. CF = 0 SF = 1 ZF =0 OF =0
     call DumpRegs

     ; the first step to this is moving  val 1 to eax register 
     ; add val 2 to eax 
     ; sub val 3 from eax
     ; move the final value to eax which is (val 3 - (val2+val1))
	; code goes here
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main