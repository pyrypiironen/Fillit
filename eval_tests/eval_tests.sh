echo ""
echo ""
echo "*****     *****     *****     *****     *****     *****     *****     *****     *****     *****     *****     *****     *****"
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
./my_fillit valid1
echo ""

echo "Your output (3 blocks):"
./fillit valid3
echo ""
echo "Right output (3 blocks):"
./my_fillit valid3
echo ""

echo "Your output (4 blocks):"
./fillit valid4
echo ""
echo "Right output (4 blocks):"
./my_fillit valid4
echo ""

echo "Your output (26 blocks):"
./fillit valid2
echo ""
echo "Right output (26 blocks):"
./my_fillit valid2
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