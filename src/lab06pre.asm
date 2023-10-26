TITLE

; Name: Umayer
; Date: oct 26
; ID: 110105667
; Description: Part b reversing a string

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data

    source BYTE "HELLO",0

.code
main PROC
	
    mov ecx,LENGTHOF source-1
    mov esi,OFFSET source
    mov eax,0
L1: mov al,BYTE PTR[esi]
    push eax
    inc esi
    loop L1

    mov ecx,LENGTHOF source-1
    mov esi,OFFSET source

L2: pop eax
    mov [esi],al
    inc esi
    loop L2
    mov edx, OFFSET source 
    call DumpRegs
    call writestring
	exit

main ENDP
END main



;Load the address of the source string ("hello") into ESI.
;Load the address of the destination string (an empty buffer for the reversed string) into EDI.
;Use a loop to copy characters from the source string to the destination string in reverse order, character by character, while incrementing ESI and decrementing EDI.
;The values of ESI and EDI would change during this process. For example, if we start with ESI=00404005 and EDI=00000000, they would change as follows:

;After copying 'o' from source to destination: ESI=00404006, EDI=00000001
;After copying 'l' from source to destination: ESI=00404007, EDI=00000002
;After copying 'l' from source to destination: ESI=00404008, EDI=00000003
;After copying 'e' from source to destination: ESI=00404009, EDI=00000004
;After copying 'h' from source to destination: ESI=00404010, EDI=00000005

;Null-terminate the destination string: ESI and EDI remain the same.
;The EIP (instruction pointer) would point to the address where the program is executing the code for this string reversal. In this case, EIP=004010CA.