segment .data
inWord db "String: ", 0x00
inInteger db "Number: ", 0x00

formatWord db "%s", 0x00
formatInteger db "%d", 0x00

outWord db "String: %s", 0x0a, 0x00
outInteger db 0x0a, "Number: %ld", 0x0a, 0x00

integer dq 0
string db ""

segment .text
global main
extern printf
extern scanf

main:

    lea rdi, [inInteger]
    xor rax, rax
    call printf                	

    lea rdi, [formatInteger]
    lea rsi, [integer]
    xor rax, rax
    call scanf                 	


        lea rdi, [inWord]
        xor rax, rax
        call printf

        lea rdi, [formatWord]
        lea rsi, [string]
        xor rax, rax
        call scanf					


    lea rdi, [outInteger]
    mov rsi, [integer]
    xor rax, rax
    call printf					



        lea rdi, [outWord]
        lea rsi, [string]
        xor rax, rax
        call printf					
	



        mov  eax,1      			
    mov  ebx,0       			
    int  0x80 