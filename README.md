RetroArch-shaders
=================

Some shaders for RetroArch

Installation
------------

Copy the content of the `shaders` directory to the `shaders` (or any sub-folder) directory of your RetroArch installation.


Description
------------

**nop.cgp**

No-operation shader, just passes content as it is.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/nop.png)

**cmyk.cgp**

Renders to CMYK color space using an AGFA SWOP Standard color profile.

It gives that printed-on-paper look'n'feel, barely noticeable on some games on some others it just rocks. Dark/futurist themed games such as Wipeout or Twisted Metal are good candidates. While on overall colors are washed out, blue tends to be more vivid and give a definitely different aspect, currently my favorite one :D

Note: your GPU must handle 4096*4096 textures !

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/cmyk.png)

**scanlineFlicker.cgp**

This shader does flickering scanlines like in a CRT.

By default a scanline height equals the height of one scanline at the game resolution level, if you'd like to have screen-level scanline heights, refer to the documentation inside it.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/scanlineFlicker.gif)

(click the image to view it at 1:1 scale)

**grayAverage.cgp**

This gray shader uses the poor man's gray algorithm, channels are added and divided by 3.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/grayAverage.png)

**grayBT601.cgp**

This gray shader uses the same transformation matrix used in SDTV.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/grayBT601.png)

**grayBT709.cgp**

This gray shader uses the same transformation matrix used in HDTV.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/grayBT709.png)

**grayBT709Negative.cgp**

Same as *grayBT709* except that black is white and vice-versa, like the alien vision in AvP.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/grayBT709Negative.png)

**technicolor1.cgp**

Technicolor shader, a color process used in early film shootings which consisted of filming using multiples films and merging them to color the motion.

See http://en.wikipedia.org/wiki/Technicolor for more.

This version uses an additive blend of red and blue channels.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/technicolor1.png)

**technicolor2.cgp**

Technicolor shader, this version uses a multiplicative blend of red and blue channels.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/technicolor2.png)

**technicolor3.cgp**

Technicolor shader, this version does matting between all channels.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/technicolor3.png)

**technicolor3-w.cgp**

Technicolor shader, this version uses cyan, magenta, yellow and red/orange filters.

![](https://raw.githubusercontent.com/aybe/RetroArch-shaders/master/samples/technicolor3-w.png)

Notes
-----

If you'd like to tweak the shaders, you will find explanations of variables of interest in the shaders themselves.

Credits
-------

Technicolor shaders : http://001.vade.info/
