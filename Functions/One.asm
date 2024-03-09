dosseg
.model small
.stack 100h
.data
        msg1 db 'Allah$'
        msg2 db 'Please$'
        msg3 db 'help$'
        msg4 db 'us$'
.code
main proc
                  mov  ax, @data              ; Initialize data segment
                  mov  ds, ax

                  call printData              ; Call the printData function for each message

                  mov  ah, 4ch                ; Exit program
                  int  21h
    
        printData:
                  mov  dx, offset msg1        ; Load the address of msg1 into DX
                  mov  ah, 09h                ; Print string function
                  int  21h
                  ret                         ; Return from the function

main endp
end main
