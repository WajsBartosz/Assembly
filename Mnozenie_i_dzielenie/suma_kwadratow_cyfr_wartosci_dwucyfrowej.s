.section .text
.global _start

_start:
    movb $25, %al
    mov $0, %ah
    movb $10, %bl
    
    divb %bl
    movb %ah, %cl
    mulb %al
    movb %al, %dl
    movb %cl, %al
    mulb %al
    addb %al, %dl

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
