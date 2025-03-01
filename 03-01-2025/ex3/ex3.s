.section .text
.global _start

_start:
    movl $50, %eax
    movl $30, %ebx

    cmp %ebx, %eax
    js else
    movl %eax, %ecx
    jmp endif

    else:
        movl %ebx, %ecx

    endif:
        movl $1, %eax
        xorl %ebx, %ebx
        int $0x80
