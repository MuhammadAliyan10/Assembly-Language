dosseg
.model small
.stack 100h
.data
    reminder db ?
    qofi     db ?
.code
main proc
         mov ax,26
         mov bl,5
         div bl
         mov qofi,al
         mov reminder,ah
         mov dl,qofi
         add dl,48
         mov ah,2
         int 21h
         mov dx,10
         mov ah,2
         int 21h
         mov dx,13
         mov ah,2
         int 21h
         mov dl,reminder
         add dl,48
         mov ah,2
         int 21h
         mov ah,4ch
         int 21h
main endp
end main