.model small
.stack 100h
.data
    msg1 db "Enter the Hexadecimal Number (A to F) : $"
    msg2 db "Output is : $"
    
    char db ?
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov cl, 100
        ;mov dx, 0
        
    Loopp:
        
        mov ah,2 
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
        
            
        lea dx, msg1
        mov ah, 9
        int 21h
        
        
        mov ah, 1
        int 21h
        
        mov bl, al
        
        sub bl, 17
        
        mov ah,2 
        mov dl, 0dh
        int 21h
        mov dl, 0ah
        int 21h
        
        lea dx, msg2
        mov ah, 9
        int 21h
        
        mov ah, 2
        mov dl, 49
        int 21h
        mov dl, bl
        int 21h
        
        
        dec cx
        jnz Loopp
        
        mov ah, 4ch
        int 21h
        
        main endp
    end main