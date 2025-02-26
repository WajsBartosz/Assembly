.section .text
.global _start

_start:
    movb $23, %al
    mov $0, %ah
    movb $10, %bl
    divb %bl
    movb %al, %cl
    addb %ah, %cl

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
