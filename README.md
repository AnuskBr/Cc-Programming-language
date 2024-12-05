# Cc-Programming-language
This project showcases the creation of a simple programming language compiler using **FLEX** and **BISON**. The compiler supports basic arithmetic operations and processes instructions entered in a terminal.

## Features
- Arithmetic operations: addition, subtraction, multiplication, division.
- Modulo (`%`) and absolute value (`|x|`).
- Instructions are separated by `;`.

  ## Build Instructions
1. Generate parser and tokens:
    bison -y -d gramatica.y
2. Generate lexical analyzer:
    flex limbaj.l
3. Compile everything:
    gcc -o executie.exe y.tab.c lex.yy.c

Usage
Run executie.exe in the terminal to input and evaluate expressions:

4 plus [10 minus(10 impartit 2 minus 3)];
6%4 ori 3;

For more information, check the documentation available in Romanian:[Documentatie_LFC.docx](**Documentatie_LFC.docx**)
