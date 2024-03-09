dosseg
.model small
.stack 100h
.data
    qofi     db ?
    reminder db ?
.code
main proc
         mov ax,26
         mov bl,5
         div bl
         mov qofi,al        ;! The qofi store in low part
         mov reminder,ah    ;! The reminder is store in high part
         mov dl,qofi
         add dx,48
         mov ah,2
         int 21h
         mov dx,13
         mov ah,2
         int 21h
         mov dx,10
         mov ah,2
         int 21h
         mov dl,reminder
         add dx,48
         mov ah,2
         int 21h
         mov dx,13
         mov ah,2
         int 21h
         mov dx,10
         mov ah,2
         int 21h
         mov ah,4ch
         int 21h
main endp
end main