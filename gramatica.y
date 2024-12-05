%{
#include <stdio.h>
void yyerror(char *);
int yylex(void);
%}


%token NUMAR 
%token ADAUGA SCADE INM IMP POZ CAT
%token TERMINAL
%token  STPAR DRPAR PARS PARD
%left '-'

%%

cal: /* empty */
 | cal expresie TERMINAL { printf("%d\n", $2);}
 ;

expresie: factor
 | expresie ADAUGA factor { $$ = $1 + $3; }
 | expresie SCADE factor { $$ = $1 - $3; }
 ;

factor: term 
 | factor INM term { $$ = $1 * $3; }
 | factor IMP term { $$ = $1 / $3; }
 | factor CAT term { $$ = $1 % $3; }
 ;

term: NUMAR
 | POZ term { $$ = $2 >= 0? $2 : - $2; }
 | STPAR expresie DRPAR { $$ = $2; }
 | PARS expresie PARD { $$ = $2; }
;

%%

void yyerror(char *s) {
	fprintf(stderr, "%s\n", s);
}

int main(void)
{
    yyparse();
    return 0;
}
