dosseg
.model small
.stack 100h
.data
.code
main proc
    mov ax,3
    cmp ax,6
    js adds
    jns exit
    adds:
    mov ax,2
    exit:
    mov ah,4ch
    int 21h 
main endp
end main