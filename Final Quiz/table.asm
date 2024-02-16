mov al,13h
mov ah,0
int 10h


mov al,0010b
mov cx,120
mov dx,70
mov ah,0ch
int 10h
 
mov bl,60
boxfirstline:
int 10h
dec cx
inc dx 
dec bl
jnz boxfirstline      


mov bl,60
boxsecondline:
int 10h
inc cx
inc cx
dec dx 
inc dx
dec bl
jnz boxsecondline   

mov bl,60
boxthirdline:
int 10h
inc cx
dec dx
dec bl
jnz boxthirdline 


mov bl,60
boxfourthline:
int 10h
dec cx
dec cx
inc dx 
dec dx
dec bl
jnz boxfourthline  


mov al,0010b
mov cx,60
mov dx,130
mov ah,0ch
int 10h
 
mov bl,10
curveline:
int 10h
inc dx 
dec bl
jnz curveline  

mov al,0010b
mov cx,180
mov dx,130
mov ah,0ch
int 10h
 
mov bl,10
curveline2:
int 10h
inc dx 
dec bl
jnz curveline2 

mov al,0010b
mov cx,220
mov dx,105
mov ah,0ch
int 10h
 
mov bl,15
thirdfootlinefirst:
int 10h
inc dx
dec bl
jnz thirdfootlinefirst 

mov bl,10
thirdfootlinefirst2:
int 10h
inc cx
inc dx
dec bl
jnz thirdfootlinefirst2  
mov al,0010b
mov cx,240
mov dx,80
mov ah,0ch
int 10h 
mov bl,40
thirdfootlinesecond:
int 10h
inc dx
dec bl
jnz thirdfootlinesecond 
mov bl,10
thirdfootlinesecond2:
int 10h
dec cx
inc dx
dec bl
jnz thirdfootlinesecond2

 
mov al,0010b
mov cx,60
mov dx,140
mov ah,0ch
int 10h

mov bl,62
boxsecondlineshape:
int 10h
inc cx
inc cx
dec dx 
inc dx
dec bl
jnz boxsecondlineshape   

mov bl,56
boxthirdlineshape:
int 10h
inc cx
dec dx
dec bl
jnz boxthirdlineshape
                        
mov bl,11
boxthirdlinecurve:
int 10h
dec dx
dec bl
jnz boxthirdlinecurve









mov al,0010b
mov cx,60
mov dx,140
mov ah,0ch
int 10h
 
mov bl,50
firstfootlinefirst:
int 10h
inc dx
dec bl
jnz firstfootlinefirst 

mov bl,10
firstfootlinefirst2:
int 10h
inc cx
inc dx
dec bl
jnz firstfootlinefirst2 


mov al,0010b
mov cx,70
mov dx,140
mov ah,0ch
int 10h


mov bl,60
centerline:
int 10h
inc dx
dec bl
jnz centerline
 
 
mov al,0010b
mov cx,80
mov dx,140
mov ah,0ch
int 10h
 
mov bl,50
firstfootlinesecond:
int 10h
inc dx
dec bl
jnz firstfootlinesecond 

mov bl,10
firstfootlinesecond2:
int 10h
dec cx
inc dx
dec bl
jnz firstfootlinesecond2  



mov al,0010b
mov cx,165
mov dx,140
mov ah,0ch
int 10h
 
mov bl,50
secondfootlinefirst:
int 10h
inc dx
dec bl
jnz secondfootlinefirst 

mov bl,10
secondfootlinefirst2:
int 10h
inc cx
inc dx
dec bl
jnz secondfootlinefirst2 


mov al,0010b
mov cx,175
mov dx,140
mov ah,0ch
int 10h


mov bl,60
centerline2:
int 10h
inc dx
dec bl
jnz centerline2
 
 
mov al,0010b
mov cx,185
mov dx,140
mov ah,0ch
int 10h
 
mov bl,50
secondfootlinesecond:
int 10h
inc dx
dec bl
jnz secondfootlinesecond 

mov bl,10
secondfootlinesecond2:
int 10h
dec cx
inc dx
dec bl
jnz secondfootlinesecond2  



 
 
mov al,0010b
mov cx,120
mov dx,140
mov ah,0ch
int 10h
 
mov bl,15
fouthfootlinefirst:
int 10h
inc dx
dec bl
jnz fouthfootlinefirst 

mov bl,10
fouthfootlinefirst2:
int 10h
inc cx
inc dx
dec bl
jnz fouthfootlinefirst2  
mov al,0010b
mov cx,140
mov dx,140
mov ah,0ch
int 10h 
mov bl,15
fourthfootlinesecond:
int 10h
inc dx
dec bl
jnz fourthfootlinesecond 
mov bl,10
fourthfootlinesecond2:
int 10h
dec cx
inc dx
dec bl
jnz fourthfootlinesecond2

