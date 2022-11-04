# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: fhuisman <fhuisman@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2022/10/25 12:25:31 by fhuisman      #+#    #+#                  #
#    Updated: 2022/11/04 16:12:16 by fhuisman      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

SRC = ft_printf.c conversions.c hexadecimal.c printunsignedint.c 

OBJS = ${SRC:.c=.o}

HEADERS = ft_printf.h

all: ${NAME}

${NAME}: ${OBJS}
	${MAKE} -C libft
	@cp libft/libft.a .
	@mv libft.a $(NAME)
	ar -rcs ${NAME} ${OBJS}

%.o: %.c ${HEADERS}
	${CC} -c ${FLAGS} -o $@ $<

clean:
	rm -f ${OBJS}
	${MAKE} clean -C libft

fclean: clean
	rm -f ${NAME}
	${MAKE} fclean -C libft

re: fclean all
	${MAKE} fclean all -C libft

.PHONY: all clean fclean re