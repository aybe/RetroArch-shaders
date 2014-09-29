RetroArch-shaders
=================

Some shaders for RetroArch

Installation
------------

Copy them to the `shaders` directory of your RetroArch installation.

Description
------------

**cmyk.cgp**

Renders to CMYK color space using an AGFA SWOP Standard color profile.

It gives that printed-on-paper look'n'feel, barely noticeable on some games on some others it just rocks. Dark/futurist themed games such as Wipeout or Twisted Metal are good candidates. While on overall colors are washed out, blue tends to be more vivid and give a definitely different aspect, currently my favorite one :D

Note: your GPU must handle 4096*4096 textures !

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/cmyk.png)

**nop.cgp**

No-operation shader, just passes content as it is.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/nop.png)

**scanlineFlicker.cgp**

This shader does flickering scanlines like in a CRT.

By default a scanline height equals the height of one scanline at the game resolution level, if you'd like to have screen-level scanline heights, refer to the documentation inside it.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/scanlineFlicker.gif)

Notes
-----

If you'd like to tweak the shaders, you will find explanations of variables of interest in the shaders themselves.
