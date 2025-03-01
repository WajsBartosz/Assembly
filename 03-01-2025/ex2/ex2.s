.section .text
.global _start

_start:
    movl $20, %ecx
    movl $30, %edx

    subl %edx, %ecx

    cmp $0, %ecx
    js else
    movl %ecx, %ebx
    jmp endif

    else:
        imull $-1, %ecx
        movl %ecx, %ebx

    endif:
        movl $1, %eax
        xorl %ebx, %ebx
        int $0x80
    