.model small
.stack 100h
.data 
even_array db 0,2,4,6,8
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset even_array
    mov cx,5
    loop1:
        mov dl,[si]
        add dl,48
        mov ah,2
        int 21h
        
        inc si
        
        mov dl,32
        mov ah,2
        int 21h
        
        loop loop1
        
        mov ah,4ch
        int 21h
	main endp
end main