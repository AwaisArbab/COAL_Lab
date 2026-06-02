.model small
.stack 100h
.data
array db 10 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset array
    
    mov cx,10
    loop1:
        mov ah,1
        int 21h
        sub al,30h
        
        mov [si],al
        
        inc si
        
        loop loop1
        
        
    mov si,offset array
    mov cx,10
    output:
        mov dl,[si]
        add dl,48
        mov ah,2
        int 21h
        
        inc si
        
        loop output
            
        mov ah,4ch
        int 21h
	main endp
end main