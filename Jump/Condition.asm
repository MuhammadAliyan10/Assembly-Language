dosseg
.model small
.stack 100h
.data
.code
main proc
    mov ax,6
    cmp ax,5
    js exit
    mov ax,1
    exit:
    mov ah,4ch
    int 21h   
main endp
end main