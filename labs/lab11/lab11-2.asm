%include 'in_out.asm'

SECTION .data
filename db 'name.txt', 0h 	; Имя файла
msg db 'Как Вас зовут? ', 0h 	; Сообщение
msg2 db 'Меня зовут ', 0h 	; Сообщение_2


SECTION .bss
name resb 255 		; переменная для вводимой строки

SECTION .text
global _start
_start:

; --- Печать сообщения `msg`
mov eax,msg
call sprint

; ---- Запись введеной с клавиатуры строки в `name`
mov ecx, name
mov edx, 255
call sread

; --- Создание и открытие файла ('sys_creat')
mov ecx, 0777o 		; установка прав доступа
mov ebx, filename 	; имя создаваемого файла
mov eax, 8 		; номер системного вызова `sys_creat`
int 80h 		; вызов ядра

; --- Запись дескриптора файла в `esi`
mov esi, eax

; --- Записываем в файл msg2 (`sys_write`)
mov edx, 255		; количество байтов для записи
mov ecx, msg2		; адрес строки для записи в файл
mov ebx, eax 		; дескриптор файла
mov eax, 4 		; номер системного вызова `sys_write`
int 80h 		; вызов ядра

; --- Расчет длины введенной строки
mov eax, name	 	; в `eax` запишется количество
call slen 		; введенных байтов

; --- Закрываем файл (`sys_close`)
mov ebx, esi
mov eax, 6
int 80h
call quit
