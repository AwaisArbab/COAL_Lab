.model small
.stack 100h
.data
num1 db 0
num2 db 0
num3 db 0
sum db 0
result db 10,13,"Result: $"  
inp1 db 10,13,"Input1: $"
inp2 db 10,13,"Input2: $"
inp3 db 10,13,"Input3: $"
answer db 10,13,"Result: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset inp1
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov num1,al
    
    mov ah,9
    mov dx,offset inp2
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov num2,al
    
    mov ah,9
    mov dx,offset inp3
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov num3,al
    
    
    mov cl,num1
    mov bl,num2
    add cl,bl
    
    mov bl,0
    
    mov bl,num3
    add cl,bl
    
    
    
    mov ah,9
    mov dx,offset answer
    int 21h
    
    mov sum,cl
    mov dl,sum
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
	main endp
end main