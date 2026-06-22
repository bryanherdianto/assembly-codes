name "incArray"

.model small
.stack 100h

.data
    array dw 10 dup(?)    ; Define an array to store 10 words (2 bytes each)
    value dw 1234h        ; Value to be stored in each element of the array

.code
main:
    mov ax, @data         ; Load the data segment address
    mov ds, ax 
    mov es, ax

    mov cx, 10            ; Set loop counter to 10 (for 10 elements in the array)
    mov si, offset array  ; Initialize DI to point to the start of the array

store_loop:
    mov ax, value         ; Load the value to be stored into AX
    stosw                 ; Store the value at the memory location pointed to by DI
    add value, 1
    loop store_loop       ; Repeat the loop until CX becomes zero

    mov ax, 4c00h         ; Exit program
    int 21h
end main
