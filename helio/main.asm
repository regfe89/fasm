format ELF64
public _start

msg db "розъебу нахой", 0xA, 0
len = $-msg

_start:
    mov rax, 4 ; 4 - write
    mov rbx, 1 ; 1 - stdout
    mov rcx, msg
    mov rdx, len
    int 0x80
    call exit

exit:
    mov rax, 1 ; 1 - exit
    mov rbx, 0 ; 0 - return
    int 0x80
