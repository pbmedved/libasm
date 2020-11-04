# /* ************************************************************************** */
# /*                                                                            */
# /*                                                        :::      ::::::::   */
# /*   Makefile                                           :+:      :+:    :+:   */
# /*                                                    +:+ +:+         +:+     */
# /*   By: iadrien <marvin@42.fr>                     +#+  +:+       +#+        */
# /*                                                +#+#+#+#+#+   +#+           */
# /*   Created: 2020/08/16 10:56:14 by iadrien           #+#    #+#             */
# /*   Updated: 2020/10/13 16:31:53 by iadrien          ###   ########.fr       */
# /*                                                                            */
# /* ************************************************************************** */


SRCS		=	ft_strlen.s\
				ft_strcmp.s\
				ft_strcpy.s\
				ft_write.s\
				ft_read.s\
				ft_strdup.s

OBJS		=	$(SRCS:.s=.o)

NAME		=	libasm.a

%.o: %.s
	nasm -f macho64 $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME) testfile a.out

re: fclean $(NAME)

test:	re			
	gcc -L. -lasm main.c
	touch testfile
	./a.out


.PHONY:			clean fclean re test