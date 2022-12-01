%include 'in_out.asm'
section .data
msg11 db 'Введите X: ',0h
msg12 db 'ВВедите A: ',0h
msg2 db "f(x) = ",0h
section .bss
max resb 10
X resb 10
A resb 10
section .text
global _start
_start:
; ---------- Вывод сообщения 'Введите X: ' и ввод 'X'
mov eax,msg11
call sprint
mov ecx, X
mov edx, 10
call sread
; ---------- Вывод сообщения 'Введите A: ' и ввод 'A'
mov eax,msg12
call sprint
mov ecx, A
mov edx, 10
call sread
; ---------- Преобразование символов в число
mov eax,X
call atoi 	; Вызов подпрограммы перевода символа в число
mov [X],eax 	; запись преобразованного числа в 'X'
mov eax,A
call atoi 	; Вызов подпрограммы перевода символа в число
mov [A],eax 	; запись преобразованного числа в 'A'
; ---------- Записываем 'A' в переменную 'max'
mov ecx,[A] ; 'ecx = A'
mov [max],ecx ; 'max = A'
; ---------- Сравниваем 'A' и 'X'
mov ecx, [A]
cmp ecx, [X] 	; Сравниваем 'A' и 'X'
jg func		; если 'A>X', то переход на метку 'func'
mov ecx, [X]	; иначе 'max = X'
mov [max], ecx
; ---------- f(x) = max(a, x) + 10 
func:
mov eax, [max]
add eax, 10	; EAX = EAX + 10
; ---------- Вывод результата
fin:
mov ecx, eax
mov eax, msg2
call sprint 	; Вывод сообщения 'f(x) = '
mov eax, ecx
call iprintLF 	; Вывод результата
call quit 	; Выход

