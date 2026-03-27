.model small
.stack 100h
.data
num  db 25
msg1 db 'Quotient = $'
msg2 db 0Dh,0Ah,'Remainder = $'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; division
    mov al, num
    mov ah, 0      
    mov bl, 10
    div bl           ; AL = quotient, AH = remainder

    ; save values safely
    mov bh, al       ; quotient
    mov ch, ah       ; remainder

    ; print quotient
    mov ah, 09h
    lea dx, msg1
    int 21h

    mov dl, bh
    add dl, 30h
    mov ah, 02h
    int 21h

    ; print remainder
    mov ah, 09h
    lea dx, msg2
    int 21h

    mov dl, ch
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main