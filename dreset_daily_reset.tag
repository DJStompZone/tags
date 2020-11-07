{=(COMMENT):─── COMMAND CONFIGURATION ───}
{=(COMMENT):Daily reset time (24-hour clock). Format `HH:MM` MUST be respected.}
{=(time.reset):06:00}
{=(COMMENT):Timezone Management. Set "timezone.offset" to 0 if it should return UTC date.
This corresponds to the amount of hours there is between your personal timezone and UTC.}
{=(timezone.offset):0}

{=(COMMENT):This is the main prefix for Carl-bot on your server. It will be displayed in the embed's footer with the command usage.}
{=(prefix):!}
{=(COMMENT):Make sure you don't name your tag "reset", as it's already a built-in command. Possible alternatives are "dreset" or "dres" or "res", but can be anything else, as long as it doesn't conflict with an existing command.}
{=(tag.name):dreset}

{=(COMMENT):───────────────────────────────────
There should be nothing to touch below. Only do it if you know what you're doing.}

{=(COMMENT):Returns the datetime values **in your own timezone** of today and of the reset, in case you want to display them somewhere.}
{=(hour.in.second):3600}
{=(timezone.today.unix):{m:trunc(({timezone.offset}*{hour.in.second})+{unix})}}
{=(timezone.today.datetime):{strf({timezone.today.unix}):%F %T}}

{=(COMMENT):Today's date and time.}
{=(today.date):{strf({timezone.today.unix}):%F}}
{=(today.time):{strf({timezone.today.unix}):%T}}
{=(today.datetime):{today.date} {today.time}}
{=(today.unix):{timezone.today.unix}}

{=(COMMENT):Tomorrow's date and time.}
{=(seconds.in.day):86400}
{=(one.more.day):{strf({m:trunc({seconds.in.day}+{today.unix})}):%F}}
{=(tomorrow.date):{one.more.day}}
{=(tomorrow.datetime):{tomorrow.date} {today.time}}

{=(COMMENT):Checking the sign (positive or negative) of the difference between today's date and the reset date.}
{=(unix.reset):{strf({today.date} {time.reset}:00):%s}}
{=(unix.diff):{m:trunc({today.unix}-{unix.reset})}}
{=(diff.sgn):{m:sgn({unix.diff})}}

{=(COMMENT):If it is positive, it means the reset has already happened today and it should take tomorrow's datetime; otherwise today's datetime.}
{=(reset.to.take):{if({diff.sgn}==1):{tomorrow.date}|{today.date}} {time.reset}:00}
{=(reset.datetime):{reset.to.take}}
{=(reset.unix):{strf({reset.datetime}):%s}}


{=(COMMENT):Actual time remaining between now and the next daily reset!}
{=(time.remaining):{td({timezone.today.datetime}):{reset.datetime}}}

{=(COMMENT):Output Management.}
{=(em.title):Time Until Daily Reset}
{=(em.description):**{time.remaining}**}
{=(em.footer):{prefix}{tag.name} • Daily Reset Time: {time.reset}}
{=(em.color):2f3136}
{embed(color):#{replace(#,):{em.color}}}

{=(COMMENT):Debug variable, in which I call almost all the variables in that code to know which value they return and troubleshoot the command. I very much recommend you do this when debugging your code.}
{=(debug):__Debug:__
today.datetime `{today.datetime}`
today.unix `{unix}`
tomorrow.date `{tomorrow.date}`
tomorrow.datetime `{tomorrow.datetime}`

unix.reset `{unix.reset}`
unix.diff `{unix.diff}`
diff.sgn `{diff.sgn}`

reset.to.take `{reset.to.take}`
reset.datetime `{reset.datetime}`
reset.unix `{reset.unix}`

Timezone Management:
timezone.today.unix `{timezone.today.unix}`
timezone.today.datetime `{timezone.today.datetime}`


time.remaining `{time.remaining}`
}
