.section .data
    table: .long 3, 3, 4, 5, 2, 4, 6
    length: .long (.-table)/4

.section .text
.global _start

_start:
    movl $table, %esi
    movl length, %ebx
    movl $0, %ecx
    xorl %eax, %eax

    dowhile:
        addl (%esi, %ecx, 4), %eax
        addl $1, %ecx
        cmp %ebx, %ecx
        jl dowhile

    divl %ebx

    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80    
