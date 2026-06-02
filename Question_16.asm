.model small
.stack 100h
.data
.code
main proc
    
    mov cx,5
    loop3:
        
        mov ah,1
        int 21h
        
        loop loop3
        
        
        mov ah,4ch
        int 21h
	main endp
end main