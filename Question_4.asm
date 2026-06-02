.model small
.stack 100h
.data 
user_name db "Awais Arbab$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset user_name
    int 21h
    
    mov ah,4ch
    int 21h
	main endp
end main