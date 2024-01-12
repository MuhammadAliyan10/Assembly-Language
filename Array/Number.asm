dosseg
.model small
.stack 100h
.data
    array db 1,2,3    ;!This will treat him like ascii
.code
main proc
         mov  ax,@data
         mov  ds,ax
         mov  si,offset array
         mov  cx,3
    l1:  
         mov  dx,[si]
         add  dx,48              ;* The value of 0 is 48
         mov  ah,2
         int  21h
         inc  si                 ;?Increment in si 0 to 1
         loop l1
         mov  ah,4ch
         int  21h
main endp
end main