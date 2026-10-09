
.data
.text
.globl main

main:
    # Считываем целое число
    li a7, 5
    ecall

    # Сравниваем введённое число с 10
    li t0, 10
    beq a0, t0, equal

    # Если числа не равны, выводим 0
    li a0, 0
    j print_result

equal:
    # Если числа равны, выводим 1
    li a0, 1

print_result:
    li a7, 1
    ecall

    # Завершаем программу
    li a7, 10
    ecall