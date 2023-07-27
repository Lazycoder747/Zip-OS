section .text
    global _start

_start:
    ; Write "Hello, World!" to the screen
    mov eax, 4          ; '4' is the system call number for sys_write
    mov ebx, 1          ; '1' is the file descriptor for stdout
    mov ecx, msg        ; Load the memory address of 'msg' into ecx
    mov edx, msg_len    ; Length of the message in bytes
    int 0x80            ; Perform the system call

    ; Call the 'kmain' function in C
    call kmain

    ; Exit the program
    mov eax, 1          ; '1' is the system call number for sys_exit
    xor ebx, ebx        ; Exit status 0
    int 0x80            ; Perform the system call

section .text
    global shutdown

shutdown:
    ; Implement the shutdown function here.
    ; This function should trigger the system shutdown sequence.
    ; For simplicity, we'll just print a "Shutting down..." message.

    ; Write "Shutting down..." to the screen
    mov eax, 4          ; '4' is the system call number for sys_write
    mov ebx, 1          ; '1' is the file descriptor for stdout
    mov ecx, shutdown_msg ; Load the memory address of 'shutdown_msg' into ecx
    mov edx, shutdown_msg_len ; Length of the message in bytes
    int 0x80            ; Perform the system call

    ; TODO: Add the actual shutdown sequence here

    ret

section .data
    msg db 'Hello, World!',0x0A   ; The message to be printed (with newline)
    msg_len equ $ - msg           ; Calculate the length of the message

section .data
    shutdown_msg db 'Shutting down...',0x0A  ; The shutdown message (with newline)
    shutdown_msg_len equ $ - shutdown_msg    ; Calculate the length of the message

