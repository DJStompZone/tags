{=(input):!test this is a 149926720114262016 user ID}
{=(sp):µ}
{=(replaced):0 {replace(0,{sp}):{replace(1,{sp}):{replace(2,{sp}):{replace(3,{sp}):{replace(4,{sp}):{replace(5,{sp}):{replace(6,{sp}):{replace(7,{sp}):{replace(8,{sp}):{replace(9,{sp}):{args}}}}}}}}}}}}

{=(indexid):{index(µµµµµµµµµµµµµµµµµ):{replaced}} {index(µµµµµµµµµµµµµµµµµµ):{replaced}}}

{=(actualindex):{replace(-1,):{join():{indexid}}}}

{=(checkid):{all({indexid(1)}==-1|{indexid(2)}==-1):|<@{args({actualindex})}>}}

{=(debug):__Debug:__
Arguments: `{args}`
Special character: `{sp}`
Replaced: `{replaced}`
Indexid: `{indexid}`
Actualindex: `{actualindex}`
Mention to return (nothing if none): {checkid}
}

{debug}
