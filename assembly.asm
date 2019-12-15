; Определение переменных в секции данных
section .data
    msg db "][ solov9ev ][", 0x0a ; 0x0a = \n
    .size equ $ - msg

; Код исполнения в секции текста
section .text
    global start

start:
    mov rax, 0x2000004  ; системный вызов записи
    mov rbx, 1          ; стандартный вывод
    mov rsi, msg        ; адрес строки
    mov rdx, msg.size   ; размер строки
    syscall             ; вызов ядра
    
    mov eax, 0x2000001  ; системный вызов выхода
    mov rbx, 0          ; выход из функции с кодом 0 
    syscall             ; вызов ядра