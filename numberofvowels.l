%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int main()
{
printf("Enter string\n");
yylex();
printf("Vowel and Consonent count are : %d and %d respectivly",v,c);
}
int yywrap(){
return 1;
}
