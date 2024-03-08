dosseg
.model small
.stack 100h
.data
      msg1 db 'Press Any key $'
      msg2 db 'Tata Bye Bye $'
.code
main proc
            mov ax,@data
            mov ds,ax
            mov dx,offset msg1
            mov ah,9
            int 21h
      start:
            mov ah,1
            int 21h
            cmp al,13
            je  exit
            jne again
      again:
            mov dx,10
            mov ah,2
            int 21h
            mov dx,offset msg1
            mov ah,9
            int 21h
            jmp start
      exit: 
            mov dx,offset msg2
            mov ah,9
            int 21h
            mov ah,4ch
            int 21h
main endp
end main