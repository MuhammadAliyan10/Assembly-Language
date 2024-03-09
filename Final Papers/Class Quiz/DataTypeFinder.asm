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
    ;! for alphabet check
               mov  si,offset alpArray
               mov  cx,54
    l1:        
               cmp  al,[si]
               je   isAlphabet
               inc  si
               loop l1
    ;? for number check
               mov  si, offset numArray
               mov  cx,10
    l2:        
               cmp  al,[si]
               je   isNumber
               inc  si
               loop l2
               jne  isSpecial
    isAlphabet:
               mov  dx,13
               mov  ah,2
               int  21h
               mov  dx,10
               mov  ah,2
               int  21h
               mov  dx, offset alphabet
               mov  ah,9
               int  21h
               mov  ah,4ch
               int  21h
    isNumber:  
               mov  dx,13
               mov  ah,2
               int  21h
               mov  dx,10
               mov  ah,2
               int  21h
               mov  dx, offset number
               mov  ah,9
               int  21h
               mov  ah,4ch
               int  21h
    isSpecial: 
               mov  dx,13
               mov  ah,2
               int  21h
               mov  dx,10
               mov  ah,2
               int  21h
               mov  dx, offset specialCharacter
               mov  ah,9
               int  21h
               mov  ah,4ch
               int  21h


main endp
end main