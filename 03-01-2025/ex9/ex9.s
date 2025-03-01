.section .data
    table: .long 3, 3, -4, 5, -2, 4, 5, -7
    length: .long (.-table)/4

.section .text
.global _start

_start:
    xorl %eax, %eax
    movl $table, %esi
    movl length, %ebx
    xorl %ecx, %ecx

    dowhile:
        movl (%esi, %ecx, 4), %edx
        cmp $0, %edx
        js skip
        addl $1, %eax

    skip:
        addl $1, %ecx
        cmp %ebx, %ecx
        jl dowhile

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80

    