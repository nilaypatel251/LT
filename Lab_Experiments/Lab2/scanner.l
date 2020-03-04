
%{
    char str[]="username";
%}
%%

username printf("%s",getlogin());
%%
int main(void) {
    yylex();
    printf("%s",getlogin());
    return 0;
}
                                        
