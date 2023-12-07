dosseg
.model small
.stack 100h
.data
    name1 db 'Aliyan$'
    class db 'BSCS$'
    section db '3A$'
    rn db 'BCS07223017$'
.code
main proc
    mov ax,@data
    mov ds,ax ; heap memory
    mov dx,offset name1
        mov ah,9
        int 21h
        mov dx,10
        mov ah,2
        int 21h
    mov dx,offset class
        mov ah,9
        int 21h
        mov dx,10
        mov ah,2
        int 21h
    mov dx,offset section
        mov ah,9
        int 21h
        mov dx,10
        mov ah,2
        int 21h
    mov dx,offset rn
        mov ah,9
        int 21h
        mov dx,10
        mov ah,2
        int 21h
mov ah,4ch
int 21h
main endp
end main
