.section .text
.global _start

_start:
    movl $10, %ebx
    xorl $1, %edx
    movl $1, %eax

    dowhile:
        imull %eax, %edx
        addl $1, %eax
        cmp %eax, %ebx
        jns dowhile

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80 
    