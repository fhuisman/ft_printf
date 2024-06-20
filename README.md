<div align="center">
  <h1>
    ft_printf
  </h1>
 <p>
    Recoding C's printf function
  </p>
  
</div>


# About the project

A project made in accordance with the ft_printf project which is part of the Codam Core Curriculum. This project is pretty straightforward, you have to recode printf. You learn to implement variadic functions. In C language, the printf function is used to print output on the stdout.  This function is a part of the C standard library and it can allow formatting the output in numerous ways.
You have to implement the following conversions:
- %c Prints a single character.
- %s Prints a string (as defined by the common C convention).
- %p The void * pointer argument has to be printed in hexadecimal format.
- %d Prints a decimal (base 10) number.
- %i Prints an integer in base 10.
- %u Prints an unsigned decimal (base 10) number.
- %x Prints a number in hexadecimal (base 16) lowercase format.
- %X Prints a number in hexadecimal (base 16) uppercase format.
- %% Prints a percent sign

# Getting started

Start by cloning the repository:
```c
https://github.com/fhuisman/ft_printf.git
```

Compile by using make:
```c
make
```

# Usage

To use the library functions in your code, simply include its header:
```c
#include "ft_printf.h"
```
and add the library when you're compiling. For example:
```c
gcc main.c libftprintf.a
```
