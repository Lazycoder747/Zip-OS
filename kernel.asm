section .text
    global _start

_start:
    ; Write "Hello, World!" to the screen
    mov eax, 4          ; '4' is the system call number for sys_write
    mov ebx, 1          ; '1' is the file descriptor for stdout
    mov ecx, msg        ; Load the memory address of 'msg' into ecx
    mov edx, msg_len    ; Length of the message in bytes
    int 0x80            ; Perform the system call

    ; Exit the program
    mov eax, 1          ; '1' is the system call number for sys_exit
    xor ebx, ebx        ; Exit status 0
    int 0x80            ; Perform the system call

section .data
    msg db 'Hello, World!',0x0A   ; The message to be printed (with newline)
    msg_len equ $ - msg           ; Calculate the length of the message
; Now we can print "Hello, World!" to the screen!
