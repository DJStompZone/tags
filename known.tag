{embed(color):{user(color)}}

{=(prefix):!}
{=(tagname):known}

{=(tjat):{target(joined_at)}}
{=(ujat):{user(joined_at)}}

{=(diff.ut):{td({ujat}):{tjat}}}
{=(diff.tu):{td({tjat}):{ujat}}}

{=(date.toTake):{if({contains(ago):{diff.ut}}==true):{ujat}|{tjat}}}

{=(duration):{replace( ago,):{td:{date.toTake}}}}

{=(error):See how long you've known someone for by mentioning them!
__Usage:__ `{prefix}{tagname} @someone`}

{=(extra):{if({list(1):{join(,):{args}}}!=):You had something to say about them:
{args(2+)}}}

{=(msg.output):{user(mention)}, you've known {target(mention)} for:
**{duration}**!

{extra}}

{=(output):{if({user(id)}!={target(id)}):{msg.output}|{error}}}

{=(author.img):{if({user(id)}!={target(id)}):{target(avatar)}}}
{=(author.name):{if({user(id)}!={target(id)}):How long have I known you for}}