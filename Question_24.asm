.model small
.stack 100h
.data 
count dw 1
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov cx,5
    outer:
        mov bx,cx
        
        mov cx,count
        inner:
            mov dl,'*'
            mov ah,2
            int 21h
            
             
            loop inner
             
            inc count
            
            mov dl,10
            mov ah,2
            int 21h
            mov dl,13
            mov ah,2
            int 21h
             
            mov cx,bx
            loop outer
            
            mov ah,4ch
            int 21h
	main endp
end main