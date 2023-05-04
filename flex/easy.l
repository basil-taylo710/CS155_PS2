%{
#include <stdio.h>
%}

%%

(go|to|exit|if|then|else|case|endcase|while|do|endwhile|repeat|until|loop|forever|for|by|endfor|input|output|array|node|call|return|stop|end|procedure)   { printf("<KEYWORD,%s>\n", yytext); }
[\+\-\/\*\^]   { printf("<ARITHMETIC OPERATOR,%s>\n", yytext); }
(and|or|not)   { printf("<LOGICAL OPERATOR,%s>\n", yytext); }
(!=|=|<=|>=|<|>)   { printf("<RELATIONAL OPERATOR,%s>\n", yytext); }
(mod|log2)   { printf("<MISCELLANEOUS OPERATOR,%s>\n", yytext); }
[():;,\[\]]  { printf("<PUNCTUATOR,%s>\n", yytext); }
'([^']*)'   { printf("<STRING CONSTANT,%s>\n", yytext); }
([0-9]*[.])?[0-9]+   { printf("<NUMBER CONSTANT,%s>\n", yytext); }
(true|false)   { printf("<BOOLEAN CONSTANT,%s>\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   { printf("<IDENTIFIER,%s>\n", yytext); }
[ /s]+   /* ignore whitespace */ ;

%%
yywrap() {}

int main()
{
    yylex();
    return 0;
}
