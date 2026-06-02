.model small
.stack 100h
.data
.code
main proc
    mov cx,5
    Outer: 
        mov dl,'#'
        mov ah,2
        int 21h
        
        mov bx,cx
        
        mov cx,3
        
        inner: 
            mov dl,'*'
            mov ah,2
            int 21h
            
            loop inner
            
            
            mov cx,bx
            
            loop outer
            
            
            mov ah,4ch
            int 21h
    
	main endp
end main