dosseg
.model small
.stack 100h
.data
.code 
main proc
    mov cx,26
    mov dx,65
    L1:
        mov ah,2
        int 21h
        add dx,1
        loop L1
        mov dx,10
        mov ah,2
        int 21h
        mov cx,26
        mov dx,90
    L2:
         mov ah,2
         int 21h
         sub dx,1
         loop L2
        mov ah,4ch
        int 21h
    
        
main endp
end main