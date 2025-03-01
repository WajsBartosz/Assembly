.section .text
.global _start

_start:
    movl $3, %eax
    movl $2, %ebx
    movl $-4, %edx
    
    imull %eax, %eax
    addl %ebx, %eax
    movl %edx, %esi
    xorl %edx, %edx
    idivl %esi, %eax
    movl %eax, %ecx

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
