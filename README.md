# BBC Micro port of Scott Adams's classic TRS-80 game Pirate Adventure
A port to the BBC Micro of the original TRS-80 BASIC version of Scott Adams's text adventure game Pirate Adventure, as published in [BYTE magazine](https://archive.org/details/byte-magazine-1980-12/page/n193/mode/1up) in 1980.

[**>> Play the game online <<**](http://bbcmicro.co.uk/jsbeeb/play.php?autoboot&disc=https://raw.githubusercontent.com/ahope1/Beeb-Pirate-Adventure/master/PA.ssd)

## The game files

**dataout.bas** — A program (in BBC BASIC) that writes a datafile for the game Pirate Adventure. The datafile contains all the game data such as object locations, room descriptions, etc., in an early version of the Scott Adams text adventure game database format. 

**basicinterpreter.bas** — The main game program (BBC BASIC). Interprets the game file. Reads in the datafile written by dataout.bas (above), takes player input, processes it, and prints responses on screen. The original program listing, including the line-numbers (and the spelling mistakes!), has been changed as little as possible (h/t [pdxiv](https://github.com/pdxiv/PerlScott)). The program source can be copied and pasted into BeebEm. Comments (REMs) that don't have a line-number can be included in a copy-paste but won't take up any space in the RAM of the (emulated) Beeb. See also [this linked reference](https://github.com/pdxiv/LuaScott/blob/master/doc/The_ADVENTURE_Data_Base_Format_(1980).md) which explains the comments. 

**PA.ssd** — Binary file. A disc-image containing the playable game. For use in BBC Micro emulators such as BeebEm.
