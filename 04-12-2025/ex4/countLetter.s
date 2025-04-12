.global _start
.section .data
    text: .ascii "DsDDFacxzCsVaSEWSSSSS0"

.section .text

_start:
    lea text, %edi
    movl $0, %edx

    while:
        movb (%edi), %al
        cmpb $65, %al
        jl skip
        cmpb $90, %al 
        jg skip
        addl $1, %edx

        skip:
            inc %edi
            movb (%edi), %al
            cmpb $0, %al
            movl %edx, %eax
            je end
            jmp while

    end:
        movl $0, %eax
        xorl %ebx, %ebx
        int $0x80

