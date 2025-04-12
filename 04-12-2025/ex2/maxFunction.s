.section .text
.global _start

_start:
    movl $310, %eax
    movl $470, %ebx

    call max

    jmp end

    max:
        movl %eax, %eax
        movl %ebx, %ebx
        cmp %ebx, %eax
        js else
        
        movl %eax, %ebx
        ret

        else:
            ret

    end:
        movl $1, %eax
        xorl %ebx, %ebx
        int $0x80
