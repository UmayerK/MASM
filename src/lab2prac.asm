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
Rval SDWORD 22
Xval SDWORD 26
Yval SDWORD 30
Zval SDWORD 40 


.code
main PROC
mov ax,1000h
inc ax
dec ax
mov eax,Xval
neg eax
mov ebx,Yval
sub ebx,Zval
add eax,ebx
mov Rval,eax
mov cx,1
sub cx,1
mov ax,0FFFFh
inc ax
mov ecx,0B9F6h 
   
    call DumpRegs

    exit

main ENDP
END main
