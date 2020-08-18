----------------------------------------------------------
		Grounded Developtment Level Unlocker
				-by VooDooShamane-
----------------------------------------------------------
v1.03



About Grounded Development Level Unlocker
------------------------------------------

The purpose of this Tool is to trigger the game to use the "AR_00_World_Dev"
Level File instead of the Standard "AR_00_World_Rel" Level. I found the File
while digging through the Gamefiles.

"AR_00_World_Rel":
This is the Release Level and will be loaded in the Cooked Game wich has
been official released by Obsidian Entertainment.

"AR_00_World_Dev":
Seems to be left over and does contain unreleased but also unfinished, still
in Development content. Some of the Content does not work properly, while
some is fully functional.

As of now the content in the standard release game is a bit short and the
Option to have some more to explore and discover is very well welcome. I am
sure the Developers will add many Content in future updates and it may
very well be the Content wich is now in the "unfinished" state accessible in
the "AR_00_World_Dev" Level. My Guess is the Developer do put all the
new Content in the "AR_00_World_Dev" Level to see how it integrates into the
Game. That way they can adjust Things and test the new Content in the final
Environment. And when they have finished the new Contentent, they transfer it
over into the "AR_00_World_Rel" Level for the Public release.

Here are ome Screenshots taken in Dev Level:
https://imgur.com/a/wafM382



Behavior of the Game with unlocked Dev Level
--------------------------------------------

The unlock Patch enables the possibility to load and save the Game properly.
Just like it is in the standard (released) Game.

Also, Multiplayer will be fully functional. It even seems like, just the Host
has to have unlock the Development Level and all other Player will load
and join into the Hosts Development Level. Although I only did a small
Test on that and recommend all Players in one Multiplayer Session to use the
unlock Patch.

Game saves wich are made before the Dev Level unlock can still be used and
all Creatures, Player, Items, Buildings will load fine in the Development
Level. But I recommend to backup your Save files because the Content will
change with further Updates and may be removed or behave different. And the
future updates may be be unaware of the content wich is in the Dev Level
saves.

When you decide to play in the Standard (unpatched) Release Game with a
Savegame wich has been saved while playing in the unlocked Development
Level, There will be left overs in the World wich do not belong in there.
So I recommend to always load only Game saves from the Release Level or
create a new.

There will be some new Bugs in the unlocked Dev Level wich will maybe not
occur in the standard Released Game. So if you encounter Bugs and want to
report them to the Developers, make sure they are also present when playing
the Original and unmodified Game. Because we all Love the Game and want to
support the Developers. We do not want to have them to deal with Bug Reports
from Bugs wich are not be present in the original released Game.



Current supported Game versions for Patcher v1.03
-------------------------------------------------

v0.1.0.2168 (Build 5337632)
v0.1.1.2193 (Build 5385723)
v0.1.2.2215 (Build 5408963)

If there will be an Update to the Game, wich does still contain the
"AR_00_World_Dev" Level but be unable to patch with this tool, There is
still the Option to load the Dev Level via Unreal Engine Console Command.

open AR_00_World_Dev

With this Command, you can still save your game in the world it is just,
when you log back into the game world, you are required to enter the dev world
command again and will load the assets back while keeping you in the world and
all the stuff you have built, the game will just have to go through a loading
screen to do so but it still keeps you in the world while loading.

To verivy in wich Level you are currently, use this Console Command:

stat levels

To get access to the Console, you have to use this Tool:
https://framedsc.github.io/GeneralGuides/universal_ue4_consoleunlocker.htm



Usage of the App
----------------

Open the "Maine-WindowsNoEditor.pak" wich is located in:
(Your Grounded Install Directory)\Maine\Content\Paks\Maine-WindowsNoEditor.pak

The App will Analyze the File via MD5sum to find out the Version and the
current Patch state. After that just press the "Apply selected Patch" Button
to either unlock the Development Level or restore the original File. When
the Patch is finished, you can reopen the same Pak File to analyze the Pak
File again and see if the patching Process worked as expected.



Contents of the zip File
------------------------

1. 	"Dev Lvl Unlocker-GuiEdition_v1.03Final.exe"
	(compiled Win32 EXE via AHK Compiler v1.1.33.2 ANSI 32-bit)
	Virus total Scan:
	https://www.virustotal.com/gui/file/f238370e54f7302daae6aa5734a5c902450efec22de26e31d0f9765fa4019487
	There are some Virus Engines wich do detectd the File as Thread but
	those are false positives. It is a known Problem that Programs compiled
	with AHK and compressed with Mpress do get flagged as a Virus.
	As you can see here:
	https://www.autohotkey.com/boards/viewtopic.php?t=62266
	If yo do not trust me, you can compile the App for yourself.
	(source code included)
	You can help me with a Community up vote on the Virus total Link.

2. 	Source Code:
	This App will always be Open Source and never be any Financial Profit
	from it. Commercial Distribution to generate Financial Profit is strictly
	prohibited! You can compile the App for your self or modify it to your
	likings for personal Usage.

3. 	This Readme.txt File :-P



Last notes / thanks.
--------------------

Foremost, i want to thank the Developers of Obsidian Entertainment for
making such a nice Game. This goes out to You Dev's, if you do want me to
remove this App from public Access, please contact me and I will do so.
Greetings

Credits do also get to Icarus of Paradox for making the PPF tools wich is
included in this App and does the Patching Process.

Also Thank's to AHK and Mpress

Shout out to 2 nice People wich I met on Twitch, who helped me testing
the Mod. They know they are meant if they read this ;-)

Thank you.

Signed,
VooDooShamane
