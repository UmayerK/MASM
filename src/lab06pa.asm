TITLE 
; Name: Umayer Khan
; Date: Oct 26, 2023
; ID: 110105667
; Description: lab 5 


INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib


INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
TAB = 9 ; ASCII code for Tab
.code
main PROC
call Randomize ; init random generator
 mov eax, 100 ;upper bound
 mov ebx, -300 ;lowerbound 
call newfn
exit
 main ENDP


newfn PROC ;start the loop 
 mov ecx ,50 ; loop 50 times
 mov edx, eax
 L1 : 
 mov eax,edx 
 
 sub eax, ebx ; values -300 - 100
 
 call RandomRange ; generate random int
add eax, ebx
 call WriteInt ; write signed decimal

 mov al, TAB ;  mov whitespace into al 
 call WriteChar ; write the whitespace after every excecution 

 loop L1
 call Crlf
 ret
newfn ENDP ; end the function 

 END main

 