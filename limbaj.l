%{
#include <stdlib.h>
#include "y.tab.h"
void yyerror(char *);
%}

numere [0-9]+


%%

{numere} { yylval = atoi(yytext); return NUMAR; }

"plus"         { return ADAUGA; }
"minus"        { return SCADE; }
"ori"          { return INM; }
"impartit"     { return IMP; }
"absolut"      { return POZ; }
"%"            {return CAT;}
";"            { return TERMINAL; }
[ \t]          { /* ignora spatiile albe */ }
"("          { return STPAR; }
")"          { return DRPAR; }
"["          { return PARS; }
"]"          { return PARD; }
"Ana e cea mai tare" { printf("Asa este! \n", *yytext); }
. 		{ yyerror(yytext);}
%%

int yywrap(void) {
	return 1;
}