.model small
.stack 100h    
.code
    main proc
        
       MOV CX, 256
       MOV AH, 2
       MOV DL, 0
       
       AGAIN:
            INT 21H 
            INC DL
            LOOP AGAIN
        
        main endp
    end main