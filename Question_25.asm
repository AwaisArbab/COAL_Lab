.model small
.stack 100h
.data 
array1 db 0,1,2,3,4,5,6,7,8,9
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset array1
    
    mov cx,10
    loop1:
        mov dl,[si]
        add dl,48
        mov ah,2
        int 21h
        
        inc si
        
        
        mov dl,13
        mov ah,2
        int 21h
        mov dl,10
        mov ah,2
        int 21h
        loop loop1
        
        
        mov ah,4ch
        int 21h
	main endp
end main