make re
make clean
gcc -Wall -Wextra -Werror -o fillit *.c -L./libft/ -lft
echo ""
echo ""
echo ""
echo ""
echo ""
echo "FILLIT EVALUATION"
echo ""
echo ""

echo "Error management - Args management:"
echo ""
echo "Right output: 2 x usage: ./fillit source_file"
./fillit
./fillit test1 test7
echo ""

echo "Error management - Invalid piece:"
echo ""
echo "Right output: 5 x error"
./fillit invalid1
./fillit invalid2
./fillit invalid3
./fillit invalid14
./fillit invalid15
echo ""

echo "Error management - Invalid file:"
echo ""
echo "Right output: 10 x error"
./fillit invalid4
./fillit invalid5
./fillit invalid6
./fillit invalid7
./fillit invalid8
./fillit invalid9
./fillit invalid10
./fillit invalid11
./fillit invalid12
./fillit invalid13
echo ""

echo "Le Algorithm - Is everything here, as we want?"
echo ""
echo "Your output (2 blocks):"
./fillit valid1
echo ""
echo "Right output (2 blocks):"
echo "ABB."
echo "ABB."
echo "A..."
echo "A..."
echo ""

echo "Your output (3 blocks):"
./fillit valid3
echo ""
echo "Right output (3 blocks):"
echo "BBB."
echo "..BC"
echo "A.CC"
echo "AAAC"
echo ""

echo "Your output (4 blocks):"
./fillit valid4
echo ""
echo "Right output (4 blocks):"
echo "ABBBB"
echo "AAA.."
echo "C.DD."
echo "CCCDD"
echo "....."
echo ""

echo "Your output (26 blocks):"
./fillit valid2
echo ""
echo "Right output (26 blocks):"
echo "ABBBBC..DDF"
echo "AEEE.CCCD.F"
echo "AH.EGIIIDFF"
echo "AHGGGIJJKK."
echo "MHHLLN.JKKQ"
echo "MMLLNNNJOQQ"
echo ".MPPPRR.OOQ"
echo ".STPV.RRO.."
echo "SSTTVVZWWWX"
echo "SYYTVZZUWXX"
echo "..YY.ZUUU.X"
echo ""

echo "Le Speed - Baby steps (more than 1s is fail):"
echo ""
time ./fillit test1
echo ""

echo "Le Speed - Challenge steps (check rating from eval form):"
echo ""
time ./fillit test7
echo ""
echo "Extra test for speed (max.txt):"
echo ""
time ./fillit max.txt