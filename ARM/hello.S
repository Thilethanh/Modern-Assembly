// aarch64-linux-gnu-as hello.S -o hello.o
// aarch64-linux-gnu-ld hello.o -o hello
// qemu-aarch64 ./hello


.data
message:
    .ascii "Hi\n"

.text
.global _start

_start:
    mov x0, #1              // fd = stdout
    ldr x1, =message        // buffer
    mov x2, #3              // length
    mov x8, #64             // sys_write
    svc #0

    mov x0, #0
    mov x8, #93             // sys_exit
    svc #0
