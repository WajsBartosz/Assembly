.section .text
.global _start

_start:
    movl $3, %ebx
    movl $4, %ecx
    movl $1, %eax
    movl %ebx, %edx
    dowhile:
        imull %ebx, %edx
        addl $1, %eax 
        cmp %ecx, %eax
        js dowhile

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
