dosseg
.model small
.stack 100h
.data
.code
main proc
mov ax,3
mov bl,5
imul bl
add ax,48
mov dx,ax
mov ah,2
int 21h
main endp
end main