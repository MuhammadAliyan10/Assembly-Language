dosseg
.model small
.stack 100h
.data
    num    db 10 dup('$')
    msgneg db 'Given number is Negitive $'
    msgpos db 'Given number is Positive $'
.code
main proc
                mov ax,@data
                mov ds,ax
                mov si, offset num
    inputString:
                mov ah,1
                int 21h
                cmp al,13
                je  CheckNum
                mov [si],al
                inc si
                jmp inputString
    CheckNum:   
                cmp num,'-'
                je  printing
                mov dx, offset msgpos
                mov ah,9
                int 21h
                mov ah,4ch
                int 21h
    printing:   
                mov dx,offset msgneg
                mov ah,9
                int 21h
                mov ah,4ch
                int 21h
                mov ah,4ch
                int 21h
main endp
end main