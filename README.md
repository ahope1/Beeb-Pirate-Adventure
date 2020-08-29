# BBC Micro port of Scott Adams's classic TRS-80 game Pirate Adventure
A port to the BBC Micro of the TRS-80 BASIC version of Scott Adams's text adventure game Pirate Adventure, as published in [BYTE magazine](https://archive.org/details/byte-magazine-1980-12/page/n193/mode/1up) in 1980.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[**>> Play the game online <<**](http://bbcmicro.co.uk/jsbeeb/play.php?cpuMultiplier=4&autoboot&disc=https://raw.githubusercontent.com/ahope1/Beeb-Pirate-Adventure/master/PA.ssd)

[Background info](https://ahopeful.wordpress.com/2020/08/25/scott-adamss-type-in-pirate-adventure-byte-1980/) at Retroactive Fiction.

A BBC Micro port of the TRS-80 BASIC version of Scott Adams's [Adventureland](https://github.com/ahope1/Beeb-Adventureland) is also available.


## The game files

**dataout.bas** — A program (in BBC BASIC) that writes a datafile for the game Pirate Adventure. The datafile contains all the game data such as object locations, room descriptions, etc., in what I presume is an early version of the Scott Adams text adventure game database format, as seen in the [article](https://archive.org/details/byte-magazine-1980-12/page/n193/mode/1up) in BYTE. 

**basicinterpreter.bas** — The main game program (BBC BASIC). Interprets the game file. Reads in the datafile written by dataout.bas (above), takes player input, processes it, and prints responses on screen. The original program listing (h/t [pdxiv](https://github.com/pdxiv/PerlScott)), including the line-numbers and the spelling mistakes(!), has been altered as little as possible. The program source can be copied and pasted into BeebEm. Comments (REMs) that don't have a line-number can be included in a copy-paste but won't take up any space in the RAM of the (emulated) Beeb. See also [this linked reference](https://github.com/pdxiv/LuaScott/blob/master/doc/The_ADVENTURE_Data_Base_Format_(1980).md), which explains some of the comments. 

**PA.ssd** — Binary file. A disc-image containing the playable game. For use in BBC Micro emulators such as BeebEm.
