.model small
.stack 100h
.data
.code

main proc 

    mov dl, 'N'
    mov ah, 2
    int 21h

    mov dl, 'o'
    int 21h

    mov dl, 'o'
    int 21h
    
    mov dl, 'r'
    int 21h

    mov dl, 'a'
    int 21h
    
    mov dl, ' '
    int 21h
    
    mov dl, '6'
    int 21h
    
    mov dl, '8'
    int 21h
    
    mov dl, '9'
    int 21h
    
    mov dl, '0'
    int 21h
    
    mov dl, '6'
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main




