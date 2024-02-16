dosseg
.model small
.stack 100h
.data
    msg1 db '..........Aliyan_Nadeem..........$'
    msg2 db 10, 'Enter 1 for Addition$'
    msg3 db 10,'Enter 2 for Subtraction$'
    msg4 db 10, 'Enter 3 for Multiplication$'
    msg5 db 10,'Enter 4 for Division$'
    msg6 db 10, 'Sorry & Try Again & Enter Valid number$'
    msg7 db 'Quotient: $'
    msg8 db '    Remender: $'
    quo db ?
    rem db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dx,offset msg1
    mov ah,9
    int 21h
    mov dx,offset msg2
    mov ah,9
    int 21h
    mov dx,offset msg3
    mov ah,9
    int 21h
    mov dx,offset msg4
    mov ah,9
    int 21h
    mov dx,offset msg5
    mov ah,9
    int 21h
    mov dx,10
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    cmp al,'1'
    je first
    cmp al,'2'
    je second
    cmp al,'3'
    je third
    cmp al,'4'
    je forth
    exit:
    mov dx,offset msg6
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    first:
    call Addition
    second:
    call subtrac
    third:
    call Multiplication
    forth:
    call Division
    Addition:
    mov dx,10
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    mov dl,'+'
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov cl,al
    mov dl,'='
    mov ah,2
    int 21h
    mov dl,cl
    add dl,bl
    sub dl,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    subtrac:
    mov dx,10
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov cl,al
    mov dl,'-'
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    mov dl,'='
    mov ah,2
    int 21h
    mov dl,cl
    sub dl,bl
    add dl,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    Multiplication:
    mov dx,10
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    mov dl,'*'
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov cl,al
    sub cl,48
    mov dl,'='
    mov ah,2
    int 21h
    mov al,cl
    mul bl
    mov dx,ax
    add dx,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    Division:
    mov dx,10
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    sub al,48
    mov ah,00
    mov cx,ax
    mov dl,'/'
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    mov dl,'='
    mov ah,2
    int 21h
    mov ax,cx
    div bl
    mov quo,al
    mov rem,ah
    mov dx,offset msg7
    mov ah,9
    int 21h
    mov dl,quo
    add dl,48
    mov ah,2
    int 21h
    mov dx,offset msg8
    mov ah,9
    int 21h
    mov dl,rem
    add dl,48
    mov ah,2
    int 21h
mov ah,4ch
int 21h
main endp
end main