.model small
.stack 100h
.data
.code
main proc
     mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    mov ah,1
    int 21h
    mov cl,al
    sub cl,24
    imul cl
    add ax,48
    mov dx,ax
    mov ah,2 
    int 21h


    main endp
end main
