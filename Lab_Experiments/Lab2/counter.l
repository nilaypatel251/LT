%{
    int newchar, newword, newline;
%}
%%
\n         { newline++; newchar++; }
[^ \t\n]+ { newword++, newchar += yyleng; }
.          { newchar++; }
%%
int main(void) {
    yylex();
    printf("%d\t%d\t%d\n", newchar, newword, newline);
    return 0;
}
