.model small
.stack 100h
.data
var1 db 10,13,"HELLO WORLD$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset var1
    int 21h
    
    mov ah,4ch
    int 21h
	main endp
end main