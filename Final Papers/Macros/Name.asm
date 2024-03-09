dosseg
print macro p1
          mov dx, offset p1
          mov ah,9
          int 21h
endm
.model small
.stack 100h
.data
    firstName db 'Muhammad$'
    lastName  db 'Aliyan$'
.code
main proc
          mov   ax,@data
          mov   ds,ax
          print firstName
          call  space
          print lastName
          call  space
          mov   ah,4ch
          int   21h
    space:
          mov   dx,13
          mov   ah,2
          int   21h
          mov   dx,10
          mov   ah,2
          int   21h
          ret
main endp
end main