{=(pre):{args(2):many }}
{=(aftermany):{pre(1)}}
{=(resp):{#:Exactly~Approximately~For sure}}
{=(num):{range:1-100}}
{=(output):{if({aftermany}!={1}):{resp} {num} {aftermany}.|{num}}}
{output}