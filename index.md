---
title: Ryan Gray's Projects
author: Ryan Gray
css: /home/ryan/Documents/web/buttondown/buttondown.css
toc-title: Contents
---

# Retrocomputing


## Sinclair/Timex

When I started to recover my old Sinclair files, I also got into the emulator 
scene, and started to work on some utilities for the virtual tape formats.

### [Zmakebas](https://github.com/ryangray/zmkakebas)

I have a fork of this utility that converts Sinclair BASIC source from text 
files to .p or .tap for the ZX81/TS100 and Spectrum/TS2068. This is just for
pushing bug fixes and maybe enhancements to the upstream project. Several of my 
utilities produce output intended to be used with it.

### Sinclair ZX81, Timex Sinclair 1000 and 1500

The Sinclair ZX81 was the first computer I owned. Up to that point, I used
TRS-80 Model I computers at the school and various other Apple II, Atari, TI,
and others that friends had. Mine is a relatively rare US version that they sold
by mail order in the States before Timex sold the co-branded TS1000.

I only had it about a year and a half before I got my TS2068 the following
Christmas. I did quite a bit on it though as I continued to use it some after I
got the new computer. I was also a member of the Fort Worth TS user group for a
few years during this time.

#### Emulator P file utilities

* [zx81-utils](https://github.com/ryangray/zx81-utils)

    Several command line programs to work with programs in the common .p file 
    emulator format. A few also work with the .tap format for Spectrum/2068 
    programs. Many are designed to work with the popular [Zmakebas][] utility by
    generating BASIC code in text files designed to be used by Zmakebas to 
    convert to a .p (or .tap) file.

    - **p2txt** - Extracts the BASIC program text from a .p file in a few formats.
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


### Sinclair ZX Spectrum, Timex Sinclair 2068

As I had continue to use my ZX81 for a time after I got my TS2068, I used my
TS2068 for a time after I got my IBM PCjr since it took a while until I had
learned the new system and had enough software to use it well.

During a break between my undergraduate and graduate degrees, I revisited the
Sinclair machines to work on machine code and write a game.

#### My Original BASIC Programs

I recovered many of the BASIC programs I wrote decades ago for my Timex Sinclair 
2068 computer, some of which were interesting enough to put here, and some I 
continue to work on. 

* [QuickFont](https://github.com/ryangray/quickfont)

    A font editor for user-defined fonts. This was an early program I wrote the
    first version of, then enhanced it later after making a UDG editor that emulated
    the Mac graphical user interface that was new at the time. The new version
    borrowed most of the look but dropped the joystick-driven pointer operation and
    drop-down menus.

    There was never a standard for a memory location for the fonts, so I just
    reserved the 768 bytes below the UDG characters at the top of memory. You can
    always load the fonts to the location of your choice.

    Once I recovered this program from my old tapes, I almost immediately began to
    modify it to speed up and enhance it in the ways I never got around to back
    then. I've since sped up some things with machine code, and made a version that
    runs under the OS-64 system.

* Thief (coming soon)

    A game inspired by Lode Runner but is way simpler and you play against the
    clock. There are 6 levels, and there is a built-in level creator. 


#### [TS-Pico Commander](https://github.com/ryangray/ts-pico-commander)

Some members of the [Time Sinclair Online User
Group](https://www.timexsinclair.com/community/), of which I am a member, have
created some new hardware add-ons for the Timex Sinclair systems. One of these
is the TS-Pico which allows you to save and load programs from an SD card.

I was asked to make a file manager of sorts for it. The initial program is
writen in BASIC with a user interface reminiscent of an old file commander for
DOS. At this point it's mostly just a way to browse the SC card and load
programs with a little bit of file management.


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
