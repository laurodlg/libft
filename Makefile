# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    MAKEFILE                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lde-la-g <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/13 20:52:15 by lde-la-g          #+#    #+#              #
#    Updated: 2019/10/16 20:50:07 by lde-la-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

FLAGS = -Wall -Wextra -Werror -I .

NAME = libft.a

SOURCES = ft_atoi.c\
		  ft_bzero.c\
		  ft_isalnum.c\
		  ft_isalpha.c\
		  ft_isascii.c\
		  ft_isdigit.c\
		  ft_isprint.c\
		  ft_itoa.c\
		  ft_memalloc.c\
		  ft_memccpy.c\
		  ft_memchr.c\
		  ft_memcmp.c\
		  ft_memcpy.c\
		  ft_memdel.c\
		  ft_memmove.c\
		  ft_memset.c\
		  ft_putchar.c\
		  ft_putchar_fd.c\
		  ft_putendl.c\
		  ft_putendl_fd.c\
		  ft_putnbr.c\
		  ft_putnbr_fd.c\
		  ft_putstr.c\
		  ft_putstr_fd.c\
		  ft_strcat.c\
		  ft_strchr.c\
		  ft_strclr.c\
		  ft_strcmp.c\
		  ft_strcpy.c\
		  ft_strdel.c\
		  ft_strdup.c\
		  ft_strequ.c\
		  ft_striter.c\
		  ft_striteri.c\
		  ft_strjoin.c\
		  ft_strlcat.c\
		  ft_strlen.c\
		  ft_strmap.c\
		  ft_strmapi.c\
		  ft_strncat.c\
		  ft_strncmp.c\
		  ft_strncpy.c\
		  ft_strnequ.c\
		  ft_strnew.c\
		  ft_strrchr.c\
		  ft_strsplit.c\
		  ft_strstr.c\
		  ft_strnstr.c\
		  ft_strsub.c\
		  ft_strtrim.c\
		  ft_tolower.c\
		  ft_toupper.c\
		  ft_word.c\
		  ft_countw.c\
		  ft_wordpos.c\
		  ft_itoaneg.c\
		  ft_itoapos.c\
		  ft_lstadd.c\
		  ft_lstdel.c\
		  ft_lstdelone.c\
		  ft_lstiter.c\
		  ft_lstmap.c\
		  ft_lstnew.c\

OBJECT = $(SOURCES:.c=.o)

$(NAME):
	@$(CC) $(FLAGS) -c $(SOURCES)
	@ar rcs $(NAME) $(OBJECT)

all: $(NAME)

clean:
	@rm -rf $(OBJECT)

fclean: clean
	@rm -fr $(NAME)

re: fclean all
