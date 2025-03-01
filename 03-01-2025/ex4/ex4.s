.section .text
.global _start

_start:
    movl $30, %ebx
    movl $200, %ecx
    movl $-100, %edx

    cmp %ecx, %ebx
    js else
    movl %ebx, %esi
    jmp continue

    else:
        movl %ecx, %esi

    continue:
        cmp %esi, %edx
        js else2
        movl %edx, %eax
        jmp endif

        else2:
            movl %esi, %eax
        
        endif:
            movl $1, %eax
            xorl %ebx, %ebx
            int $0x80
