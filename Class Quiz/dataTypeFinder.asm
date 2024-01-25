dosseg
.model small
.stack 100h
.data
    alpArray         db "ABCDEFGHIJKLAMOPQRSTUVWXYZabcdefghijklmopqrstuvwxyz"
    numArray         db "1234567890"
    char             db "Enter a value: $"
    alphabet         db "The character is alphabet.$"
    number           db "The character is number.$"
    specialCharacter db "The character is special Character.$"
.code
main proc
         mov  ax,@data
         mov  ds,ax
         mov  dx,offset char
         mov  ah,9
         int  21h
         mov  ah,1
         int  21h
    ;! For Aplphabet check
         mov  si,offset alpArray
         mov  cx,54
    l1:  
         cmp  al,[si]
         je   alph
         inc  si
         loop l1
        
    ;!For number check
         mov  si,offset numArray
         mov  cx,10
    l2:  
         cmp  al,[si]
         je   num
         inc  si
         loop l2
    ;!For new Line
         mov  dx,10
         mov  ah,2
         int  21h
         mov  dx,13
         mov  ah,2
         int  21h
    ;!If no jump executed
         mov  dx, offset specialCharacter
         mov  ah,9
         int  21h
         mov  ah,4ch
         int  21h

    ;!Jump to aplha
    alph:
         mov  dx,10
         mov  ah,2
         int  21h
         mov  dx,13
         mov  ah,2
         int  21h
         mov  dl, offset alphabet
         mov  ah,9
         int  21h
         mov  ah,4ch
         int  21h
    ;!Jump to number
    num: 
         mov  dx,10
         mov  ah,2
         int  21h
         mov  dx,13
         mov  ah,2
         int  21h
         mov  dl, offset number
         mov  ah,9
         int  21h
         mov  ah,4ch
         int  21h
main endp
end main