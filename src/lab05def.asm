TITLE

; Name: Umayer Khan
; Date: 24th October 2023
; ID: 110105667
; Description: Assignment 2, Section 2

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

PBYTE TYPEDEF PTR BYTE
PSBYTE TYPEDEF PTR SBYTE
PWORD TYPEDEF PTR WORD
PSWORD TYPEDEF PTR SWORD
PDWORD TYPEDEF PTR DWORD
PSDWORD TYPEDEF PTR SDWORD
PQWORD TYPEDEF PTR QWORD

.data

    fib1 BYTE 1
    fib2 BYTE 1

;b. 
    var1 PBYTE 02h
    var2 SBYTE -14h
    var3 PWORD 2000h
    var4 SWORD -2000
    var5 PDWORD 12345678h
    var6 SDWORD -87654312h
    var7 PQWORD 12341234h

    array DWORD 10000h,20000h,30000h,40000h

.code
main PROC
;a.
    mov ecx,7
    mov eax,0
L1: mov al,fib1
    call DumpRegs
    add al,fib2
    mov dl,fib2
    mov fib1,dl
    mov fib2,al
    inc esi
    loop L1

;c.
    mov ecx,LENGTHOF array
    mov eax,0
    mov esi,0
L2: add eax,array[esi*4]
    inc esi
    loop L2

    call DumpRegs


	exit

main ENDP
END main
