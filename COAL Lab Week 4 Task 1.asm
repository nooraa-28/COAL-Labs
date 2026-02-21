.model small
.stack 100h
.data
.code

main proc

    mov al, 5      ; First 8 bit number
    mov bl, 3      ; Second 8 bit number

    add al, bl     ; Add numbers
    mov cl, al     ; Store result in CL register

    mov ah, 4ch    ; Exiting program
    int 21h 
    
    main endp

end main


