dosseg
.model small
.stack 100h
.data
.code
main proc
mov bx, 1     ; Initialize outer loop counter
mov cx, 4     ; Set the number of characters for each line
l1:
    push cx   ; Preserve the inner loop counter
    mov cx, bx    ; Set the inner loop counter to the current value of bx
    mov dx, 64  ; Initialize dl with 'A'
l2:
    add dx, cx  ; Add the value of cx to dl
    mov ah, 2 ; Function to print character
    int 21h     ; Print the character    ; Move to the next character
loop l2
mov dl, 13      ; Carriage return
mov ah, 02h     ; Function to print character
int 21h         ; Print carriage return
mov dl, 10      ; Line feed
int 21h         ; Print line feed
inc bx          ; Increment the outer loop counter
pop cx          ; Restore the inner loop counter
loop l1         ; Continue outer loop until cx reaches zero
mov ah, 4ch     ; Exit program
int 21h
main endp
end main
