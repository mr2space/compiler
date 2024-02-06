%{
#include "y.tab.h"
%}

%%

a   { return token1; }
b   { return token2; }
\n  { return '\n'; }
.   { /* Ignore other characters */ }

%%

int yywrap() {
    return 1;
}
