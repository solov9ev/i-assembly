# I-ASSEMBLY
Написание программного обеспечения на NASM

## Компиляция, линковка, запуск
```bash
# Компиляция и линковка
solov9ev: make
# Запуск
solov9ev: ./assembly
```

## Отладка NASM кода с помощью LLDB
```bash
# Указание целевого файла
(lldb) file $(file-path)

# Установка точки останова
(lldb) breakpoint set -name $(procedure-name)
# или более сокращенный вариант
(lldb) br s -n $(procedre-name)

# Начало отладки
(lldb) run
# или более сокращенный вариант
(lldb) r

# Перейти к следующей инструкции
(lldb) next
# или более сокращенный вариант
(lldb) n

# Следующая точка останова
(lldb) continue
# или более сокращенный вариант
(lldb) c

```