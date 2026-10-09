
.data
.text
.globl main

main:
    # Вводим x
    li a7, 5
    ecall
    mv t0, a0

    # y = 118
    li t1, 118

    # Находим минимум и максимум
    ble t0, t1, x_is_min
    mv t2, t1       # t2 = min
    mv t3, t0       # t3 = max
    j start_loop

x_is_min:
    mv t2, t0
    mv t3, t1

start_loop:
    # Если текущее число больше максимума, завершаем
    bgt t2, t3, finish

    # Выводим текущее число
    mv a0, t2
    li a7, 1
    ecall

    # Выводим пробел
    li a0, 32
    li a7, 11
    ecall

    # Прибавляем шаг h = 10
    addi t2, t2, 10
    j start_loop

finish:
    # Перевод строки
    li a0, 10
    li a7, 11
    ecall

    # Завершаем программу
    li a7, 10
    ecall