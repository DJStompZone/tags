{=(isnum):{if({m:sgn({1})}==1):true|false}}

{=(before):{if({isnum}==true):{1}|1}}

{=(after):{replace(Z,):{replace(.0Z,):{m:{before}/8}Z}}}

{=(spaced.before):{replace(, ):{before}}}
{=(length.before):{index($&):{spaced.before(1):.} $&}}
{=(mega.before):{if({length.before}>2):K|M}bps}

{=(spaced.after):{replace(, ):{after}}}
{=(length.after):{index($&):{spaced.after(1):.} $&}}
{=(mega.after):{if({after(1):.}==0):K|{if({length.after}>2):K|M}}Bps}

{=(nature):{list(1):{join(,):{args}}}}
{=(nature2):{mega}}

{=(after.proper):{if(Z{after(1):.}==Z0):{m:trunc({after}*1000)}|{after}}}

{=(emo.tw):<:twright:739824939124785174>}
{=(emo.equal):<:equal:430827567369551882>}

{=(msg.error):Please specify a positive number along with the command, that should get converted from **bits** to **Bytes**.

__Nerd Thing:__ Since it's designed to work with internet speed, it assumes `Kbps` if the length of the bits is superior than 2 (digits), otherwise `Mbps`.
It also realistically won't display proper types if the input was in `Kbps` and the ouput is too low of an internet speed (2 digits).

[Fast.com - Most straight-forward way to get your internet speed](https://fast.com/ \"Fast.com - Powered by Netflix\")}
{=(msg.success):**Bits**
{before} {mega.before}

**Bytes**
{after.proper} {mega.after}}

{=(clr.error):#176aed 1534701}
{=(clr.bad):#cc1b1b 13376283}
{=(clr.ok):#cc7c1b 13401115}
{=(clr.good):#18de39 1629753}

{=(emo.bad):<:dnd:711705660693413938>}
{=(emo.ok):<:idle:711705660361801761>}
{=(emo.good):<:online:711705660261138455>}

{=(part.bad):{emo.bad} Considered Slow Connection}
{=(part.ok):{emo.ok} Considered Average Connection}
{=(part.good):{emo.good} Considered Fast Connection}

{=(check.quality):{if({isnum}==false):error|{all({after}>=2|{mega.after}==MBps):good|{all({after}<=999|{mega.after}==KBps):bad|ok}}}}

{=(clr.cond):{replace(error,{clr.error(2)}):{replace(bad,{clr.bad(2)}):{replace(ok,{clr.ok(2)}):{replace(good,{clr.good(2)}):{check.quality}}}}}}

{=(msg.quality):{replace(bad,{part.bad}):{replace(ok,{part.ok}):{replace(good,{part.good}):{check.quality}}}}}

{=(msg.title):Bits to Bytes Per Second Convertor}

{=(msg.btitle):**Bits**}
{=(msg.before):{before} {mega.before}}

{=(msg.atitle):**Bytes**}
{=(msg.after):{after.proper} {mega.after}}

{=(output):{if({isnum}==false):{msg.error}|{msg.quality}}}

{=(json):{if({isnum}==true):"fields":[{"name":"{msg.btitle}","value":"{msg.before}","inline":true},{"name":"{msg.atitle}","value":"{msg.after}","inline":true}],"title":"{msg.title}","description":"{output}","color":{clr.cond}|"title":"{msg.title}","description":"{output}","color":{clr.cond}}}

{c:cembed {channel(id)} {{json}}}

{=(debug):__Debug:__
check.quality `{check.quality}`
clr.cond `{clr.cond}`
msg.quality `{msg.quality}`
json:```json
{json}```
}

