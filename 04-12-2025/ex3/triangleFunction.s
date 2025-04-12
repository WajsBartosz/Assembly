.section .text
.global _start

_start:
    movl $4, %eax
    movl $5, %ebx
    movl $3, %ecx

    call ifTriangle

    jmp end


    ifTriangle:
        movl %eax, %eax
        movl %ebx, %ebx
        movl %ecx, %ecx
        movl %eax, %edx
        addl %ebx, %edx
        cmp %edx, %ecx
        js else1

        mov $0, %al
        ret

        else1: 
            movl %eax, %edx
            addl %ecx, %edx
            cmp %edx, %ebx
            js else2

            mov $0, %al
            ret

            else2:
                movl %ebx, %edx
                addl %ecx, %edx
                cmp %edx, %eax
                js returnTrue
                
                mov $0, %al
                ret

                returnTrue:
                    mov $1, %al
                    ret


    end:
        movl $0, %eax
        xorl %ebx, %ebx
        int $0x80
