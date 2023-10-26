TITLE ; Random numbers
;Umayer Khan
;110105667
;I didnt hs



INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib


INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
TAB = 9 ; ASCII code for Tab
.code
main PROC
call Randomize ; init random generator
call Mynewfn
exit
 main ENDP


 Mynewfn PROC
 ; Generate ten pseudo - random integers from
 mov ecx ,50 ; loop 10 times
 L1 : 
 mov eax ,400 ; upper bound
 call RandomRange ; generate random int

 sub eax ,300 ; values -50 to +49
 call WriteInt ; write signed decimal

 mov al , TAB ; horizontal tab
 call WriteChar ; write the tab

 loop L1
 call Crlf
 ret
Mynewfn ENDP

 END main