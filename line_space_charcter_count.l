%{
#include<stdio.h>
int cc=0;
int wc=0;
int sc=0;
int lc=0;
%}
%%
[\n]+ {lc++;}
[ ]+ {sc++;}
[a-zA-Z0-9]+ {wc++;cc=cc+yyleng;}
%%
int main()
{
yyin=fopen("file1.txt","r");
yylex();
printf("%d-charc %d-words %d-space %d-lines",cc,wc,sc,lc);
}
int yywrap(){
return -1;
}
