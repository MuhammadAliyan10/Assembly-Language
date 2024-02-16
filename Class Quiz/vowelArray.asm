dosseg
.model small
.stack 100h
.data
     voArr db 'a','e','i','o','u','A','E','I','O','U'
     char  db "Enter a character $"
     vowel db "The character is vowal. $"
     alpha db "The character is alphabet.$"
.code
main proc
          mov  ax,@data
          mov  ds,ax                ; heap memory
          mov  dx,offset char
          mov  ah,9
          int  21h
          mov  ah,1
          int  21h
          mov  si,offset voArr      ;?Offset is used to get the address
          mov  cx,10
     l1:  
          cmp  al,[si]
          je   vow
          inc  si
          loop l1
          mov  dx,10
          mov  ah,2
          int  21h
          mov  dx,13
          mov  ah,2
          int  21h
          mov  dx, offset alpha
          mov  ah,9
          int  21h
          mov  ah,4ch
          int  21h
     vow: 
          mov  dx,10
          mov  ah,2
          int  21h
          mov  dx,13
          mov  ah,2
          int  21h
          mov  dl, offset vowel
          mov  ah,9
          int  21h
          mov  ah,4ch
          int  21h
main endp
end main