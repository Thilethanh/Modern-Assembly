BITS 64			;This tell the editor checker to use 64-bit NASM syntax mode

section .data
    text db "Hello, World!", 10
    len equ $ - text

section .text
    global _start

_start:
    mov rax, 1        ; write syscall
    mov rdi, 1        ; stdout
    mov rsi, text
    mov rdx, len
    syscall

    mov rax, 60       ; exit syscall
    mov rdi, 0
    syscall

