;--------------------------------
; Программа вычисления выражения
;--------------------------------

%include 'in_out.asm' 		; подключение внешнего файла

SECTION .data

f1: DB 'x1 = ',0
r1: DB 'f(x1) = ',0
f2: DB 'x2 = ',0
r2: DB 'f(x2) = ',0


SECTION .bss
x1: RESB 80
x2: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, f1
call sprint

mov ecx, x1
mov edx, 80
call sread

mov eax, f2
call sprint

mov ecx, x2
mov edx, 80
call sread



mov eax,x1 	
call atoi 	

add eax, 5
mov ebx, eax
mul ebx		; EAX = EAX*EBX

sub eax, 3

mov edi, eax

mov eax, r1	
call sprint
mov eax,edi 	
call iprintLF

mov eax,x2	
call atoi 	

add eax, 5
mov ebx, eax
mul ebx		; EAX = EAX*EBX

sub eax, 3

mov edi, eax

mov eax, r2	
call sprint
mov eax,edi 	
call iprintLF

call quit


