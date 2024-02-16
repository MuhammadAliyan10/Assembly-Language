dosseg
.model small
.stack 100h
.data
msg1 db 'Allah$'
msg2 db 'Please$'
msg3 db 'help$'
msg3 db 'us$'
.code 
main proc
mov ax,@data
mov dx,ax
mov dx,offset msg1
mov ah,9





        mov ah,4ch
        int 21h
    
        
main endp
end main