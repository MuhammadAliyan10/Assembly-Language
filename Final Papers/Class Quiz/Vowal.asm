dosseg
.model small
.stack 100h
.data
    char    db "Enter a character $"
    isVowel db "The character is vowal. $"
    isAlpha db "The character is alphabet.$"
    vowel   db "aeiouAEIOU"
    
.code
main proc
               mov  ax,@data
               mov  ds,ax
               mov  dx,offset char
               mov  ah,9
               int  21h
               mov  ah,1
               int  21h
               mov  si, offset vowel
               mov  cx, 10
    l1:        
               cmp  al,[si]
               je   vowelCheck
               inc  si
               loop l1
               mov  dx,13
               mov  ah,2
               int  21h
               mov  dx,10
               mov  ah,2
               int  21h
               mov  dx,offset isAlpha
               mov  ah,9
               int  21h
               mov  ah,4ch
               int  21h
    vowelCheck:
               mov  dx,13
               mov  ah,2
               int  21h
               mov  dx,10
               mov  ah,2
               int  21h
               mov  dx,offset isVowel
               mov  ah,9
               int  21h

               mov  ah,4ch
               int  21h
main endp
end main