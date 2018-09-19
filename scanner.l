%top{
#include <stdio.h>
#include <tokens.h>
}
%option nodefault
L [[:alpha:]]
D [0-9]
LD [[:alnum:]]
S [[:space:]]
O [[:^alnum:]]{-}[[:space:]]
programa [Pp][Rr][Oo][Gg][Rr][Aa][Mm][Aa]
variables [Vv][Aa][Rr][Ii][Aa][Bb][Ll][Ee][Ss]
codigo [Cc][Oo][Dd][Ii][Gg][Oo]
fin [Fi][Ii][Nn]
leer [Ll][Ee][Ee][Rr]
escribir [Ee][Ss][Cc][Rr][Ii][Bb][Ii][Rr]
definir [Dd][Ee][Fi][Ii][Nn][Ii][Rr]
%%
{L}{LD}*	return ID;
{D}+		return CTE;
{programa}	return PROG;
{variables}	return VAR;
{codigo}	return COD;
{fin}		return FIN;
{leer}		return LEER;
{escribir}	return ESC;
{definir]	return DEF;
%%