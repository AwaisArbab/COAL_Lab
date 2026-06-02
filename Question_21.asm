.model small
.stack 100h
.data
.code
main proc
    mov bl,90
    mov cx,26
    loop1:
        mov dl,bl
        mov ah,2
        int 21h
        
        dec bl
        
        loop loop1
        
        mov ah,4ch
        int 21h
	main endp
end main