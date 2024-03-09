dosseg
.model small
.stack 100h
.data
    array db 1,2,3
.code
main proc
         mov  ax,@data
         mov  ds,ax
         mov  si,offset array
         mov  cx,3
    l1:  
         mov  dx,[si]
         add  dx,48
         mov  ah,2
         int  21h
         inc  si
         loop l1
main endp
end main