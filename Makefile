# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: carlaugu <carlaugu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 11:28:30 by carlaugu          #+#    #+#              #
#    Updated: 2024/11/01 15:17:41 by carlaugu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f


NAME = libft.a
SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
       ft_strlen.c  ft_memset.c  ft_bzero.c   ft_memcpy.c  ft_memmove.c\
       ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c\
       ft_strrchr.c ft_strncmp.c ft_memchr.c  ft_memcmp.c  ft_strnstr.c\
       ft_atoi.c    ft_calloc.c  ft_strdup.c  ft_substr.c  ft_strjoin.c\
       ft_strtrim.c ft_split.c	 ft_itoa.c    ft_strmapi.c ft_striteri.c\
       ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strstr.c\

BNO = ft_lstnew_bonus.c  ft_lstadd_front_bonus.c  ft_lstsize_bonus.c  ft_lstlast_bonus.c  ft_lstadd_back_bonus.c\
      ft_lstdelone_bonus.c  ft_lstclear_bonus.c  ft_lstiter_bonus.c  ft_lstmap_bonus.c\

OBJS = ${SRCS:.c=.o}
OBJS_BON = ${BNO:.c=.o}

.PHONY: all clean fclean re

all: ${NAME}

${NAME}: ${OBJS}
	@${AR} ${NAME} ${OBJS}

bonus:	${OBJS_BON} ${NAME}
	${AR} ${NAME} ${OBJS} ${OBJS_BON}

%.o: %.c
	@${CC} ${CFLAGS} -c $< -o $@

clean:
	@${RM} ${OBJS} ${OBJS_BON}

fclean: clean
	@${RM} ${NAME}

re: fclean all

##Colors
GREEN = \033[32m
YELLOW = \033[33m
BLUE = \033[34m
RESET = \033[0m
