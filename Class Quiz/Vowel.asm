dosseg
.model small
.stack 100h
.data
    char  db "Enter a character $"
    vowel db "The character is vowal. $"
    alpha db "The character is alphabet.$"
.code
main proc
         mov ax,@data
         mov ds,ax               ; heap memory
         mov dx,offset char
         mov ah,9
         int 21h
         mov ah,1
         int 21h
         cmp al,'a'
         je  vow
         cmp al,'e'
         je  vow
         cmp al,'i'
         je  vow
         cmp al,'o'
         je  vow
         cmp al,'u'
         je  vow
         cmp al,'A'
         je  vow
         cmp al,'E'
         je  vow
         cmp al,'I'
         je  vow
         cmp al,'O'
         je  vow
         cmp al,'U'
         je  vow
         mov dx,10
         mov ah,2
         int 21h
         mov dx,13
         mov ah,2
         int 21h
         mov dx, offset alpha
         mov ah,9
         int 21h
         mov ah,4ch
         int 21h

    vow: 
         mov dx,10
         mov ah,2
         int 21h
         mov dx,13
         mov ah,2
         int 21h
         mov dl, offset vowel
         mov ah,9
         int 21h
         mov ah,4ch
         int 21h
main endp
end main