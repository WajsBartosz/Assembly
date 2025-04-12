.section .text
.global _start

_start:
    movl $-240, %eax
    call abs

    jmp end

    abs:
        movl %eax, %eax
        cmp $0, %eax
        js else
        ret

        else:
            imull $-1, %eax
            ret

    end:
        movl $1, %eax
        xorl %ebx, %ebx
        int $0x80
