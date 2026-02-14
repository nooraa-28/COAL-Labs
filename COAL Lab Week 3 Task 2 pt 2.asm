.model small
.stack 100h
.data
num1 db 7
num2 db 1
.code

main proc
    mov ax, @data
    mov ds, ax

    mov al, num1   ; direct addressing
    add al, num2   ; direct addressing

    add al, 30h    
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h

main endp
end main
