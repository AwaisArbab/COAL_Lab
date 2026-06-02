.model small
.stack 100h
.data
.code
main proc  
    
    mov cx,4
    take_input:
        mov ah,7
        int 21h
        
        mov dl,'*'
        mov ah,2
        int 21h
        
        loop take_input
        
        mov ah,4ch
        int 21h
	main endp
end main