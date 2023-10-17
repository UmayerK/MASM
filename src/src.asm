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

PBYTE TYPEDEF PTR BYTE ; pointer to bytes
PWORD TYPEDEF PTR WORD ; pointer to words
PDWORD TYPEDEF PTR DWORD ; pointer to doublewords

.data
    myBytes BYTE 10h,20h,30h,40h
    myWords WORD 3 DUP(?),2000h
    
    myBytesLabel PBYTE myBytes
    myWordsLabel PWORD myWords

    myString BYTE "ABCDE"

.code
main PROC
    
    ; code goes here
    mov dx, WORD ptr [myBytes]
    mov al, BYTE ptr [myWords + 1]
    mov eax, DWORD ptr [myBytes]
    mov eax, TYPE myBytes;
    call DumpRegs ; 
    mov eax, LENGTHOF myBytes;
    call DumpRegs
    mov eax, SIZEOF myBytes;
    call DumpRegs
    mov eax, TYPE myWords;
    call DumpRegs
    mov eax, LENGTHOF myWords;
    call DumpRegs
    mov eax, SIZEOF myWords;
    call DumpRegs
    mov eax, SIZEOF myString;
    call DumpRegs

    exit

main ENDP
END main

