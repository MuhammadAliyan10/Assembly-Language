dosseg
.model small
.stack 100h
.data
.code
main proc
mov bl,2 ;! By default the mul operation peroform in bx register
mov al,2
mul bl
mov dx,ax
add dx,48
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main