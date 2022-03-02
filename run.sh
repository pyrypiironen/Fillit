make re
make clean
gcc -Wall -Wextra -Werror -o my_fillit *.c -L./libft/ -lft
./fillit #add textfile here