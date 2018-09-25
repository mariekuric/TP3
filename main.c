#include <stdio.h>
#include <scanner.l>


char *nombres_token[]={"", "Identificador", "Constante" "programa" "variables" "codigo","fin", "leer", "escribir", "definir", 
"+", "-", "*", "/", "-", "Asignacion","(", ")", ",", ".", "Error lexico","Constante invalida", "Identificador invalido"}

int main(){
	enum token t;
	while ((t=yylex())){
		if (t==1 | t==2 |t==21 | t==22 | t==23)
			printf ("Token: %s\tLexema: %s\n", nombres_token[t], yytext);
		else
			printf ("Token: %s\n", nombres_token[t]);
	}
	printf ("Token: Fin de archivo");
}