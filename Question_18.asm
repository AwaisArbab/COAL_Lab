.model small
.stack 100h
.data
.code
main proc
    mov bl,9
    mov cx,10
    loop1: 
        mov dl,bl
        add dl,48
        mov ah,2
        int 21h
        
        dec bl
        
        loop loop1
        
        mov ah,4ch
        int 21h
    
	main endp
end main