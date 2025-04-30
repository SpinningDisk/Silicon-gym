section .data
    res: dq 0    ; Store result
    n1:  dq 1   ; '0' in ASCII
    n2:  dq 0

    msg: db ":)"
    msgLen: equ $-msg

section .text
    global _start
    _start:
        mov rax,1
        mov rdi,1
        mov rsi,msg
        mov rdx,msgLen
        syscall


        mov r8,n1
        mov r9,n2
        mov r10,res
        l1:
            mov r10,[r8]
            add r9,[r10]
            mov rsi,r9
            syscall
            mov rax,1
            mov rdi,1
            mov byte [rsi],10
            mov rdx,1
            syscall
            loop l1
            
        ; for convinience purposes, we print a newline

        ; Exit
        mov rax, 60
        mov rdi,0
        syscall
