.model small
.stack 100h
.data
student_name db 10,13,"Awais Arbab$"
reg_id db 10,13,"2412326$"
mail db 10,13,"bscs2412327@szabist.pk$"
institute db 10,13,"SZABIST Karachi$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset student_name
    int 21h
    
    mov ah,9
    mov dx,offset reg_id
    int 21h
    
    mov ah,9
    mov dx,offset mail
    int 21h
    
    mov ah,9
    mov dx,offset institute
    int 21h
    
    mov ah,4ch
    int 21h
    
	main endp
end main