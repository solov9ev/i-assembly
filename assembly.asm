; Определение переменных в секции данных
section .data
    msg db "][ solov9ev ][", 0x0a, 0x00
    .size equ $ - msg

; Код исполнения в секции текста
section .text
    global start

start:
    mov rax, 0x2000004  ; системный вызов записи
    xor rbx, rbx        ; обнуление и инкремент регистра rbx как более быстрая мнемоника над mov
    inc rbx             ; стандартный вывод
    mov rsi, msg        ; адрес строки
    mov rdx, msg.size   ; размер строки
    syscall             ; вызов ядра

    mov rax, 0x2000001  ; системный вызов выхода
    xor rbx, rbx        ; выход из функции с кодом 0 
    syscall             ; вызов ядра