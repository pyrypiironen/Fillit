make re
make clean
gcc -Wall -Wextra -Werror -o fillit *.c -L./libft/ -lft
./fillit three_pieces.txt