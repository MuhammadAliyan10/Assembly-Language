dosseg
.model small
.stack 100h
.data
     array db 'aliy'
.code
main proc
          mov  ax,@data
          mov  ds,ax
          mov  si,offset array
          mov  cx,4
     l1:  
          mov  bx,[si]
          push bx
          inc  si
          loop l1
          mov  cx,4
     l2:  
          pop  dx
          mov  ah,2
          int  21h
          loop l2
          mov  ah,4ch
          int  21h
main endp
end main


;bx = 0 -> bx = a -> a -> bx = l; l ; 2 ;bx = i;
;dx = i; i -> dx = l; -> dx = a

