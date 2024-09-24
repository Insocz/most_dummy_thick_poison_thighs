segment .data
    msg db "meow",0x0A,0x0D
    time dw 5
    ntime dw 0
segment .bss
segment .text
    global main
    
main:
    mov eax,2
    int 80h

    cmp eax,0
    jz yay

nay:
    mov eax,1
    mov ebx,0
    int 80h

yay:
    mov eax,0xA2
    mov ebx,time
    mov ecx,ntime
    int 80h

    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov edx,6
    int 80h

    jmp yay
