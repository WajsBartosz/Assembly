.section .text
.global _start

_start:
    movl $-30, %edx
    cmp $0, %edx
    js else
    movl %edx, %ebx
    jmp endif

    else:
        imull $-1, %edx
        movl %edx, %ebx    

    endif:
    movl $1, %eax 
    xorl %ebx, %ebx
    int $0x80
 