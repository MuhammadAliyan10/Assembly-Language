dosseg
.model small
.stack 100h
.data
.code
main proc
 mov bx,1
 mov cx,4
 l1:
    push cx
    mov cx,bx
    mov dx,47
 l2:
    add dx,cx
    mov ah,2
    int 21h
loop l2
mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h
inc bl
pop cx
loop l1
mov ah,4ch
int 21h
main endp
end main