dosseg
.model small
.stack 100h
.data
.code
main proc
    mov bx,5 ;!First the value of bx is 5
    mov cx,5 ;!The loop will run 5 times
    l1:
        push cx ;!5 to 1
        mov cx,bx
    l2:
        mov dl,'*' ;!Every itration the value of start increase
        mov ah,2 ;! Use to print that star
        int 21h
    loop l2
    mov dx,10 ;! ----
    mov ah,2 ;! ----
    int 21h ;* For new line
    mov dx,13 ;! ----
    mov ah,2 ;! ----
    int 21h ;! ----
    dec bl ;? We are decreasing 5 to 1
    pop cx ;? Then we will pop the value c
    loop l1
         mov  ah,4ch
         int  21h
main endp
end main