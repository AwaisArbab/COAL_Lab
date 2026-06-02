.model small
.stack 100h
.data
input_1 db "Num1: $"
input_2 db 10,13,"Num_2: $"  
addition db 10,13,"Addition: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset input_1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al   
    
    mov ah,9
    mov dx,offset input_2
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    add cl,bl
    
    
    mov ah,9
    mov dx,offset addition
    int 21h
    
    mov dl,cl 
    sub dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
	main endp
end main