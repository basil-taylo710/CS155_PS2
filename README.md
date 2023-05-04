# CS155_PS2

Steps using terminal:
1. Go to flex directory
2. Type "flex easy.l"
3. Type "gcc lex.yy.c -o output"
4. Type "output < inputfile"

Step 4 examples:
1. output < bin_search.easy
2. output < hanoi.easy
3. output < insertion_sort.easy
4. output < list_invert.easy
5. output < reserved_test.easy

Expected Outputs
1. Format for every token output is <Token,Lexeme>
2. Token class of Operators are divided into Arithmetic, Logical, Relational, Assignment and Miscellaneous
3. Token class of Constants are divided into String, Number and Boolean
4. Every whitespace tokens are ignored
