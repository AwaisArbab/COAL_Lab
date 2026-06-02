.model small
.stack 100h
.data
inp db "Input: $"
outp db 10,13,"Output: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    call input_procedure
    call output_procedure
    
    mov ah,4ch
    int 21h
	main endp
input_procedure proc
    mov ah,9
    mov dx,offset inp
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    ret
    input_procedure endp
    
output_procedure proc
    mov ah,9
    mov dx,offset outp
    int 21h
    
    mov dl,cl
    mov ah,2
    int 21h
    
    ret 
    output_procedure endp
end main