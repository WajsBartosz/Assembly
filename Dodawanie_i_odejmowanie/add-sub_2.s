.section .text
.global _start

_start:
    movb $30, %al
    sub $10, %al

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
