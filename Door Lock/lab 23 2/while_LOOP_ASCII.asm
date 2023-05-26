.model small
.stack 100h    
.code
    main proc
        
       MOV CX, 256
       MOV BX, 0
       
       MOV AH, 2
       MOV DL, 0
       
       JMP LOOP_A
       
       WHILE:
            
            INT 21H 
            INC DL
            INC BX
       
       
       LOOP_A:
            CMP CX, BX
            JNE WHILE
        
        main endp
    end main