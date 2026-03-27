.model small
.stack 100h
.data
length db 3
width  db 2
msg    db 'Area = $'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; calculate area
    mov al, length
    mov bl, width
    mul bl           ; AL*BL ? result in AX

    ; print message
    mov ah, 09h
    lea dx, msg
    int 21h

    ; print result
    mov dl, al       ; move result to DL
    add dl, 30h      ; convert to ASCII
    mov ah, 02h
    int 21h

    ; exit
    mov ah, 4Ch
    int 21h
main endp
end main