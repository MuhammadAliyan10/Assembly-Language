dosseg
.model small
.stack 100h
.data
    msg1 db 10,'Numbers are Equal$'
    msg3 db 10,'Numbers are Unequal &  Second number is greater than first number $'
    msg4 db 10,'Numbers are Unequal & Second number is smaller than first number $'
    msg5 db 10,'Enter valid number$'
.code
main proc
           mov ax,@data
           mov ds,ax
           mov ah,1
           int 21h
           mov bl,al
           mov ah,1
           int 21h
           cmp al,bl
           jz  Equal
           jg  great
           js  change
    exit:  
           mov dx,offset msg5
           mov ah,9
           int 21h
           mov ah,4ch
           int 21h
    Equal: 
           mov dx,offset msg1
           mov ah,9
           int 21h
           mov ah,4ch
           int 21h
    great: 
           mov dx,offset msg3
           mov ah,9
           int 21h
           mov ah,4ch
           int 21h
    change:
           mov dx,offset msg4
           mov ah,9
           int 21h
           mov ah,4ch
           int 21h
           mov ah,4ch
           int 21
main endp
end main