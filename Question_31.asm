.model small
.stack 100h
.data 
stud_name db "Name : Awais Arbab $"
reg_id db "Reg Id : 2412327 $"
email db "Email: bscs2412327@szabist.pk $"
inst db "SZABIST Karachi $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset stud_name
    call display
    
    mov dx,offset reg_id
    call display
    
    mov dx,offset email
    call display
    
    mov dx,offset inst
    call display
    
    mov ah,4ch
    int 21h
    
	main endp 
display proc
    mov ah,9
    int 21h
    
    call newline
    
    ret 
    display endp

newline proc
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    
    ret 
    newline endp

    
end main