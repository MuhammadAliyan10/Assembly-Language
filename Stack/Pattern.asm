dosseg
.model small
.stack 100h
.data
.code
main proc
    mov bx,1 ;!The value of bx is 1
    mov cx,5 ;!Lopp will run 5 times
    l1:
        push cx ;! Pushing the value 
        mov cx,bx
    l2:
        mov dl,'*'
        mov ah,2
        int 21h
    loop l2
    mov dx,10 ;!----
    mov ah,2 ;!----
    int 21h ;* For new line
    mov dx,13 ;!----
    mov ah,2 ;!----
    int 21h ;!----
    inc bl ;? Increase the value by 1 to 5
    pop cx
    loop l1
         mov  ah,4ch
         int  21h
main endp
end main