TITLE

; Name: umayer khan 
; Date: 
; ID: 110105667
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	key BYTE 4, 1, -2, 3, -5, 2, 4, -4, -6, 2
	prompt BYTE 'Hello, my name is UmayerKhan', 0
	result BYTE LENGTHOF prompt Dup(?)
	count DWORD 0

.code
main PROC
	
	mov edx, OFFSET prompt
	call WriteString

	mov edi, 0
	_10chars:
	mov eax, 0
	mov esi, 0
	mov ecx, 10
	encrypt_loop:
		mov bl, 0
		mov al, BYTE ptr prompt+[edi]
		cmp al, 0
		je terminate
		add bl, key+[esi]
		mov count, ecx
		mov cl, bl
		jns positive 
		neg cl
		rcl al, cl
		jmp def
		
		positive:
			rcr al, cl
		
		def:

		mov ecx, count
		mov BYTE ptr result+[edi], al
		inc esi
        inc edi
		mov edx, OFFSET result
		loop encrypt_loop
	jmp _10chars

	terminate:
        call Crlf
        call WriteString
	exit

main ENDP
END main
