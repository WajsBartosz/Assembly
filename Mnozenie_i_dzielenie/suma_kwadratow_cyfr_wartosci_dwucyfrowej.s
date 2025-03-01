.section .text
.global _start

_start:
    movl $45, %esi

    movl %esi, %eax         
    xorl %edx, %edx         
    movl $10, %ecx          
    divl %ecx               

    imull %eax, %eax   
    imull %edx, %edx
    addl %edx, %eax

    movl $1, %eax 
    xorl %ebx, %ebx 
    int $0x80
