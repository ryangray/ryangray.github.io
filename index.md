---
title: Ryan Gray's Projects
author: Ryan Gray
css: ../buttondown/buttondown.css
toc-title: Contents
---

My GitHub for all my projects is <https://github.com/ryangray>

A page of my stuff on David Anderson's site: <https://www.timexsinclair.com/indiv/ryan-gray/>

For links to posts on groups.io, you should look at the whole thread in case 
there are followup posts with other info or corrections.

# Retrocomputing


## Sinclair/Timex

When I started to recover my old Sinclair files, I also got into the emulator 
scene, and started to work on some utilities for the virtual tape formats.

### Sinclair ZX81, Timex Sinclair 1000 and 1500

The Sinclair ZX81 was the first computer I owned. Up to that point, I used
TRS-80 Model I computers at the school and various other Apple II, Atari, TI,
and others that friends had. Mine is a relatively rare US version that they sold
by mail order in the States before Timex sold the co-branded TS1000.

I only had it about a year and a half before I got my TS2068 the following
Christmas. I did quite a bit on it though as I continued to use it some after I
got the new computer. I was also a member of the Fort Worth TS user group for a
few years during this time.

#### Emulator P file (and .tap file) utilities {#zx81-utils}

* [zx81-utils](https://github.com/ryangray/zx81-utils)

    Several command line programs to work with programs in the common .p file 
    emulator format. A few also work with the .tap format for Spectrum/2068 
    programs. Many are designed to work with the popular [Zmakebas][] utility by
    generating BASIC code in text files designed to be used by Zmakebas to 
    convert to a .p (or .tap) file.

    - **p2txt** - Extracts the BASIC program text from a .p file in a few 
      formats.
    - **p2speccy** - Converts the BASIC program in a .p file to a ZX Spectrum
      BASIC program in a text file that can be converted to .tap with zmakebas.
    - **hex2rem** - Convert a hex or binary file to a REM statement in a text
      file that can be converted with zmakebas.
    - **rem2bin** - Extracts the machine code in the first line REM statement
      into a binary or hex file.
    - **hex2tap** - Like *hex2rem* but it outputs the bytes as a Spectrum/TS2068
      CODE segment in a .tap file.
    - **tapauto** - Disable or modify the autostart setting of a program in a
      .tap file.
    - **p2ts1510** - This is for converting the program in a .p file into a ROM
      image formatted for the Timex 1510 cartridge adapter or one of its clones.
    - **dckls** - List or dump the contents of a TS2068 Command Cartridge .dck 
      file.

* [TS1510 Cartridge Adapter Emulator P file converter](https://github.com/ryangray/zx81-utils#p2ts1510)

    Carl Miles made an improved verision of a TS1510 Cartridge Adapter clone
    which uses custom plug-in EPROM boards with a switch to select from 4 
    different program stores on it. His version lets you use 16K programs 
    instead of just 8K programs.
    
    I wrote a utility to convert programs in emulator .P files to an 8 or 16K
    ROM image to burn onto the cartridge EPROM. It uses genrally the same method
    of a loader machine code program at address 8192, but it is generalized (the
    originals appear to be specific to each of the four original cartridge 
    programs) and loads all of the data from the .P file to be more broadly 
    compatible. It doesn't handle programs that chain load another, like some
    from QuickSilva that had a loader that configured their hardware add-on then
    loaded the next file on the tape.
    
    This program is `p2ts1510` in my [zx81-utils](#zx81-utils) above. A post on
    ts2068.groups.io is [here](https://ts2068.groups.io/g/main/message/8027).
    
[Zmakebas]: https://github.com/chris-y/zmakebas

### Sinclair ZX Spectrum, Timex Sinclair 2068

As I had continue to use my ZX81 for a time after I got my TS2068, I used my
TS2068 for a time after I got my IBM PCjr since it took a while until I had
learned the new system and had enough software to use it well.

During a break between my undergraduate and graduate degrees, I revisited the
Sinclair machines to work on machine code and write a game.

See also: my [zx81-utils](#zx81-utils) above as it has some utilities involving
.tap files.

#### My Original BASIC Programs

I recovered many of the BASIC programs I wrote decades ago for my Timex Sinclair 
2068 computer, some of which were interesting enough to put here, and some I 
continue to work on. 

* [QuickFont](https://github.com/ryangray/quickfont)

    A font editor for user-defined fonts. This was an early program I wrote the
    first version of, then enhanced it later after making a UDG editor that 
    emulated the Mac graphical user interface that was new at the time. The new 
    version borrowed most of the look but dropped the joystick-driven pointer 
    operation and drop-down menus.

    There was never a standard for a memory location for the fonts, so I just
    reserved the 768 bytes below the UDG characters at the top of memory. You 
    can always load the fonts to the location of your choice.

    Once I recovered this program from my old tapes, I almost immediately began 
    to modify it to speed up and enhance it in the ways I never got around to 
    back then. I've since sped up some things with machine code, and made a 
    version that runs under the OS-64 system.

* [Thief](https://github.com/ryangray/thief)

    A game inspired by Lode Runner but is way simpler and you play against the
    clock. There are 6 levels, and there is a built-in level creator. 
    
    After recovering it, I immediately modified it slightly to fix a few things 
    and make it a bit faster. I came back to it later and upgraded it to have
    color using the [DEFADD trick](#defadd).
    

* [TS2068 Calendar Printer](https://github.com/ryangray/ts-calprint)

    I re-created my calendar printer for the TS2068 from recovering the calendar 
    routine and a font it used back in the day. I've also given examples of how
    to use Imagemagick to make PDFs from Fuse.

    - [The 2026 calendar I made with it](https://ts2068.groups.io/g/main/message/8907)
    - [The alternate images 2026 calendar](https://ts2068.groups.io/g/main/message/8917)
    - [The 2025 version with a 4-up print example](https://ts2068.groups.io/g/main/message/7494)
 
* [Banner Printer](https://ts2068.groups.io/g/main/message/6136)

    Not in Github yet. Another recovered program that I then modified to be able
    to also print block graphics and UDG characters.
    
* [FUDGE](https://ts2068.groups.io/g/main/message/5244)

    The Friendly User Defined Graphics Editor. This was made not long after the 
    introduction of the Macintosh as a way of both honoring the GUI and mocking
    it a bit. It uses the joystick of course, and the interaction is a bit 
    ridiculous which was sort of the point. Thought I remember having a version 
    where a little man would run onto the screen, jump up and pull down the 
    menus. 
    
* [Tilez](https://ts2068.groups.io/g/main/message/3000)

    I made a version of the classic 15-tile game for the ZX81 back in the day.
    I haven't recovered it from tape yet, but I did have an old TS2040 printout
    of it, so I typed it in. I also had made a machine code version of it that I
    hope to recover at some point. Start of threadis 
    [here](https://ts2068.groups.io/g/main/message/2627).
    
* [Graph-All](https://ts2068.groups.io/g/main/message/2462)

    Make plots of functions that you can type in at a prompt rather than coding 
    into the program, so you can easily plot multiple functions on the same 
    plot. It uses `ON ERR` to handle asymptotes and such.
    
#### Contributions and Forks of Other Projects

* [Zmakebas](https://github.com/ryangray/zmmakebas)

    I have a fork of this utility that converts Sinclair BASIC source from text 
    files to .p or .tap for the ZX81/TS100 and Spectrum/TS2068. This is just for
    pushing bug fixes and maybe enhancements to the upstream project. Several of
    my utilities produce output intended to be used with it.

    I've contributed several fixes to mainly fix the ZX81 mode, fix the `ON ERR` 
    keyword and add the `DELETE` keyword. [Tim H.](https://github.com/ohnosec/zmakebas)
    had previously added the other TS2068 keywords.

* [`listbasic` from the FUSE Utilities](https://ts2068.groups.io/g/main/message/9130)

    I added support for TS2068 BASIC programs to The FUSE utility `listbasic`.
    There was some support already, but this also prevents the T and U UDG 
    characters from becoming `SPECTRUM` and `PLAY` keywords, it handles `DELETE`
    and fixes problems with `ON ERR`. A program option `-t` is added for "Timex"
    BASIC mode, but it also tries to auto-detect a 2068 program and turn on the 
    mode for the rest of the program. I've yet to work on submitting these mods 
    to the original project.

* [ZX-Spectrumizer image converter](https://ts2068.groups.io/g/main/message/8985)

    I added a monochrome mode to make true monochrome images with black ink and 
    for dark colors and white paper for light colors so that images will print 
    to the monochrome printer correctly. It's best to use the dithering option 
    with it.

* [TS2068 User Manuals with Bookmarks](https://ts2068.groups.io/g/main/message/8271)

    Made bookmarked versions of the color, high-res, and black and white 
    versions of the user manual and added the pages missing from online scans of
    the black and white one.


#### [TS-Pico Commander](https://github.com/ryangray/ts-pico-commander)

Some members of the [Time Sinclair Online User
Group](https://www.timexsinclair.com/community/), of which I am a member, have
created some new hardware add-ons for the Timex Sinclair systems. One of these
is the TS-Pico which allows you to save and load programs from an SD card.

I was asked to make a file manager of sorts for it. The initial program is
writen in BASIC with a user interface reminiscent of an old file commander for
DOS. At this point it's mostly just a way to browse the SC card and load
programs with a little bit of file management.


### Articles posted on the [Timex Sinclair 2068 group on groups.io](https://ts2068.groups.io/g/main)

#### Keys and Characters

* [40 Keys: Remembering Where Everything Is](https://ts2068.groups.io/g/main/message/8115)

    A post to maybe give you a way to remeber where most of the keywords are on 
    a TS2068.

* [TS1000/ZX81 and TS2068/Spectrum Character Cheatsheets](https://ts2068.groups.io/g/main/message/2771)

    Handy one-page character table references with decimal, hex, typing hints,
    Zmakebas escapes, and more.
    
#### DEF FN

* [Sinclair BASICs: DEF FN, Beginner](https://ts2068.groups.io/g/main/message/8093)

    An introduction to using DEF FN, a command you may not have really used 
    since the Timex manual hardly mentions it.

* [Recursve DEF FN](https://ts2068.groups.io/g/main/message/7917)

* [DEF FuN](https://ts2068.groups.io/g/main/message/8087)

    Using `DEF FN` in a recursive way to create string trimming functions.

#### DEFADD "Trick" {#defadd}

* [DEFADD Trick](https://ts2068.groups.io/g/main/message/7821)

    An example of how I did it using regular `DEF FN` lines in BASIC rather 
    than POKEing the essential bytes into memory somewhere.
    
* [Subroutine parameters via DEFADD trick](https://ts2068.groups.io/g/main/message/8196)

    A slightly less cumbersome way to sort of have parameters for subroutines 
    and even return values.

#### Fonts

* [Tweak Font](https://ts2068.groups.io/g/main/message/7886)

    A slightly twweaked version of the TS2068 ROM font.

* [TimeSync Font](https://ts2068.groups.io/g/main/message/7885)

    A font for your PC in the style of the TS2068 font. I imagined a font that 
    the pixelated font we all know might have been derived from. Even though it 
    is basically square, it is quite a bit wider than all the other fonts for 
    your computer that you are used to.

    Tim H. has his own take on such a font [here](https://github.com/timex-sinclair-projects/TS2068-typeface).

* [ZX Spectrum Tilde and vertical bar characters for the TS2068](https://ts2068.groups.io/g/main/message/2713)

    A small BASIC routine to add to your programs to get the `~` and `|` 
    characters as UDGs to use.

* [TS1000 "gray" block graphic characters for the TS2068](https://ts2068.groups.io/g/main/message/2712)

    If you got used to using the "gray" block graphics characters on the TS1000
    and were missing them on your TS2068, this programs them into a few UDG
    characters. Also handy when you type a TS1000 BASIC program into your TS2068.
    
* [Homebrew 64 Column Printing](https://ts2068.groups.io/g/main/message/2547)

    A method of 64 column printing using BASIC and a few fonts. Not real fast, 
    but better than other examples I've seen.

#### Tape Recovery

* [Fort Worth User Group T/S 2068 Library Tape Archiving Process](https://ts2068.groups.io/g/main/message/2509)

    In the middle of the thread, my post of recovering programs from side A of
    my copy of this tape from back in the day.

* [Example of Using Audacity](https://ts2068.groups.io/g/main/message/2548)

    Some basic tips on using the free audio editing tool Audacity to help you
    get started. I found that you might only have to do a little bit for your
    TS2068 audio before loading it into the Fuse emulator as it is *very* good
    at processing the audio internally to read the data. It's better than the 
    stand-alone command line tools in the [Fuse Utilities][Fuse] and [TZX Tools][].

[Fuse]: https://fuse-emulator.sourceforge.net/
[TZX Tools]: https://github.com/shred/tzxtools

#### Misc

* [Silversoft ZX81 Compiler documentation](https://ts2068.groups.io/g/main/message/7668)

    Apparently no one had archived this on-line that I could find.

* [Header utility](https://ts2068.groups.io/g/main/message/6368)

    I recovered a tape program header reader utility from the Fort Worth user
    group library tape that is made for the TS2068. I modified the prompting
    slightly.

* [Using a terminal in Spectrum emulation in Fuse to log in to your Linux computer](https://ts2068.groups.io/g/main/message/5660)

    Connecting the Interface 1 serial port in Fuse to FIFO pipes in Linux which
    are connected to a terminal.

# Markdown

Things for the popular easy to use text-based markup format.

* [Buttondown](https://github.com/ryangray/buttondown)

    A clean stylesheet accomodating HTML generated with Pandoc.

* [doodad](https://github.com/ryangray/doodad)

    An Apache thing to dynamically render and serve up Markdown pages.


# MATLAB

Stuff for the commercial science and engineering programming tool. Much of these
will work on the open source GNU Octave as well.

* [matlab_units](https://github.com/ryangray/matlab-units)

    A units library for MATLAB that is more intuitive and can change the base
    units as well as use unit objects for checking dimensional correctness. This
    works on Octave except for the unit objects (it subclasses the double type).
