##
## EPITECH PROJECT, 2024
## B-CPE-101-LYN-1-1-myradar-pierre.baud
## File description:
## Makefile
##

SRC		=		source/my_radar.c \


OBJ 	=		$(SRC:.c=.o)

NAME    = 		my_radar

SFMLFLAG =      -lcsfml-graphics -lcsfml-window -lcsfml-system -lcsfml-audio

CFLAG = -Wall -Wextra -g3

all: 	$(NAME)

$(NAME): 		$(OBJ)
		gcc -o $(NAME) $(OBJ) $(CFLAG) $(SFMLFLAG)

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: 	fclean all
