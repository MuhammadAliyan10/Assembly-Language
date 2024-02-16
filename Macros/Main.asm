dosseg
print macro p1
          mov dx, offset p1
          mov ah,9
          int 21h
endm
.model small
.stack 100h
.data
    msg1 db 'Allah $'
    msg2 db 'is $'
    msg3 db 'the $'
    msg4 db 'one$'
.code
main proc
            mov   ax,@data
            mov   ds,ax
            print msg1
            call  newline
            print msg2
            call  newline
            print msg3
            call  newline
            print msg4
            call  newline

            mov   ah,4ch
            int   21h
    newline:
            mov   dx,10
            mov   ah,2
            int   21h
            ret
           

main endp
end main