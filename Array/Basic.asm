dosseg
.model small
.stack 100h
.data
    array db 'a','b','c'    ;! Value save in indexing
.code
main proc
         mov  ax,@data           ;?To use the data segment
         mov  ds,ax
         mov  si,offset array    ;?Offset is used to get the address
         mov  cx,3               ;!Loop will run 3 times
    l1:  
         mov  dx,[si]            ;?We are storing the 0 index value to dx
         mov  ah,2               ;!For showing the output
         int  21h                ;!For showing the output
         inc  si                 ;* Increment 0 to 1
         loop l1                 ;? Move to loop 1
         mov  ah,4ch
         int  21h
main endp
end main