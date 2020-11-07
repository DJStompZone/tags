{=(largs):{lower:{args}}}

{=(COMMENT):This is the part that does the math based on the user input, truncatenates conditionally, puts commas every 3 digits in the result, and replaces the output with an error message when the input was invalid. All of that in that one single line and with no "if" block whatsoever.}
{=(equation):{replace(Z,):{replace(.0Z,):{m:{replace(sqrt,^(1/2)):{replace(?,/):{replace(x,*):{replace(m,e6):{replace(k,e3):{replace( ,):{largs(1):d}}}}}}}}Z}}}
{=(equation):{replace(<o error>,Error. Invalid input.):{replace(st,):{replace(nd,):{replace(rd,):{replace(th,):{ord:{equation(1):.}}{if({equation(2+):.}!=):.{if({largs(1):d}!={largs(2):d}):{m:trunc({equation(2+):.}e{largs(2):d})}|{equation(2+):.}}}}}}}}}

{=(COMMENT):Title and thumbnail of the embed.}
{=(title):Calculator}
{=(thumbnail):{replace(1200px,250px):https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/GNOME_Calculator_icon_2018.svg/1200px-GNOME_Calculator_icon_2018.svg.png}}

{=(COMMENT):Conditional input to display. Returns a space when no argument is provided, just so it doesn't display two "`" characters.}
{=(input):{if({1}==):None.|{replace( ,):{largs}}}}

{=(COMMENT):Conditional output to display.}
{=(error):You need to specify an equation to calculate.}
{=(output):{if({1}==):{error}|{equation}}}

{=(COMMENT):Conditional embed's side color. Red if no argument or invalid input; otherwise gray/transparent.}
{=(clr.red):F80E0E}
{=(clr.gray):2f3136}
{=(em.color):{if({1}==):{clr.red}|{if({in(Error. Invalid input.):{equation}}==true):{clr.red}|{clr.gray}}}}
{embed(color):#{em.color}}