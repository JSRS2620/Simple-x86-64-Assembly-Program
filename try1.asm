section .data
text1: db "Enter string: ",0
text1len: equ $ - text1
text2: db "Enter integer: ",0
text2len: equ $ - text2
text3: db "String entered: ",10,0
text3len: equ $ - text3
text4: db "Integer entered:",10,0
text4len: equ $ - text4
textNewLine: db "",10,0
fnti: db "%d",10,0
formatString: db "%s",0
format: db "%d",0


section .bss
number: resb 4
string: resb 8

section .text
global main
extern printf
extern scanf

main:

;Block for printing prompt 1
mov rax, 1
mov rdi, 1
mov rsi, text1
mov rdx, text1len
mov rbx, 200
syscall

;Block for taking string input
mov rax, 0
lea rdi, [formatString]
lea rsi, [string]
call scanf


;Block for printing prompt 2
mov rax, 1
mov rdi, 1
mov rsi, text2
mov rdx, text2len
mov rbx, 200
syscall

;Block for taking int input
mov rax, 0
lea rdi, [format]
lea rsi, [number]
call scanf

;Block for printing newline
lea rdi, [formatString]
lea rsi, [textNewLine]
call printf

;Block for printing prompt 3
lea rdi, [formatString]
lea rsi, [text3]
call printf

;Block for printing string input
lea rdi, [formatString]
lea rsi, [string]
call printf

;mov rax, 1
;mov rdi, 1
;mov rsi, text4
;mov rdx, text4len
;mov rbx, 200
;syscall

;Block for printing newline
lea rdi, [formatString]
lea rsi, [textNewLine]
call printf

;Block for printing prompt 4
lea rdi, [formatString]
lea rsi, [text4]
call printf

;Block for printing int input
lea rdi, [fnti]
mov rsi, [number]
call printf

mov rax, 60
mov rdi, 1
syscall
