# Simple-x86-64-Assembly-Program

try.asm is a simple program written in x86-64 assembly language which takes a number and a string as input from the user’s console and then prints the same number and same string to the user’s console.

_section.data_ : Is used to define all fixed data (data that won't change later on in the code)
_section.bss_ : Is used to define all variable data (data that might change later on in the code)
_section.text_ : Is where we write our main code

_extern_ **function_name** : Is used to indicate that **function_name** is an external function. In this case, printf and scanf are the external functions used.

#### Short Explanation:

mov rax, 0
lea rdi, [format]
lea rsi, [number]
call scanf
In the above block we 
1. Load 0 into _register rax_
2. Load the format of the data to be scanned (in this case an integer) into _register rdi_ 
3. And the variable in which we want to store the scanned value (in this case number) into register rsi
before calling scanf.

lea rdi, [formatString]
lea rsi, [text3]
call printf
In the above block, we 
1. Load the format of the string into _register rdi_ 
2. And the text that we want to print into _regsiter rsi_ before calling printf.


There are specific values that need to be loaded into specific registers in order to use **system calls**. Check the link below for more details.

Some useful links:
[Linux_System_Call_Table](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
