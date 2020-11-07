{=(COMMENT):Type your prefix and your tagname as the content of the two variables below. They will be displayed in the embed footer as instructions.}
{=(prefix):!}
{=(tagname):playlist}

{=(COMMENT):PLAYLISTS! NEEDS to include their aliases/keywords, description and link. You *can* put a fourth item that will be the playlist image. I recommend putting the Video ID of the first (or any) song of the playlist or any image link. Separate each category with the "~" character. Try to avoid using the same keyword for different playlists, obviously. Aliases~Description~Playlist Link/ID~Thumbnail image link or video ID}
{=(ac):AC Animal Crossing ACNL~:herb: Animal Crossing: New Leaf OST~PLhHcMbVmbwCerhZdxVr4odQY_ZgLXEjET~yMsEExr7rOg}
{=(alive):Alive daftpunk daft~Daft Punk - Alive 2007 (Official Audios)~PLSdoVPM5WnndV_AXWGXpzUsIw6fN1RQVN~lVKbF8khsrI}
{=(ambient):Ambient chilltrap chillstep futurebass~Ambient Chillstep Playlist~PLuZADpUBCdIWiezUqQXCwfD_JranWVUDl~THy0Mbe7Q-k}
{=(calm):Calm relax relaxing~:relieved: Sit back, close your eyes and relax.~PL9KH_RTW97AtZWHRYLntEV9pMsbcqZgrF~D9AFMVMl9qE}
{=(chill):Chill kito xkito~Chill Playlist by xKito Music~PLvlw_ICcAI4dXql41zUwAY2FnsCIzT5b-~zhpHjW4bh6Q}
{=(deadmau5):Deadmau5 mau5 mouse~Deadmau5 Playlist (Electro)~PLF1E9D263B9DDFEB7~a2PM5iTlmRE}
{=(diversity):Diversity electro house trance bounce~Diversity's House and Electro Playlist~PLuZADpUBCdIU15qznzTEOfzghV__T060Y~XhlciawLcfM}
{=(dofus):Dofus 1.29~<:dofusretro:628510099404488704> Dofus MMORPG 1.29 Soundtracks. The nostalgia is real.~PLD5AC386714F81011~http://i3.ytimg.com/vi/J2yI8Ir1y6A/hqdefault.jpg}
{=(drum):Drum bass d&b~:sheep: Suicide Sheep's:tm: Drum & Bass Playlist~PLL-6oCB8uzQwZuU_Qp_g1rAZHTM9DAhwo~NBTBqvVkw5k}
{=(gaming):Gaming~Best Gaming Music - Multiple 1-Hour Mixes~PLR7JWZAjVdyt484P_iMNVfjWuKceX5BFp~eSYKJ8WQ508}
{=(hytale):Hytale hOST~Hytale:tm: Official Soundtrack~PLBNBEpf9ivBFLSIReah7-ldsgghL72PKH~https://hytale-serveur.fr/img/logo.png}
{=(lofi):LoFi~LoFi Playlist~PLOzDu-MXXLliO9fBNZOQTBDddoA3FzZUo~RD3AVw5d16k}
{=(nb3):NB3 Nightblue Nightblue3~Nightblue3's Stream Playlist~PLEgNqLmZpLuI9ajUy3Hg97NrpssG4repu~5WewrKYSW4s}
{=(ncs):NCS~NoCopyrightSounds Playlist~PLRBp0Fe2GpgnIh0AiYKh7o7HnYAej-5ph~h3lwmCGG6Mw}
{=(nf):NF Perception~NF - Perception (Official Album Playlist)~PLuEBkrcok7KZVRMdZaUR9az-MSsB3pOWB~gdLLRj1Ge7g}
{=(progressive):Progressive~Progressive House Playlist~PL4qHGPXmjvkzUxKoZOm0Tt1_LVc9QyBxr~oFNBUojIV6k}
{=(royalty):Royalty free EDM KayPea KP~KayPea's Free-to-Use Songs Playlist (EDM)~PLOvPYnvXaMfWxCxuiMZFxcfV08myFhM6E~WP2sjVnaZxg}
{=(selected):Selected~Selected.:tm: Mixes and Sessions in one playlist~PLSr_oFUba1jtK9giSBkBOBkoQKcpBGu71~VgMZVUet7mk}


{=(COMMENT):IMPORTANT: Put each playlist variable's name separated by spaces in the "ava" variable below. I personally put them in alphabetical order so they're clean.}
{=(ava):ac alive ambient calm chill deadmau5 diversity dofus drum gaming hytale lofi nb3 ncs nf progressive royalty selected}


{=(COMMENT):Don't touch anything below. The bot does everything for you.}
{=(l1):{lower:{1}}}
{=(l1):{if({l1}==info):{lower:{2}}|{l1}}}
{=():~}
{=(java):{join(~):0 {ava} None}}

{=(preali):0 {list(1):{java}} {list(2):{java}} {list(3):{java}} {list(4):{java}} {list(5):{java}} {list(6):{java}} {list(7):{java}} {list(8):{java}} {list(9):{java}} {list(10):{java}} {list(11):{java}} {list(12):{java}} {list(13):{java}} {list(14):{java}} {list(15):{java}} {list(16):{java}} {list(17):{java}} {list(18):{java}} {list(19):{java}} {list(20):{java}} {list(21):{java}} {list(22):{java}} {list(23):{java}} {list(24):{java}} {list(25):{java}} {list(26):{java}} {list(27):{java}} {list(28):{java}} {list(29):{java}} {list(30):{java}}}

{=(trues):0 {contains({l1}):{lower:{{list(1):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(2):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(3):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(4):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(5):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(6):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(7):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(8):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(9):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(10):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(11):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(12):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(13):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(14):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(15):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(16):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(17):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(18):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(19):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(20):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(21):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(22):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(23):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(24):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(25):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(26):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(27):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(28):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(29):{join(~):{preali}}}(1):~}}} {contains({l1}):{lower:{{list(30):{join(~):{preali}}}(1):~}}}}

{=(COMMENT):Gets the index of "true" in "trues", so we could know which word to pick from its index.}
{=(indexW):{index(true):{trues}}}
{=(COMMENT):Query's word to return.}
{=(word):{list({indexW}):{java}}}
{=(COMMENT):"Raw" aliases of the query.}
{=(wordAli):{{word}(1):~}}
{=(COMMENT):Formatted keywords/aliases of the query's word.}
{=(wordAlif):`{join(`, `):{wordAli}}`}
{=(COMMENT):Content of the query's word.}
{=(wordDesc):{{word}(2):~}}
{=(COMMENT):Link to return from the query.}
{=(prewordLink):{{word}(3):~}}
{=(wordLink):{if({in(https://www.youtube.com/playlist?list=):{prewordLink}}==true):{prewordLink}|https://www.youtube.com/playlist?list={prewordLink}}}
{=(hyperlink):[{wordDesc}]({wordLink})}

{=(COMMENT):Counts the number of playlists there are. Number to display "for fun" later.}
{=(howmanyp):{index($&):{ava} $&}}
{=(COMMENT):Returns the query's playlist number.}
{=(playlistnum):{index({word}):0 {ava}}}

{=(COMMENT):Youtube Emoji to include in the title.}
{=(youtubeEmoji):<:YouTube:733866137175195699>}

{=(COMMENT):Some music tips that are picked at random at the bottom of the main output. The tips selection cycles through the list of tips, meaning you won't get the same tip twice unless the whole list of tips has been displayed yet.}
{=(msg.tips):Use `{prefix}shuffle` to shuffle the playlist after it's queued. It's practical if you don't want the songs to play always in the same order.~You actually do **not** need to use a specific command to get the bot to join your VC first. Just queuing the playlist alone suffices.~Use `{prefix}repeat` to repeat the entire playlist after it finished playing.~Use `{prefix}pause` to pause the current song yet to keep the queue intact! `{prefix}resume` to resume it.~`{prefix}stop` stops playing the current stop but also clears the entire queue. Practical if you want you switch from one playlist to another.~When you're done listening to music, use `{prefix}dc` to have the bot clear the entire queue and disconnect from the Voice Channel.~Use `{prefix}queue` to see all currently-queued songs.~See the currently-playing song with `{prefix}np`.}
{=(msg.tip):{replace(",\")::bulb: [**Tip:**](https://docs.carl.gg/music/music/ "Carl-bot Music Commands Documentation") {cycle({uses}):{msg.tips}}}}

{=(COMMENT):Message to display when the playlist found should be played.}
{=(msg.success):**Added to queue:**
{hyperlink}

Playlist Keywords:
{wordAlif}}

{=(msg.info):{wordDesc}

__Aliases:__
{wordAlif}}
{=(COMMENT):Formatted version of the available playlists names.}
{=(avaForm):`{join(`, `):{ava}}`}
{=(COMMENT):Message to display when no playlist was found.}
{=(msg.error):This command allows you to listen to music playlists that are saved in {server}.
**Make sure to be in a voice channel before using it!**

**__{howmanyp} Playlists Available:__**
{avaForm}

*Note that each of them has aliases. Use the `info` subcommand to see them.*

{msg.tip}}

{=(fullcheck):{if({lower:{word}}!=none):true|false}}
{=(checkinfo):{and({lower:{1}}==info|{2}!=|{fullcheck}==true):true|false}}

{=(title):{youtubeEmoji} {any({fullcheck}==true|{checkinfo}==true):{wordAli(1)} Playlist Info [{playlistnum}/{howmanyp}]|Music Playlists}}
{=(titleURL):{any({checkinfo}==true|{fullcheck}==true):{wordLink}}}
{=(footer):{prefix}{tagname} (info) <keyword> | Feature made by Asty'}

{=(output):{if({checkinfo}==true):{msg.info}|{if({fullcheck}==true):{msg.success}|{msg.error}}}}

{=(wordThumb):{{word}(4):~}}
{=(COMMENT):Returns the thumbnail to use for the embed.}
{=(emPreThumb):{if({wordThumb}=={wordAli}):|{if({in(http):{wordThumb}}==true):{wordThumb}|http://i3.ytimg.com/vi/{wordThumb}/maxresdefault.jpg}}}
{=(emThumb):{any({checkinfo}==true|{fullcheck}==true):,
      "thumbnail": {
        "url": "{emPreThumb}"
		}}}

{=(colorRed):16196901}
{=(colorGreen):7470989}
{=(COMMENT):JSON code that will be used in the cembed command to post the embed.}
{=(json): {
      "title": "{title}",
      "description": "{output}",
	  "url":"{titleURL}",
      "color": {colorGreen},
      "footer": {
        "text": "{footer}"}{emThumb}
    }
}

{=():}
{override}
{c:cembed {channel(id)} {json}}
{{and({fullcheck}==true|{checkinfo}==false):c:play {wordLink}}}

{=(COMMENT):You can ignore the debug variable below. This is how I troubleshoot commands to see what's wrong, by calling key variables and see what they return.}
{=(debug):__Debug:__
Lowered argument: {l1}
Available content's words: {ava}
trues: {trues}
index: {indexW}
Word to return: {word}
word link: <{wordLink}>
word isn't "None": {fullcheck}
checkinfo: {checkinfo}
wordThumb: `{wordThumb}`
emPreThumb: `{emPreThumb}`
emThumb: `{emThumb}`
json: ```json
{json}```
MSG TIP: `{msg.tip}`
}