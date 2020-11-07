{override}
{silence}

{=(COMMENT):Grabs the first user argument as its lowered version, so it becomes case insensitive. Meaning if they type "IN" instead of "in" after clock, it would still work.}
{=(l1):{lower:{1}}}

{=(COMMENT):---Clock in part---}
{=(li):0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f}
{=(t1):{strf:%m%d%H%M}}
{=(COMMENT):Converts the current date and time, such as "08121404" for August 12 at 2:04 PM (14), from decimal to hexadecimal. Code by Elise.}
{=(dec2hex):{cycle({m:trunc({t1}/16^5)}):{li}}{cycle({m:trunc({t1}/16^4)}):{li}}{cycle({m:trunc({t1}/16^3)}):{li}}{cycle({m:trunc({t1}/16^2)}):{li}}{cycle({m:trunc({t1}/16^1)}):{li}}{cycle({m:trunc({t1}/16^0)}):{li}}}
{=(COMMENT):Name pattern used for each person's role. Currently "ClockUserID", such as "Clock149926720114262016".}
{=(pattern):Clock{user(id)}}
{=(COMMENT):Command block to call later, that will change the color of the custom user role with the hex code that represents the date and time at which the user clocked in.}
{=(clockin):c:role color {pattern} {dec2hex}}

{=(COMMENT):---Clock out part---}

{=(COMMENT):Alias of user color, while removing the hashtag off it.}
{=(ucolor):{replace(#,):{user(color)}}}

{=(COMMENT):UNUSED -- Spacing off each digit of the user color's hex code.}
{=(spc):{replace(, ):{ucolor}}}

{=(COMMENT):Hex to Decimal Conversion of the spaced user color.}
{=(spaced):{replace(a,10):{replace(b,11):{replace(c,12):{replace(d,13):{replace(e,14):{replace(f,15):{replace(, ):{ucolor}}}}}}}}}
{=(spd):{replace(, ):{m:trunc(({spaced(2)}*(16^5))+({spaced(3)}*(16^4))+({spaced(4)}*(16^3))+({spaced(5)}*(16^2))+({spaced(6)}*(16^1))+({spaced(7)}*(16^0)))}}}

{=(COMMENT):Checks the length of the hex code to see if the month has been zero padded or no.}
{=(lenhex):{index($&):{spd} $&}}

{=(COMMENT):Makes the month zero padded if when retrieving the hex it wasn't, otherwise takes it as is.}
{=(fmt):{if({lenhex}==7):0{spd(2)}-{spd(3)}{spd(4)} {spd(5)}{spd(6)}:{spd(7)}{spd(8)}:00|{spd(2)}{spd(3)}-{spd(4)}{spd(5)} {spd(6)}:{spd(7)}:00}}

{=(COMMENT):Actually string formatted time and its unix value.}
{=(prepastclock):{strf:%Y}-{fmt}}
{=(pastclock):{strf({prepastclock}):%s}}
{=(COMMENT):Difference between the current unix time with the unix value of the retrieved time through the hex.}
{=(diff):{m:trunc(abs({pastclock}-{unix}))}}
{=(COMMENT):Number of seconds in an hour.}
{=(hins):3600}
{=(COMMENT):Calculates the number of hours in the unix difference that got returned above. }
{=(hours):{m:trunc({diff}/{hins})}}

{=(COMMENT):Wage per hour. 15 dollars per hour by default.}
{=(wageph):15}
{=(COMMENT):Calculates how much the user would earn based on the amount of hours that's passed since they last clocked in.}
{=(howmuch):{m:{wageph}*{hours}}Z}
{=(COMMENT):Truncatenates the result if it ends in .0, otherwise takes it as is.}
{=(received):{replace(Z,):{replace(.0Z,):{howmuch}}}}

{=(COMMENT):Resets the user color to no color, to reset the clock in time to nothing until their next clock in.}
{=(clockout):c:role color {pattern} 000000}

{=(COMMENT):---Output Management---}
{=(msg.clockin)::bellhop: You successfully just clocked in, {user(mention)}.
__Date & Time:__ `{strf:%b %m at %I:%M %p}`}

{=(msg.already)::no_entry: You already clocked out today, {user(mention)}!
Wait for your next service to clock in again.}

{=(COMMENT):Conditional hour to display.}
{=(condhour):{if({hours}<1):Less than an hour|{if({hours}==1):{hours} hour|{hours} hours}}}
{=(msg.clockout)::bellhop: You just clocked out, {user(mention)}.
__Service time:__ **{condhour}**
__Money earned today:__ **${received}**}

{=(msg.error):Use `!clock [in｜out]` to clock in and clock out every day. 
When you clock out, it displays the amount of hours you've worked for the day and the money you're supposed to get based on them.}

{=(output):{and({user(color)}==#000000|{l1}==out):{msg.already}|{if({l1}==in):{msg.clockin}|{if({l1}==out):{msg.clockout}|{msg.error}}}}}

{=(COMMENT):Executes the role color command block when the user clocks in and clocks out.}
{=():}
{{if({l1}==in):{clockin}|{and({l1}==out|{user(color)}!=#000000):{clockout}}}}

{=(COMMENT):Sets the embed's side color to Discord dark theme's background color.}
{embed(color):#2f3136}

{=(COMMENT):Puts the user avatar as a static image instead of a GIF if it was one. It's overall less distracting.}
{=(staticav):{any({l1}==in|{l1}==out):{replace(.gif,.png):{user(avatar)}}}}


{=(COMMENT):You can completely ignore the debug below. I've been using it as a way to debug the command and call all the variables to know what was wrong during the troubleshoot(ing).}
{=(debug):__Debug:__
spaced {spaced}
spd {spd}
length {lenhex}
format {fmt}
prepastclock {prepastclock}
diff {diff}
hours {hours}

howmuch {howmuch}
received {received}
msg.clockout {msg.clockout}
}

{=(debug2):__Debug2:__
is arg1 "in": {if({l1}==in):yes|no}
is arg1 "out": {if({l1}==out):yes|no}
is arg1 "out" and ucolor none: {and({user(color)}==#000000|{l1}==out):yes|no}
}