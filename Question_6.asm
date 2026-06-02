.model small
.stack 100h
.data  
start db "Input: $"
answer db 10,13,"Lower Case: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset start
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov dx,offset answer
    mov ah,9
    int 21h
    
    mov dl,cl
    add dl,32
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
	main endp
end main