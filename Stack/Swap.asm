dosseg
.model small
.stack 100h
.data
.code
main proc
        mov ax,'1' ;!First the value of a is 1
        mov bx,2 ;!First the value of b is 2
        push ax ;?We push the ax to stack
        push bx ;?We push the bx to stack
        pop ax ;* While poping first the value of bx will pop.
        pop bx ;* While poping second the value of bx will pop.
        ;!Now the ax value is 2 and the bx value is 1.
        mov dx,ax
        mov ah,2
        int 21h
        mov dx,bx
        mov ah,2
        int 21h
        mov  ah,4ch
        int  21h
main endp
end main


;!2
;!1
;? ax = 2
;? bx = 1