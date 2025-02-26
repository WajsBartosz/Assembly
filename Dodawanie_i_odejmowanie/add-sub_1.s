.section .text
.global _start

_start:
    movb $10, %al
    addb $5, %al

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
