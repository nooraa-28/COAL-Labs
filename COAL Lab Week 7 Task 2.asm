 .model small
.stack 100h
.data
num db 2
msg db 'Cube = $'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; calculate cube
    mov al, num
    mov bl, num
    mul bl          ; 2*2 = 4

    mov bl, num
    mul bl          ; 4*2 = 8

    ; save result safely
    mov bh, al      ; ?? store result in BH

    ; print message
    mov ah, 09h
    lea dx, msg
    int 21h

    ; print result
    mov dl, bh      ; restore correct value
    add dl, 30h     ; convert to ASCII
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main