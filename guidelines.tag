{delete}
{=(req.roles):RolesIDsHere}

{=(COMMENT):Lowers the first argument for it to not be case sensitive.}
{=(l1):{lower:{1}}}

{=(COMMENT):Available keywords and their formatted version.}
{=(msg.kw):cc fan fanart gen int sup tag}
{=(msg.fkw):`{join(`, `):{msg.kw}}`}

{=(emo.tw):<:twright:739824939124785174>}
{=(emo.chat)::speech_left:}
{=(emo.qmark)::question:}
{=(emo.un)::united_nations:}
{=(emo.hash)::hash:}
{=(emo.pc)::computer:}
{=(emo.art)::art:}

{=(sp):　}

{=(msg.categories):
{emo.tw} **General Chat**
{emo.chat} `gen`, `general`
{emo.tw} **Support Channels**
{emo.qmark}`sup`, `support`
{emo.tw} **International Support**
{emo.un} `int`, `eng`
{emo.tw} **Custom Command Support**
{emo.hash} `cc`, `tag`
{emo.tw} **Fan Art Channel**
{emo.art} `fan`, `fanart`
}

{=(COMMENT):Conditionally DMs the user of the tag with the list of keywords, to prevent them from sending in the current channel.}
{=():}
{{if({contains({l1}):{msg.kw}}==false):dm}}

{=(COMMENT):Error message when the keyword is not found or when no argument has been provided.}
{=(kw.{l1}):Keywords -~{msg.categories}}

{=(COMMENT):Storing channel mentions in their own variables, in case we reuse them at different places, without having to re-copy each channel ID separately.}
{=(ch.ccs):<#630869838818050058>}
{=(ch.int):<#533765208091525155>}
{=(ch.faq):<#545372962866331690>}
{=(ch.fan):<#524309734770343965>}
{=(ch.pg):<#456625369974308866>}

{=(COMMENT):----- CUSTOM COMMANDS / TAGS -----}
{=(kw.cc):Custom Command/Tag Support~The {ch.ccs} channel is for more advanced users who are building/troubleshooting custom commands. We require users to have reviewed the [Documentation](https://docs.carl.gg/tags-and-triggers/tags-advanced-usage/ "Tags Advanced Usage Documentation") and have a general understanding of how to use commands and TagScript before seeking support there.

• Check pinned posts for answers/tips to common TagScript questions before posting.
• Questions unrelated to custom commands or TagScript use are not to be posted in this channel.
• You **must** have a base TagScript code or command that you're having trouble with to request support. **You cannot ask for/expect someone to build a command for you** or personally teach you TagScript.
• Do not ping/DM tag creators or users active in the channel. It is no one's job to help you even if you're using their command.}

{=(kw.tag):{kw.cc}}

{=(COMMENT):----- FAN ART -----}
{=(kw.fan):Fan Art~We love to see you stanning a turtle and being inspired! Traditional and modern art are welcome in {ch.fan}. Moderators reserve the right to remove any content from the channel they feel is unfit, inappropriate or violates the rules of this server.
• Works must be of your own creation. Plagiarism is punished.
• All posts must be Carl-bot themed.
• Media files only (image, gif etc.).
• No low-effort content (memes, filtered profile pictures etc)}

{=(kw.fanart):{kw.fan}}

{=(COMMENT):----- GENERAL CHAT -----}
{=(kw.gen):General Channel~This is **not** an anything-goes channel. By "general" we mean general Carl-bot things. Topics to be discussed should be exclusively about Carl-bot, its usage, interesting setups or useful tips you’ve found for using/learning the bot.
• **Do not use this channel to seek support of any kind.** It is not a general support channel.
• Command, trigger or emoji use is to be kept strictly to {ch.pg} unless it pertains to the current conversation.
• **This is not a place to look for new friends**, members/staff for your server, or ping people you know.
• Be respectful and don't start drama. What works for or is interesting to others might not be a big deal to you. If you don’t feel engaged by the current conversation then simply move on or come back another time.
• Do not bring issues from other servers into this one. What happens on another server stays in the other server. It has nothing to do with us, and we will not be a platform for you to harass other users.}

{=(COMMENT):----- INTERNATIONAL SUPPORT -----}
{=(kw.int):International Support~The {ch.int} channel is **exclusively** for users who speak languages other than English to seek support with Carl-bot. If you understand/speak English, use a regular support channel and follow support guidelines.
• Understand that this is an English server, and as such, there are not many members to provide support in other languages.
• All users are required to abide by the server rules regardless of their understanding of English.
• We recommend using a translator service such as [Google Translate](https://translate.google.com/) or [DeepL Translator](https://www.deepl.com/translator) to assist in getting support.}

{=(COMMENT):----- SUPPORT CHANNELS -----}
{=(kw.sup):Support Channel~• Questions starting with *"how do I/how can I"* do not belong in a support channel. Basic questions can be answered by reading the instructions located in the docs, exploring your dashboard or checking our {ch.faq} channel.
• If you feel your question was not answered or you are experiencing issues, provide as much information as possible about what you're attempting to do and what error you are encountering with your question. Providing screenshots of your attempt or suspected problem will help others understand what could be going wrong and offer more accurate support.
• Do not ping any user, role or moderator for support. It is no one's job to help you. After you  have provided a **detailed description** of your question/issue, simply wait for someone who knows the answer to be available.
• Post your question in __**one**__ support channel and be patient. Channel spamming/hopping is needless and will likely cause confusion or your question to be ignored.
• Do not needlessly repost your question. If you haven't been answered but others have it's likely because they don't know the answer. The channel is inspected periodically but if you're concerned you got lost in a flood of other questions, __relink your original post__ in the less active channel and be patient.}

{=(COMMENT):Embed outputs and management.}
{=(COMMENT):Stores hex codes for the embed's side color to use (or not).}
{=(clr.disc):#2f3136}
{=(clr.blurple):#7289da}

{embed(color):{clr.blurple}}
{=(em.static):https://cdn.discordapp.com/icons/186980582863929345/a_142bfab7913a33d06030d6a1afdc1e17.png}
{=(em.icon):{server(icon)}}

{=(emo.scroll)::scroll:}
{=(emo.page)::page_with_curl:}

{=(em.title):{emo.scroll} {kw.{l1}(1):~} Guidelines {emo.scroll}}
{=(em.desc):{kw.{l1}(2):~}}
{=(em.footer):{if({contains({l1}):{msg.kw}}==false):[p]gl <keyword>}}

