.section .text
.global _start

_start:
    movb $5, %al
    movb $10, %bl
    movb $0, %cl

    mulb %al
    addb %al, %cl

    movb %bl, %al
    mulb %al
    addb %al, %cl

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
