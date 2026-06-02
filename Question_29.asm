.model small
.stack 100h
.data
string_var db "Hello World$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset string_var
    
    mov cx,11
    loop_push:
        mov al,[si]
        push ax
        
        inc si
        
        loop loop_push
    
    mov cx,11    
    loop_pop: 
        pop ax
        mov dl,al
        mov ah,2
        int 21h 
        
        loop loop_pop
        
        mov ah,4ch
        int 21h
	main endp
end main