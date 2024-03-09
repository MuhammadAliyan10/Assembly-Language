dosseg
.model small
.stack 100h
.data
    msg1 db 10,'Numbers are Equal$'
    msg2 db 10,'Numbers are Unequal & Second number is greater than first number $'
    msg3 db 10,'Numbers are Unequal & Second number is smaller than first number $'
    msg4 db 10,'Enter valid number$'
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
            jz  equal
            jg  Greater
            js  smaller
    equal:  
            mov dx,offset msg1
            mov ah,9
            int 21h
            mov ah,4ch
            int 21h
    Greater:
  
            mov dx,offset msg2
            mov ah,9
            int 21h
            mov ah,4ch
            int 21h
    smaller:
         
            mov dx,offset msg3
            mov ah,9
            int 21h
            mov ah,4ch
            int 21h
    exit:   
           
            mov dx,offset msg4
            mov ah,9
            int 21h
            mov ah,4ch
            int 21h
            
main endp
end main