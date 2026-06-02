.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax  
    
    mov ah,1
    int 21h
    mov bl,al  
               
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
                
    mov ah,1
    int 21h
    mov cl,al
    
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
     
    mov dl,'('
    mov ah,2
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    mov dl,'+'
    mov ah,2
    int 21h   
    
    mov dl,cl
    mov ah,2
    int 21h
    
    mov dl,'='
    mov ah,2
    int 21h
    
    add bl,cl
    
    mov dl,bl
    sub dl,48
    mov ah,2
    int 21h
    
    mov dl,')'
    mov ah,2
    int 21h
    
    
    mov ah,4ch
    int 21h
	main endp
end main