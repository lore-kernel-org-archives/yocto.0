Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45A77E00D3A; Tue, 16 Apr 2019 22:08:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE66E00D39
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 22:08:37 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id z16so26046952qtn.4
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 22:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OOO1mETI+ebVg2tzbOYOjL8BIkBWE2u1ZOfjPBnz2To=;
	b=QG7QPcpVSrNWeMX46CsyO05xxg00oW0Z9D2Asj9zRQjIsA7aGSVYsoCQ4+rMVImKJs
	la7a3GdwRSxcU++LGjMpr28NK7rTu0A6P69CL4ZWt+YlWmNqMqCDNhKQ1+R6Uw0rjYv8
	XB2ikpG0p3a9hzDl2YEfrCPKkBCP+fVJR8whjzhHngnHjcVCqWPdRT5RD6nUnQbN0pZp
	rFV+dbLQfPh5MXLiumMtzbdusF+VG6BoKtlS19HwuxVfbS2FJTWifMku209M3L3zDZFc
	ZOgWLNlGL3S6Yfn+MiFJotvFrjw0UgRuJEOx0ARd70MkHdZpqcLGhNjTEnLGu3Yr1kyO
	lsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OOO1mETI+ebVg2tzbOYOjL8BIkBWE2u1ZOfjPBnz2To=;
	b=os8yAaShFauCDh7uEbQuc2+diTKpfJJ0Qp00WC9NacKI8ESq6aetbLglQyMXmN1gpp
	9sGeyJhKfCd84ZpBy+IyIWChfFCaCgIdbtIiyM2XSrCmXCp3QQsApT6bIVeWGVne3mx7
	esOopAoFOduYMqtk9M32VUZE8tvHWbcwxa1rOaoZ9V3CSYRSGXeXNqw8fr/yURMt1mOl
	pMo0zAWnfdtnit8zIeZ6JGSEO+fENxVsaCY40w0frp5W7U6CdIaKAQEHbepYdZM8i2dw
	D49soOynWvPeM3Zm4geoTmgZIuRwNiZsJx05Nojb+1JzhmpfSNt3F7sD/lOXosRvPVXH
	VlIg==
X-Gm-Message-State: APjAAAWoWLuKKoE0aEtbOi60s1Pl6XYDW0UnJo8hDtxadOv8UX15Mo81
	Lxml+yy6nJ2ie4PhU1qWcBbC/VDTfXz5SoEZ3Q0=
X-Google-Smtp-Source: APXvYqzIIrY7AjO+hizr3h5jcLUvNOSABHKNXMQCUsO1XohLvikJLUl5RJPvvEn+CUhpOD7v7maD+Wgf2tWVulOrL/A=
X-Received: by 2002:aed:2314:: with SMTP id h20mr67519676qtc.24.1555477715857; 
	Tue, 16 Apr 2019 22:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
	<CAGAf8LxYW24L9Ah=ERcQncuMFC5w3UB26_WxoyZor8UQU7hBFw@mail.gmail.com>
	<003801d4bd38$cd620b80$68262280$@polycaptil.fr>
	<CAGAf8LxWMPqkFZxZWcq78onkxNO1TyUd0NUUkHje+jN7bO1Q4g@mail.gmail.com>
	<CAGAf8Lx-hCeapL1HtucKEG6kXb+8MwrdMWyEiSXXrqa+-vAG9w@mail.gmail.com>
	<000b01d4c790$95ede180$c1c9a480$@polycaptil.fr>
	<CAGAf8Ly+TuyozCCaeHTv6hPJLHnQZSo_jh5=hHfNdg-RLAR8Eg@mail.gmail.com>
	<00f001d4ebb4$773a0a00$65ae1e00$@polycaptil.fr>
	<CAGAf8LwPtTNk_cPGuNZPj_sruev8=5qsrisFt0PXiiH5tv1ZjQ@mail.gmail.com>
	<00bf01d4f07f$7185bd50$549137f0$@polycaptil.fr>
	<CAGAf8LzKu0OTmYoAwUmLWAiCbfNquCKWqBovV-g7EK+_n5q9Vg@mail.gmail.com>
	<004401d4f43c$7d843b20$788cb160$@polycaptil.fr>
In-Reply-To: <004401d4f43c$7d843b20$788cb160$@polycaptil.fr>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 17 Apr 2019 07:08:22 +0200
Message-ID: <CAGAf8LwEyLeARnjxv5oL+8DnH=AwGKJkmobYnVeo=AuBJUK_gg@mail.gmail.com>
To: Stanisavljevic <n.stanisavljevic@polycaptil.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto touchscreen
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 Apr 2019 05:08:47 -0000
Content-Type: multipart/alternative; boundary="000000000000b5b79a0586b2e06b"

--000000000000b5b79a0586b2e06b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Nikola,

One friendly advise: please, for the very long boot messages use paste-bin
site:
https://pastebin.com/69D1Ps1W
_______

I am not an expert on X11, but I have noticed the following:

> I use a DTB file from krogoth version, because, I tried to use the DTB
file
> generated for sumo thud and warrior version but it=E2=80=99s didn=E2=80=
=99t work.

This could be from the fact that you are using almost three year old kernel=
.
Krogoth was released in 04.2016: https://wiki.yoctoproject.org/wiki/Release=
s
The kernel 4.4.19 was released in 08.2016:
https://www.spinics.net/lists/announce-kernel/msg01655.html

So, you are using correct krogoth DTB for the adequate 4.4.19 kernel.

I do not track all the kernel changes (I am not Greg Kroah-Hartman, and not
ought to be :-) ), but there is a possibility that DTS compiler changed som=
e
formats? You need to explore this. Does the DTS compiler change the format
in recent kernels for GFX (remote, but still the possibility)?

> I only update files in rootfs partition (with developed versions) and not
boot
> partition. While boot process is running, the splashscreen appear
correctly,
> but immediately when the terminal session appears, the touchscreen lock.

I assume, U-Boot keeps its own DTS file, while kernel its own. In your case=
,
the splash screen could come out from Grub (which is part of the /boot, not
changed as said), *or, perhaps, from booting of the early stage kernel.*

*If it is so, it does explain correct splash screen, since in this stage*
*kernel does NOT use X11 framework, rather fbdev (very simplistic i/f).*

From the log:
> Current Operating System: *Linux am335x-evm 4.4.19-ge581bb1cac* #1
> PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l

Seems that 1.20.4 X11 org. and kernel 4.4.19 I/F are not in sync (most
likely)?

*My kludge/educated guess at this point will be to change the kernel to
4.20...*
*Or similar (one native to warrior release).*

Any other opinion from YOCTO mailing list?

Thank you,
Zoran
_______


On Tue, Apr 16, 2019 at 12:09 PM Stanisavljevic <
n.stanisavljevic@polycaptil.fr> wrote:

> Hello Zoran
>
>
>
> I tried to change screen resolution with xrandr to change the screen
> resolution to 480x272 (it is the screen resolution of the touchscreen) bu=
t
> it=E2=80=99s changes nothing screen resolution seems to stay to 1024x768
>
> I defined on the device tree the screen resolution but it=E2=80=99s like =
it was
> not taken in account
>
> Here is the definition of the touchscreen resolution in the device tree :
>
>                                display-timings {
>
>                                                480x272 {
>
>
> hactive                 =3D <480>;
>
>
> vactive                 =3D <272>;
>
>
> hback-porch      =3D <43>;
>
>
> hfront-porch     =3D <8>;
>
>
> hsync-len            =3D <4>;
>
>
> vback-porch      =3D <12>;
>
>
> vfront-porch     =3D <4>;
>
>
> vsync-len            =3D <10>;
>
>
> clock-frequency =3D <9000000>;
>
>
> hsync-active      =3D <0>;
>
>
> vsync-active      =3D <0>;
>
>                                                };
>
> I use a DTB file from krogoth version, because, I tried to use the DTB
> file generated for sumo thud and warrior version but it=E2=80=99s didn=E2=
=80=99t work.
>
> I only update files in rootfs partition (with developed versions) and not
> boot partition
>
>
>
> While boot process is running, the splashscreen appear correctly, but
> immediately when the terminal session appears, the touchscreen lock.
>
>
>
> Here is what is in Xorg.0.log
>
> root@am335x-evm:~# cat /var/log/Xorg.0.log
>
> [    15.212]
>
> X.Org X Server 1.20.4
>
> X Protocol Version 11, Revision 0
>
> [    15.212] Build Operating System: Linux 4.15.0-45-generic x86_64
>
> [    15.212] Current Operating System: Linux am335x-evm 4.4.19-ge581bb1ca=
c
> #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
>
> [    15.213] Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcb=
lk0p2
> rw
>
> [    15.213] Build Date: 10 April 2019  08:15:46PM
>
> [    15.213]
>
> [    15.213] Current version of pixman: 0.38.0
>
> [    15.213]    Before reporting problems, check http://wiki.x.org
>
>         to make sure that you have the latest version.
>
> [    15.213] Markers: (--) probed, (**) from config file, (=3D=3D) defaul=
t
> setting,
>
>         (++) from command line, (!!) notice, (II) informational,
>
>         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
>
> [    15.213] (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Thu Apr 11
> 15:51:53 2019
>
> [    15.219] (=3D=3D) Using config file: "/etc/X11/xorg.conf"
>
> [    15.219] (=3D=3D) Using system config directory
> "/usr/share/X11/xorg.conf.d"
>
> [    15.235] (=3D=3D) ServerLayout "Builtin Default Layout"
>
> [    15.235] (**) |-->Screen "Builtin Default fbdev Screen 0" (0)
>
> [    15.235] (**) |   |-->Monitor "Builtin Default Monitor"
>
> [    15.237] (**) |   |-->Device "Builtin Default fbdev Device 0"
>
> [    15.237] (=3D=3D) Automatically adding devices
>
> [    15.237] (=3D=3D) Automatically enabling devices
>
> [    15.237] (=3D=3D) Automatically adding GPU devices
>
> [    15.237] (=3D=3D) Max clients allowed: 256, resource mask: 0x1fffff
>
> [    15.238] (WW) The directory "/usr/share/fonts/X11/misc/" does not
> exist.
>
> [    15.238]    Entry deleted from font path.
>
> [    15.239] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exis=
t.
>
> [    15.239]    Entry deleted from font path.
>
> [    15.239] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exis=
t.
>
> [    15.239]    Entry deleted from font path.
>
> [    15.239] (WW) The directory "/usr/share/fonts/X11/Type1/" does not
> exist.
>
> [    15.239]    Entry deleted from font path.
>
> [    15.239] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not
> exist.
>
> [    15.239]    Entry deleted from font path.
>
> [    15.239] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not
> exist.
>
> [    15.239]    Entry deleted from font path.
>
> [    15.239] (=3D=3D) FontPath set to:
>
>
>
> [    15.239] (=3D=3D) ModulePath set to "/usr/lib/xorg/modules"
>
> [    15.239] (II) The server relies on udev to provide the list of input
> devices.
>
>         If no devices become available, reconfigure udev or disable
> AutoAddDevices.
>
> [    15.239] (II) Loader magic: 0x7f73dd78
>
> [    15.239] (II) Module ABI versions:
>
> [    15.239]    X.Org ANSI C Emulation: 0.4
>
> [    15.239]    X.Org Video Driver: 24.0
>
> [    15.239]    X.Org XInput driver : 24.1
>
> [    15.239]    X.Org Server Extension : 10.0
>
> [    15.245] (II) xfree86: Adding drm device (/dev/dri/card0)
>
> [    15.248] (II) no primary bus or device found
>
> [    15.248]    falling back to
> /sys/devices/platform/ocp/4830e000.lcdc/drm/card0
>
> [    15.249] (II) "glx" will be loaded. This was enabled by default and
> also specified in the config file.
>
> [    15.249] (II) LoadModule: "extmod"
>
> [    15.249] (II) Module "extmod" already built-in
>
> [    15.249] (II) LoadModule: "dbe"
>
> [    15.249] (II) Module "dbe" already built-in
>
> [    15.249] (II) LoadModule: "glx"
>
> [    15.261] (WW) Warning, couldn't open module glx
>
> [    15.261] (EE) Failed to load module "glx" (module does not exist, 0)
>
> [    15.262] (II) LoadModule: "record"
>
> [    15.262] (II) Module "record" already built-in
>
> [    15.262] (II) LoadModule: "dri"
>
> [    15.262] (II) Module "dri" already built-in
>
> [    15.262] (II) LoadModule: "fbdev"
>
> [    15.262] (II) Loading /usr/lib/xorg/modules/drivers/fbdev_drv.so
>
> [    15.267] (II) Module fbdev: vendor=3D"X.Org Foundation"
>
> [    15.267]    compiled for 1.20.4, module version =3D 0.5.0
>
> [    15.267]    Module class: X.Org Video Driver
>
> [    15.267]    ABI class: X.Org Video Driver, version 24.0
>
> [    15.267] (II) FBDEV: driver for framebuffer: fbdev
>
> [    15.268] (--) using VT number 3
>
>
>
> [    15.277] (WW) Falling back to old probe method for fbdev
>
> [    15.277] (II) Loading sub module "fbdevhw"
>
> [    15.277] (II) LoadModule: "fbdevhw"
>
> [    15.277] (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
>
> [    15.281] (II) Module fbdevhw: vendor=3D"X.Org Foundation"
>
> [    15.281]    compiled for 1.20.4, module version =3D 0.0.2
>
> [    15.281]    ABI class: X.Org Video Driver, version 24.0
>
> [    15.281] (II) FBDEV(0): using default device
>
> [    15.282] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card
> support
>
> [    15.282] (II) FBDEV(0): Creating default Display subsection in Screen
> section
>
>         "Builtin Default fbdev Screen 0" for depth/fbbpp 24/32
>
> [    15.282] (=3D=3D) FBDEV(0): Depth 24, (=3D=3D) framebuffer bpp 32
>
> [    15.282] (=3D=3D) FBDEV(0): RGB weight 888
>
> [    15.282] (=3D=3D) FBDEV(0): Default visual is TrueColor
>
> [    15.282] (=3D=3D) FBDEV(0): Using gamma correction (1.0, 1.0, 1.0)
>
> [    15.282] (II) FBDEV(0): hardware:  (video memory: 510kB)
>
> [    15.282] (DB) xf86MergeOutputClassOptions unsupported bus type 0
>
> [    15.282] (II) FBDEV(0): checking modes against framebuffer device...
>
> [    15.282] (II) FBDEV(0): checking modes against monitor...
>
> [    15.282] (II) FBDEV(0): Virtual size is 480x272 (pitch 480)
>
> [    15.282] (**) FBDEV(0):  Built-in mode "current"
>
> [    15.282] (=3D=3D) FBDEV(0): DPI set to (96, 96)
>
> [    15.282] (II) Loading sub module "fb"
>
> [    15.282] (II) LoadModule: "fb"
>
> [    15.283] (II) Loading /usr/lib/xorg/modules/libfb.so
>
> [    15.297] (II) Module fb: vendor=3D"X.Org Foundation"
>
> [    15.297]    compiled for 1.20.4, module version =3D 1.0.0
>
> [    15.297]    ABI class: X.Org ANSI C Emulation, version 0.4
>
> [    15.297] (**) FBDEV(0): using shadow framebuffer
>
> [    15.298] (II) Loading sub module "shadow"
>
> [    15.298] (II) LoadModule: "shadow"
>
> [    15.298] (II) Loading /usr/lib/xorg/modules/libshadow.so
>
> [    15.304] (II) Module shadow: vendor=3D"X.Org Foundation"
>
> [    15.304]    compiled for 1.20.4, module version =3D 1.1.0
>
> [    15.304]    ABI class: X.Org ANSI C Emulation, version 0.4
>
> [    15.324] (=3D=3D) FBDEV(0): Backing store enabled
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.335] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.335] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.335] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.335] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.335] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
>
> [    15.335] (=3D=3D) FBDEV(0): DPMS enabled
>
> [    15.335] (II) Initializing extension Generic Event Extension
>
> [    15.335] (II) Initializing extension SHAPE
>
> [    15.335] (II) Initializing extension MIT-SHM
>
> [    15.335] (II) Initializing extension XInputExtension
>
> [    15.338] (II) Initializing extension XTEST
>
> [    15.338] (II) Initializing extension BIG-REQUESTS
>
> [    15.338] (II) Initializing extension SYNC
>
> [    15.338] (II) Initializing extension XKEYBOARD
>
> [    15.338] (II) Initializing extension XC-MISC
>
> [    15.338] (II) Initializing extension XFIXES
>
> [    15.338] (II) Initializing extension RENDER
>
> [    15.338] (II) Initializing extension RANDR
>
> [    15.338] (II) Initializing extension COMPOSITE
>
> [    15.338] (II) Initializing extension DAMAGE
>
> [    15.338] (II) Initializing extension MIT-SCREEN-SAVER
>
> [    15.338] (II) Initializing extension DOUBLE-BUFFER
>
> [    15.339] (II) Initializing extension DPMS
>
> [    15.339] (II) Initializing extension Present
>
> [    15.339] (II) Initializing extension DRI3
>
> [    15.339] (II) Initializing extension X-Resource
>
> [    15.339] (II) Initializing extension XVideo
>
> [    15.339] (II) Initializing extension XVideo-MotionCompensation
>
> [    15.339] (II) Initializing extension GLX
>
> [    15.339] (II) Initializing extension XFree86-VidModeExtension
>
> [    15.339] (II) Initializing extension XFree86-DGA
>
> [    15.339] (II) Initializing extension XFree86-DRI
>
> [    15.339] (II) Initializing extension DRI2
>
> [    15.678] (II) config/udev: Adding input device gpio_buttons@0
> (/dev/input/event0)
>
> [    15.678] (II) No input driver specified, ignoring this device.
>
> [    15.678] (II) This device may have been added with another device fil=
e.
>
> root@am335x-evm:~#
>
>
>
>
>
> here is what in xorg.conf
>
> root@am335x-evm:~# cat /etc/X11/xorg.conf
>
> Section "Module"
>
>         Load    "extmod"
>
>         Load    "dbe"
>
>         Load    "glx"
>
>         Load    "freetype"
>
>         Load    "type1"
>
>         Load    "record"
>
>         Load    "dri"
>
> EndSection
>
>
>
> Section "Monitor"
>
>         Identifier      "Builtin Default Monitor"
>
> EndSection
>
>
>
> Section "Device"
>
>         Identifier      "Builtin Default fbdev Device 0"
>
>         Driver  "fbdev"
>
> EndSection
>
>
>
> Section "Screen"
>
>         Identifier      "Builtin Default fbdev Screen 0"
>
>         Device  "Builtin Default fbdev Device 0"
>
>         Monitor "Builtin Default Monitor"
>
> EndSection
>
>
>
> Section "ServerLayout"
>
>         Identifier      "Builtin Default Layout"
>
>         Screen  "Builtin Default fbdev Screen 0"
>
> EndSection
>
> root@am335x-evm:~#
>
>
>
>
>
> root@am335x-evm:~# cat /usr/share/X11/xorg.conf.d/
>
> 10-evdev.conf     10-quirks.conf    40-libinput.conf
>
> root@am335x-evm:~# cat /usr/share/X11/xorg.conf.d/
>
> cat: read error: Is a directory
>
>
>
> Nikola
>
>
>
> *De :* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> *Envoy=C3=A9 :* vendredi 12 avril 2019 06:05
> *=C3=80 :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Cc :* Yocto Project <yocto@yoctoproject.org>; Marc Ferland <
> marc.ferland@gmail.com>
> *Objet :* Re: [yocto] yocto touchscreen
>
>
>
> Hello Nikola,
>
> I have here one non-important suggestion, for the starters:
> Please, change kernel command line:
> > [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p2 rw
>
> to: *console=3DttyS0*,115200 root=3D/dev/mmcblk0p2 rw
>
> According to:
> > [    0.000414] Console: colour dummy device 80x30
> > [    0.000440] WARNING: Your 'console=3DttyO0' has been replaced by 'tt=
yS0'
> > [    0.000447] This ensures that you still see kernel messages. Please
> > [    0.000452] update your kernel commandline.
> _______
>
> Looking into:
> (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Thu Apr 11 15:41:31 2019
> (=3D=3D) Using config file: "/etc/X11/xorg.conf"
> (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
>
> Poky (Yocto Project Reference Distro) 2.6+snapshot am335x-evm /dev/ttyS0
>
> am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) reports:
> > Warning:          Unsupported high keycode 372 for name <I372> ignored
>
> >                   X11 cannot support keycodes above 255.
>
> >                   This warning only shows for the first high keycode.
>
> *> Internal error:   Could not resolve keysym XF86MonBrightnessCycle*
>
>
>
> Errors from xkbcomp are not fatal to the X server
>
> [   15.951736] random: dbus-daemon: uninitialized urandom read (12 bytes
> read, 67 bits of entropy available)
> D-BUS per-session daemon address is:
> unix:abstract=3D/tmp/dbus-AntF8uRBJQ,guid=3D2087fb970fdb264af1e4e5315caf6=
02b
> *Size 1024x768 not found in available modes*
> *Error: No calibratable devices found.*
> *matchbox: Cant find a keycode for keysym 269025056*
> matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
> *matchbox: Cant find a keycode for keysym 2809*
> matchbox: ignoring key shortcut telephone=3D!$dates
> *matchbox: Cant find a keycode for keysym 269025050*
> matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop
> _______
>
>
>
> Seems, that mode you have chosen somehow with your touch screen
>
> driver is NOT supported (messages in *RED*).
>
>
>
> Please, could you choose something supported (800x600) and see if
>
> this will work for you (just as proof of concept/ad-hoc test)?
>
>
>
> Maybe your driver does not support 1024x768 mode (could be!)?
>
> *And, YES, calibration mode NOT to be performed could be FATAL!*
>
> _______
>
>
>
> For now, it is enough suggestions for exploring and trying by you.
>
>
>
> You should have attached to your @ log Xorg.0.log message again, for
>
> us to inspect the messages and try to determine where the failure is.
>
>
>
> Zoran
>
> _______
>
>
>
> On Thu, Apr 11, 2019 at 5:58 PM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
>
> Hello Zoran,
>
>
>
> I tried to change X.org X Server version
>
>
>
> To do this I used yocto warrior version.
>
> When I boot the system, it=E2=80=99s written that x.org X Server version =
is to
> 1.20.4
>
>
>
> But I have the same problem as before, the touchscreen is completely
> locked and don=E2=80=99t react when I touch the screen.
>
>
>
> Do you have an other idea where the problem is coming ?
>
>
>
> Here I copy the boot log :
>
>
>
> U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)
>
> Trying to boot from MMC1
>
> reading uboot.env
>
> reading u-boot.img
>
> reading u-boot.img
>
> reading u-boot.img
>
> reading u-boot.img
>
>
>
>
>
> U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)
>
>
>
> CPU  : AM335X-GP rev 2.1
>
> Model: TI AM335x EVM-SK
>
> DRAM:  256 MiB
>
> NAND:  0 MiB
>
> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
>
> reading uboot.env
>
> ERROR: No USB device found
>
>
>
> at drivers/usb/gadget/ether.c:2709/usb_ether_init()
>
> Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]
>
>
>
> Warning: ethernet@4a100000 using MAC address from ROM
>
> eth0: ethernet@4a100000
>
> Hit any key to stop autoboot:  0
>
> reading zImage
>
> 3412752 bytes read in 251 ms (13 MiB/s)
>
> reading dtb
>
> 39733 bytes read in 12 ms (3.2 MiB/s)
>
> ## Flattened Device Tree blob at 82000000
>
>    Booting using the fdt blob at 0x82000000
>
>    Loading Device Tree to 8df19000, end 8df25b34 ... OK
>
>
>
> Starting kernel ...
>
>
>
> [    0.000000] Booting Linux on physical CPU 0x0
>
> [    0.000000] Initializing cgroup subsys cpu
>
> [    0.000000] Initializing cgroup subsys cpuacct
>
> [    0.000000] Linux version 4.4.19-ge581bb1cac
> (polycaptil@polycaptil-HP-Notebo
>                      ok) (gcc version 5.3.0 (GCC) ) #1 PREEMPT Thu May 24
> 11:42:17 CEST 2018
>
> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=3D10c5387d
>
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instructio                                                      n cache
>
> [    0.000000] Machine model: TI AM335x EVM-SK
>
> [    0.000000] cma: Reserved 48 MiB at 0x8a800000
>
> [    0.000000] Memory policy: Data cache writeback
>
> [    0.000000] CPU: All CPU(s) started in SVC mode.
>
> [    0.000000] AM335X ES2.1 (sgx neon )
>
> [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
> Total pag                                                      es: 64960
>
> [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p2 rw
>
> [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
>
> [    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072
> bytes)
>
> [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536
> bytes)
>
> [    0.000000] Memory: 200444K/262144K available (6495K kernel code, 313K
> rwdata                                                      , 2368K rodat=
a,
> 260K init, 265K bss, 12548K reserved, 49152K cma-reserved, 0K
> hi                                                      ghmem)
>
> [    0.000000] Virtual kernel memory layout:
>
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>
> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
>
> [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
>
> [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
>
> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
>
> [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
>
> [    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)
>
> [    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)
>
> [    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)
>
> [    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)
>
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1,=
 Nodes=3D1
>
> [    0.000000] Preemptible hierarchical RCU implementation.
>
> [    0.000000]  Build-time adjustment of leaf fanout to 32.
>
> [    0.000000] NR_IRQS:16 nr_irqs:16 16
>
> [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128
> interrup                                                      ts
>
> [    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
>
> [    0.000013] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps ever=
y
> 89478                                                      484971ns
>
> [    0.000034] clocksource: timer1: mask: 0xffffffff max_cycles:
> 0xffffffff, max
> _idle_ns: 79635851949 ns
>
> [    0.000046] OMAP clocksource: timer1 at 24000000 Hz
>
> [    0.000221] clocksource_probe: no matching clocksources found
>
> [    0.000414] Console: colour dummy device 80x30
>
> [    0.000440] WARNING: Your 'console=3DttyO0' has been replaced by 'ttyS=
0'
>
> [    0.000447] This ensures that you still see kernel messages. Please
>
> [    0.000452] update your kernel commandline.
>
> [    0.000471] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977216)
>
> [    0.089060] pid_max: default: 32768 minimum: 301
>
> [    0.089190] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes=
)
>
> [    0.089201] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
> bytes)
>
> [    0.089924] Initializing cgroup subsys io
>
> [    0.089956] Initializing cgroup subsys memory
>
> [    0.089996] Initializing cgroup subsys devices
>
> [    0.090011] Initializing cgroup subsys freezer
>
> [    0.090026] Initializing cgroup subsys perf_event
>
> [    0.090038] Initializing cgroup subsys pids
>
> [    0.090068] CPU: Testing write buffer coherency: ok
>
> [    0.090493] Setting up static identity map for 0x80008200 - 0x80008258
>
> [    0.092679] devtmpfs: initialized
>
> [    0.105439] VFP support v0.3: implementor 41 architecture 3 part 30
> variant c                                                       rev 3
>
> [    0.120521] omap_hwmod: debugss: _wait_target_disable failed
>
> [    0.175644] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, ma
> x_idle_ns: 19112604462750000 ns
>
> [    0.179890] pinctrl core: initialized pinctrl subsystem
>
> [    0.181243] NET: Registered protocol family 16
>
> [    0.183450] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
>
> [    0.209057] cpuidle: using governor ladder
>
> [    0.239046] cpuidle: using governor menu
>
> [    0.243690] OMAP GPIO hardware version 0.1
>
> [    0.254398] hw-breakpoint: debug architecture 0x4 unsupported.
>
> [    0.297651] edma 49000000.edma: TI EDMA DMA engine driver
>
> [    0.298633] reg-fixed-voltage fixedregulator@2: could not find pctldev
> for no                                                      de
> /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, deferring
> pro                                                      be
>
> [    0.302387] omap_i2c 44e0b000.i2c: could not find pctldev for node
> /ocp/l4_wk                                                      up@44c000=
00
> /scm@210000/pinmux@800/pinmux_i2c0_pins, deferring probe
>
> [    0.302542] media: Linux media interface: v0.10
>
> [    0.302605] Linux video capture interface: v2.00
>
> [    0.302656] pps_core: LinuxPPS API ver. 1 registered
>
> [    0.302664] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolf=
o
> Giome                                                      tti <
> giometti@linux.it>
>
> [    0.302694] PTP clock support registered
>
> [    0.302758] EDAC MC: Ver: 3.0.0
>
> [    0.303971] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400
>
> [    0.304334] Advanced Linux Sound Architecture Driver Initialized.
>
> [    0.305513] clocksource: Switched to clocksource timer1
>
> [    0.316808] NET: Registered protocol family 2
>
> [    0.317626] TCP established hash table entries: 2048 (order: 1, 8192
> bytes)
>
> [    0.317665] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
>
> [    0.317693] TCP: Hash tables configured (established 2048 bind 2048)
>
> [    0.317782] UDP hash table entries: 256 (order: 0, 4096 bytes)
>
> [    0.317803] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
>
> [    0.317960] NET: Registered protocol family 1
>
> [    0.318387] RPC: Registered named UNIX socket transport module.
>
> [    0.318402] RPC: Registered udp transport module.
>
> [    0.318409] RPC: Registered tcp transport module.
>
> [    0.318415] RPC: Registered tcp NFSv4.1 backchannel transport module.
>
> [    0.319367] hw perfevents: enabled with armv7_cortex_a8 PMU driver, 5
> counter                                                      s available
>
> [    0.321439] futex hash table entries: 256 (order: -1, 3072 bytes)
>
> [    0.329858] squashfs: version 4.0 (2009/01/31) Phillip Lougher
>
> [    0.330796] NFS: Registering the id_resolver key type
>
> [    0.330874] Key type id_resolver registered
>
> [    0.330882] Key type id_legacy registered
>
> [    0.330960] ntfs: driver 2.1.32 [Flags: R/O].
>
> [    0.334733] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 2                                                      48)
>
> [    0.334764] io scheduler noop registered
>
> [    0.334778] io scheduler deadline registered
>
> [    0.334936] io scheduler cfq registered (default)
>
> [    0.336607] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800
> size 568
>
> [    0.339467] backlight supply power not found, using dummy regulator
>
> [    0.402551] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled
>
> [    0.407008] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158,
> base_baud =3D                                                       30000=
00)
> is a 8250
>
> [    1.017402] console [ttyS0] enabled
>
> [    1.022241] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159,
> base_baud =3D                                                       30000=
00)
> is a 8250
>
> [    1.032291] [drm] Initialized drm 1.1.0 20060810
>
> [    1.039603] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013)=
.
>
> [    1.046388] [drm] No driver support for vblank timestamp query.
>
> [    1.062150] Console: switching to colour frame buffer device 60x34
>
> [    1.070379] tilcdc 4830e000.lcdc: fb0:  frame buffer device
>
> [    1.105534] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0
>
> [    1.118627] loop: module loaded
>
> [    1.124254] libphy: Fixed MDIO Bus: probed
>
> [    1.185548] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6
>
> [    1.191692] davinci_mdio 4a101000.mdio: detected phy mask fffffffe
>
> [    1.198739] libphy: 4a101000.mdio: probed
>
> [    1.202836] davinci_mdio 4a101000.mdio: phy[0]: device
> 4a101000.mdio:00, driv
> er SMSC LAN8710/LAN8720
>
> [    1.212833] cpsw 4a100000.ethernet: Detected MACID =3D a0:f6:fd:4c:a6:=
ba
>
> [    1.220460] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D
> c4:ed:ba:88:2a:92
>
> [    1.229323] mousedev: PS/2 mouse device common for all mice
>
> [    1.235803] i2c /dev entries driver
>
> [    1.240462] cpuidle: enable-method property 'ti,am3352' found operatio=
ns
>
> [    1.248156] omap_hsmmc 48060000.mmc: Got CD GPIO
>
> [    1.275714] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
>
> [    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_p                                                      ins
>
> [    1.317169] ledtrig-cpu: registered to indicate activity on CPUs
>
> [    1.326062] NET: Registered protocol family 10
>
> [    1.332076] sit: IPv6 over IPv4 tunneling driver
>
> [    1.337708] NET: Registered protocol family 17
>
> [    1.342503] Key type dns_resolver registered
>
> [    1.347084] omap_voltage_late_init: Voltage driver support not added
>
> [    1.407266] tps65910-rtc tps65910-rtc: rtc core: registered
> tps65910-rtc as r                                                      tc=
0
>
> [    1.415401] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
>
> [    1.421798] omap_hsmmc 48060000.mmc: Got CD GPIO
>
> [    1.426953] vmmc: supplied by vbat
>
> [    1.466351] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
>
> [    1.474750] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_p                                                      ins
>
> [    1.513248] mmc0: host does not support reading read-only switch,
> assuming wr                                                      ite-enab=
le
>
> [    1.523416] mmc0: new high speed SDHC card at address 0001
>
> [    1.529625] mmcblk0: mmc0:0001 AS 3.72 GiB
>
> [    1.535990]  mmcblk0: p1 p2 p3
>
> [    1.595934] vdd_mpu: supplied by vbat
>
> [    1.602181] input: gpio_buttons@0 as /devices/platform/gpio_buttons@0/=
input/i
>                     nput0
>
> [    1.618321] tps65910-rtc tps65910-rtc: setting system clock to
> 2019-04-11 15:                                                      41:17
> UTC (1554997277)
>
> [    1.639403] lis3_reg: disabling
>
> [    1.655736] ALSA device list:
>
> [    1.658725]   No soundcards found.
>
> [    1.678270] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature
> incomp                                                      atibilities
>
> [    1.696893] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature
> incomp                                                      atibilities
>
> [    1.918459] EXT4-fs (mmcblk0p2): recovery complete
>
> [    1.926817] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
> mode. O                                                      pts: (null)
>
> [    1.945553] VFS: Mounted root (ext4 filesystem) on device 179:2.
>
> [    1.951741] devtmpfs: mounted
>
> [    1.955142] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)
>
> [    1.975513] This architecture does not have kernel memory protection.
>
> INIT: version 2.88 booting
>
> Starting udev
>
> [    2.626491] udevd[78]: starting version 3.2.7
>
> [    2.632958] random: udevd: uninitialized urandom read (16 bytes read,
> 19 bits                                                       of entropy
> available)
>
> [    2.655617] random: udevd: uninitialized urandom read (16 bytes read,
> 19 bits                                                       of entropy
> available)
>
> [    2.675821] random: udevd: uninitialized urandom read (16 bytes read,
> 20 bits                                                       of entropy
> available)
>
> [    2.685085] random: udevd: uninitialized urandom read (16 bytes read,
> 20 bits                                                       of entropy
> available)
>
> [    2.730297] udevd[78]: specified group 'kvm' unknown
>
> [    2.798310] udevd[79]: starting eudev-3.2.7
>
> [    3.062517] random: udevd: uninitialized urandom read (16 bytes read,
> 23 bits                                                       of entropy
> available)
>
> [    3.095948] random: udevd: uninitialized urandom read (16 bytes read,
> 23 bits                                                       of entropy
> available)
>
> [    3.128747] udevd[79]: specified group 'kvm' unknown
>
> [    4.544886] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered
>
> [    5.086681] random: dd: uninitialized urandom read (512 bytes read, 36
> bits o                                                      f entropy
> available)
>
> INIT: Entering runlevel: 5
>
> Configuring network interfaces... [    5.281526] net eth0: initializing
> cpsw ver                                                      sion 1.12 (=
0)
>
> [    5.286963] net eth0: initialized cpsw ale version 1.4
>
> [    5.292126] net eth0: ALE Table size 1024
>
> [    5.299577] net eth0: phy found : id is : 0x7c0f1
>
> [    5.312916] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
>
> udhcpc: started, v1.30.1
>
> udhcpc: sending discover
>
> udhcpc: sending discover
>
> udhcpc: sending discover
>
> udhcpc: no lease, forking to background
>
> done.
>
> Starting system message bus: [   14.818015] random: dbus-daemon:
> uninitialized urandom read (12 bytes read, 53 bits of entropy available)
>
> [   14.841904] random: dbus-daemon: uninitialized urandom read (12 bytes
> read, 53 bits of entropy available)
>
> dbus.
>
> Starting Xserver
>
> Starting syslogd/klogd:
>
> done
>
>
>
> X.Org X Server 1.20.4
>
> X Protocol Version 11, Revision 0
>
> Build Operating System: Linux 4.15.0-45-generic x86_64
>
> Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018 armv7l
>
> Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
>
> Build Date: 10 April 2019  08:15:46PM
>
>
>
> Current version of pixman: 0.38.0
>
>         Before reporting problems, check http://wiki.x.org
>
>         to make sure that you have the latest version.
>
> Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
>
>         (++) from command line, (!!) notice, (II) informational,
>
>         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
>
> (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Thu Apr 11 15:41:31 2019
>
> (=3D=3D) Using config file: "/etc/X11/xorg.conf"
>
> (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
>
>
>
> Poky (Yocto Project Reference Distro) 2.6+snapshot am335x-evm /dev/ttyS0
>
>
>
> am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) reports:
>
> > Warning:          Unsupported high keycode 372 for name <I372> ignored
>
> >                   X11 cannot support keycodes above 255.
>
> >                   This warning only shows for the first high keycode.
>
> > Internal error:   Could not resolve keysym XF86MonBrightnessCycle
>
> Errors from xkbcomp are not fatal to the X server
>
> [   15.951736] random: dbus-daemon: uninitialized urandom read (12 bytes
> read, 67 bits of entropy available)
>
> D-BUS per-session daemon address is:
> unix:abstract=3D/tmp/dbus-AntF8uRBJQ,guid=3D2087fb970fdb264af1e4e5315caf6=
02b
>
> Size 1024x768 not found in available modes
>
> Error: No calibratable devices found.
>
> matchbox: Cant find a keycode for keysym 269025056
>
> matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
>
>
>
> matchbox: Cant find a keycode for keysym 2809
>
> matchbox: ignoring key shortcut telephone=3D!$dates
>
>
>
> matchbox: Cant find a keycode for keysym 269025050
>
> matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop
>
>
>
> dbus-daemon[282]: Activating service name=3D'org.a11y.atspi.Registry'
> requested by ':1.0' (uid=3D0 pid=3D278 comm=3D"matchbox-terminal ")
>
> dbus-daemon[282]: Successfully activated service 'org.a11y.atspi.Registry=
'
>
> SpiRegistry daemon is running with well-known name -
> org.a11y.atspi.Registry
>
> [   41.825592] random: nonblocking pool is initialized
>
>
>
> Nikola.
>
>
>
> *De :* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> *Envoy=C3=A9 :* lundi 8 avril 2019 08:07
> *=C3=80 :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Cc :* Yocto Project <yocto@yoctoproject.org>; Marc Ferland <
> marc.ferland@gmail.com>
> *Objet :* Re: [yocto] yocto touchscreen
>
>
>
> Hello Nikola,
>
> I did some quick analysis of your kernel boot traces, and there are the
> following observations made:
>
> [1] The kernel used is:
> Linux version 4.4.19-ge581bb1cac (polycaptil@polycaptil-HP-Notebook) ?!
>
> In my case (I built YOCTO thud for BBB NOT using X11, only serial console=
):
> Linux version 4.19.7-jumpnow (oe-user@oe-host) (gcc version 8.2.0 (GCC))
>
> I could not explain polycaptil@polycaptil-HP-Notebook, maybe you do it
> for such kind of platform...
> The kernel used is too old, for my taste, you did not replaced it, if you
> built YOCTO thud!
>
> [2] The kernel command line:
> [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p2 rw
>
> Shows that you use EMMC as holder for / tree, all good.
>
> [3] The concern about your console: console=3DttyO0,115200
> Is addressed here:
> [    0.000441] WARNING: Your 'console=3DttyO0' has been replaced by 'ttyS=
0'
>
> Later followed by:
> [    0.402495] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled
> [    0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158,
> base_baud =3D 3000000) is a 8250
> [    1.017361] console [ttyS0] enabled
> [    1.022188] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159,
> base_baud =3D 3000000) is a 8250
>
>
>
> So, not at all worries about the console!
>
>
>
> [4] The following traces are worrying me very much:
>
> Starting Xserver
> Starting syslogd/klogd:
> done
> *X.Org X Server 1.20.1*
> X Protocol Version 11, Revision 0
> Build Operating System: Linux 4.15.0-45-generic x86_64
> *Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac* #1
> PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
> Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
> Build Date: 02 April 2019  07:35:10PM
>
>
>
> As Marc wrote earlier:
>
> > Looks like: https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634
>
>
>
> So, as I stated before: you should have in your build:
>
> *X.Org Server 1.20.3! This is the main problem, seems!*
>
>
>
> Zoran
>
> _______
>
>
>
>
>
> On Fri, Apr 5, 2019 at 3:35 PM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
>
> Hello Zoran,
>
>
>
> I keep you in touch about the migration from sumo to thud to solve my
> problem of locked touchscreen.
>
>
>
> I migrated from sumo to thud version, but nothing changed, the problem is
> the same, and I have same messages on boot as sumo version.
>
>
>
> I looked that the x server have a configuration kernel command line (if I
> correctly understood), here is what is written :
>
> Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
>
>
>
> But the kernel command line of poky is different, here is what is
> configured for poky kernel command line :
>
> Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm /dev/ttyS0
>
>
>
> For the xserver it is ttyO0 and for poky it is ttyS0, maybe there is
> something wrong here which do problem for the touchscreen.
>
>
>
> I put below (at end of this mail )the text which appear during the boot.
>
>
>
> I think xorg-x11-server package 1.20.3 was not the problem in the
> previous yocto version (sumo)=E2=80=A6
>
>
>
> Best regards
>
> Nikola
>
>
>
> Here is the text that appear during the boot :
>
>
>
> root@am335x-evm:~# CCCCCCCCCCCCCCCCCCCCCCCC
>
> U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)
>
> Trying to boot from MMC1
>
> reading uboot.env
>
> reading u-boot.img
>
> reading u-boot.img
>
> reading u-boot.img
>
> reading u-boot.img
>
>
>
>
>
> U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)
>
>
>
> CPU  : AM335X-GP rev 2.1
>
> Model: TI AM335x EVM-SK
>
> DRAM:  256 MiB
>
> NAND:  0 MiB
>
> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
>
> reading uboot.env
>
> ERROR: No USB device found
>
>
>
> at drivers/usb/gadget/ether.c:2709/usb_ether_init()
>
> Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]
>
>
>
> Warning: ethernet@4a100000 using MAC address from ROM
>
> eth0: ethernet@4a100000
>
> Hit any key to stop autoboot:  0
>
> reading zImage
>
> 3412752 bytes read in 252 ms (12.9 MiB/s)
>
> reading dtb
>
> 39733 bytes read in 12 ms (3.2 MiB/s)
>
> ## Flattened Device Tree blob at 82000000
>
>    Booting using the fdt blob at 0x82000000
>
>    Loading Device Tree to 8df19000, end 8df25b34 ... OK
>
>
>
> Starting kernel ...
>
>
>
> [    0.000000] Booting Linux on physical CPU 0x0
>
> [    0.000000] Initializing cgroup subsys cpu
>
> [    0.000000] Initializing cgroup subsys cpuacct
>
> [    0.000000] Linux version 4.4.19-ge581bb1cac
> (polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018
>
> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=3D10c5387d
>
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
>
> [    0.000000] Machine model: TI AM335x EVM-SK
>
> [    0.000000] cma: Reserved 48 MiB at 0x8a800000
>
> [    0.000000] Memory policy: Data cache writeback
>
> [    0.000000] CPU: All CPU(s) started in SVC mode.
>
> [    0.000000] AM335X ES2.1 (sgx neon )
>
> [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
> Total pages: 64960
>
> [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p2 rw
>
> [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
>
> [    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072
> bytes)
>
> [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536
> bytes)
>
> [    0.000000] Memory: 200444K/262144K available (6495K kernel code, 313K
> rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K
> cma-reserved, 0K highmem)
>
> [    0.000000] Virtual kernel memory layout:
>
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>
> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
>
> [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
>
> [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
>
> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
>
> [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
>
> [    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)
>
> [    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)
>
> [    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)
>
> [    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)
>
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1,=
 Nodes=3D1
>
> [    0.000000] Preemptible hierarchical RCU implementation.
>
> [    0.000000]  Build-time adjustment of leaf fanout to 32.
>
> [    0.000000] NR_IRQS:16 nr_irqs:16 16
>
> [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128
> interrupts
>
> [    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
>
> [    0.000016] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps ever=
y
> 89478484971ns
>
> [    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 79635851949 ns
>
> [    0.000047] OMAP clocksource: timer1 at 24000000 Hz
>
> [    0.000222] clocksource_probe: no matching clocksources found
>
> [    0.000415] Console: colour dummy device 80x30
>
> [    0.000441] WARNING: Your 'console=3DttyO0' has been replaced by 'ttyS=
0'
>
> [    0.000447] This ensures that you still see kernel messages. Please
>
> [    0.000453] update your kernel commandline.
>
> [    0.000473] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977216)
>
> [    0.089067] pid_max: default: 32768 minimum: 301
>
> [    0.089198] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes=
)
>
> [    0.089210] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
> bytes)
>
> [    0.089932] Initializing cgroup subsys io
>
> [    0.089965] Initializing cgroup subsys memory
>
> [    0.090003] Initializing cgroup subsys devices
>
> [    0.090020] Initializing cgroup subsys freezer
>
> [    0.090035] Initializing cgroup subsys perf_event
>
> [    0.090047] Initializing cgroup subsys pids
>
> [    0.090074] CPU: Testing write buffer coherency: ok
>
> [    0.090499] Setting up static identity map for 0x80008200 - 0x80008258
>
> [    0.092669] devtmpfs: initialized
>
> [    0.105440] VFP support v0.3: implementor 41 architecture 3 part 30
> variant c rev 3
>
> [    0.120496] omap_hwmod: debugss: _wait_target_disable failed
>
> [    0.175552] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 19112604462750000 ns
>
> [    0.179889] pinctrl core: initialized pinctrl subsystem
>
> [    0.181246] NET: Registered protocol family 16
>
> [    0.183446] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
>
> [    0.209067] cpuidle: using governor ladder
>
> [    0.239055] cpuidle: using governor menu
>
> [    0.243662] OMAP GPIO hardware version 0.1
>
> [    0.254349] hw-breakpoint: debug architecture 0x4 unsupported.
>
> [    0.297650] edma 49000000.edma: TI EDMA DMA engine driver
>
> [    0.298630] reg-fixed-voltage fixedregulator@2: could not find pctldev
> for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio,
> deferring probe
>
> [    0.302384] omap_i2c 44e0b000.i2c: could not find pctldev for node
> /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring
> probe
>
> [    0.302543] media: Linux media interface: v0.10
>
> [    0.302609] Linux video capture interface: v2.00
>
> [    0.302660] pps_core: LinuxPPS API ver. 1 registered
>
> [    0.302668] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolf=
o
> Giometti <giometti@linux.it>
>
> [    0.302699] PTP clock support registered
>
> [    0.302764] EDAC MC: Ver: 3.0.0
>
> [    0.303981] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400
>
> [    0.304343] Advanced Linux Sound Architecture Driver Initialized.
>
> [    0.305508] clocksource: Switched to clocksource timer1
>
> [    0.316757] NET: Registered protocol family 2
>
> [    0.317569] TCP established hash table entries: 2048 (order: 1, 8192
> bytes)
>
> [    0.317608] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
>
> [    0.317636] TCP: Hash tables configured (established 2048 bind 2048)
>
> [    0.317718] UDP hash table entries: 256 (order: 0, 4096 bytes)
>
> [    0.317738] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
>
> [    0.317898] NET: Registered protocol family 1
>
> [    0.318323] RPC: Registered named UNIX socket transport module.
>
> [    0.318337] RPC: Registered udp transport module.
>
> [    0.318344] RPC: Registered tcp transport module.
>
> [    0.318350] RPC: Registered tcp NFSv4.1 backchannel transport module.
>
> [    0.319303] hw perfevents: enabled with armv7_cortex_a8 PMU driver, 5
> counters available
>
> [    0.321370] futex hash table entries: 256 (order: -1, 3072 bytes)
>
> [    0.329774] squashfs: version 4.0 (2009/01/31) Phillip Lougher
>
> [    0.330714] NFS: Registering the id_resolver key type
>
> [    0.330792] Key type id_resolver registered
>
> [    0.330801] Key type id_legacy registered
>
> [    0.330881] ntfs: driver 2.1.32 [Flags: R/O].
>
> [    0.334651] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 248)
>
> [    0.334684] io scheduler noop registered
>
> [    0.334698] io scheduler deadline registered
>
> [    0.334855] io scheduler cfq registered (default)
>
> [    0.336527] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800
> size 568
>
> [    0.339377] backlight supply power not found, using dummy regulator
>
> [    0.402495] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled
>
> [    0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158,
> base_baud =3D 3000000) is a 8250
>
> [    1.017361] console [ttyS0] enabled
>
> [    1.022188] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159,
> base_baud =3D 3000000) is a 8250
>
> [    1.032233] [drm] Initialized drm 1.1.0 20060810
>
> [    1.039551] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013)=
.
>
> [    1.046337] [drm] No driver support for vblank timestamp query.
>
> [    1.062083] Console: switching to colour frame buffer device 60x34
>
> [    1.070316] tilcdc 4830e000.lcdc: fb0:  frame buffer device
>
> [    1.105532] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0
>
> [    1.118602] loop: module loaded
>
> [    1.124221] libphy: Fixed MDIO Bus: probed
>
> [    1.185547] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6
>
> [    1.191690] davinci_mdio 4a101000.mdio: detected phy mask fffffffe
>
> [    1.198754] libphy: 4a101000.mdio: probed
>
> [    1.202851] davinci_mdio 4a101000.mdio: phy[0]: device
> 4a101000.mdio:00, driver SMSC LAN8710/LAN8720
>
> [    1.212830] cpsw 4a100000.ethernet: Detected MACID =3D a0:f6:fd:4c:a6:=
ba
>
> [    1.220461] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D
> c4:ed:ba:88:2a:92
>
> [    1.229313] mousedev: PS/2 mouse device common for all mice
>
> [    1.235792] i2c /dev entries driver
>
> [    1.240448] cpuidle: enable-method property 'ti,am3352' found operatio=
ns
>
> [    1.248143] omap_hsmmc 48060000.mmc: Got CD GPIO
>
> [    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
>
> [    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
>
> [    1.317167] ledtrig-cpu: registered to indicate activity on CPUs
>
> [    1.326065] NET: Registered protocol family 10
>
> [    1.332086] sit: IPv6 over IPv4 tunneling driver
>
> [    1.337713] NET: Registered protocol family 17
>
> [    1.342528] Key type dns_resolver registered
>
> [    1.347114] omap_voltage_late_init: Voltage driver support not added
>
> [    1.407191] tps65910-rtc tps65910-rtc: rtc core: registered
> tps65910-rtc as rtc0
>
> [    1.415327] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
>
> [    1.421710] omap_hsmmc 48060000.mmc: Got CD GPIO
>
> [    1.426857] vmmc: supplied by vbat
>
> [    1.466348] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
>
> [    1.474748] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
>
> [    1.513242] mmc0: host does not support reading read-only switch,
> assuming write-enable
>
> [    1.523406] mmc0: new high speed SDHC card at address 0001
>
> [    1.529619] mmcblk0: mmc0:0001 AS 3.72 GiB
>
> [    1.535970]  mmcblk0: p1 p2 p3
>
> [    1.595927] vdd_mpu: supplied by vbat
>
> [    1.602118] input: gpio_buttons@0 as /devices/platform/gpio_buttons@0
> /input/input0
>
> [    1.618310] tps65910-rtc tps65910-rtc: setting system clock to
> 2019-04-03 08:25:12 UTC (1554279912)
>
> [    1.639397] lis3_reg: disabling
>
> [    1.655734] ALSA device list:
>
> [    1.658723]   No soundcards found.
>
> [    1.678283] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature
> incompatibilities
>
> [    1.696903] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature
> incompatibilities
>
> [    1.792693] EXT4-fs (mmcblk0p2): recovery complete
>
> [    1.807446] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
> mode. Opts: (null)
>
> [    1.821463] VFS: Mounted root (ext4 filesystem) on device 179:2.
>
> [    1.835669] devtmpfs: mounted
>
> [    1.839073] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)
>
> [    1.851956] This architecture does not have kernel memory protection.
>
> INIT: version 2.88 booting
>
> Starting udev
>
> [    2.513624] udevd[78]: starting version 3.2.5
>
> [    2.527632] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.546992] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.566829] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.585755] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.668211] udevd[79]: starting eudev-3.2.5
>
> [    3.036159] random: udevd: uninitialized urandom read (16 bytes read,
> 21 bits of entropy available)
>
> [    3.061761] random: udevd: uninitialized urandom read (16 bytes read,
> 21 bits of entropy available)
>
> [    4.494682] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered
>
> [    5.052098] random: dd: uninitialized urandom read (512 bytes read, 34
> bits of entropy available)
>
> INIT: Entering runlevel: 5
>
> Configuring network interfaces... [    5.254308] net eth0: initializing
> cpsw version 1.12 (0)
>
> [    5.259812] net eth0: initialized cpsw ale version 1.4
>
> [    5.264976] net eth0: ALE Table size 1024
>
> [    5.272411] net eth0: phy found : id is : 0x7c0f1
>
> [    5.285702] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
>
> udhcpc: started, v1.29.2
>
> udhcpc: sending discover
>
> udhcpc: sending discover
>
> udhcpc: sending discover
>
> udhcpc: no lease, forking to background
>
> done.
>
> Starting system message bus: [   14.793334] random: dbus-daemon:
> uninitialized urandom read (12 bytes read, 51 bits of entropy available)
>
> [   14.831748] random: dbus-daemon: uninitialized urandom read (12 bytes
> read, 52 bits of entropy available)
>
> dbus.
>
> Starting Xserver
>
> Starting syslogd/klogd:
>
> done
>
>
>
> X.Org X Server 1.20.1
>
> X Protocol Version 11, Revision 0
>
> Build Operating System: Linux 4.15.0-45-generic x86_64
>
> Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018 armv7l
>
> Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
>
> Build Date: 02 April 2019  07:35:10PM
>
>
>
> Current version of pixman: 0.34.0
>
>         Before reporting problems, check http://wiki.x.org
>
>         to make sure that you have the latest version.
>
> Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
>
>         (++) from command line, (!!) notice, (II) informational,
>
>         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
>
> (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Wed Apr  3 08:25:25 2019
>
> (=3D=3D) Using config file: "/etc/X11/xorg.conf"
>
> (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
>
>
>
> Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm /dev/ttyS0
>
>
>
> am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) reports:
>
> > Warning:          Unsupported high keycode 372 for name <I372> ignored
>
> >                   X11 cannot support keycodes above 255.
>
> >                   This warning only shows for the first high keycode.
>
> Errors from xkbcomp are not fatal to the X server
>
> [   15.888959] random: dbus-daemon: uninitialized urandom read (12 bytes
> read, 65 bits of entropy available)
>
> D-BUS per-session daemon address is:
> unix:abstract=3D/tmp/dbus-JjEW6Wgjtx,guid=3D87af020e5c6f1a7e21d449e55ca46=
df5
>
> Size 1024x768 not found in available modes
>
> Error: No calibratable devices found.
>
> matchbox: Cant find a keycode for keysym 269025056
>
> matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
>
>
>
> matchbox: Cant find a keycode for keysym 2809
>
> matchbox: ignoring key shortcut telephone=3D!$dates
>
>
>
> matchbox: Cant find a keycode for keysym 269025050
>
> matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop
>
>
>
> Failed to launch bus: Failed to execute child process ?/usr/bin?
> (Permission denied)
>
> (matchbox-terminal:274): dbind-WARNING **: 08:25:27.404: Error retrieving
> accessibility bus address: org.a11y.Bus.Error: Failed to execute child
> process ?/usr/bin? (Permission denied)
>
> [   43.718127] random: nonblocking pool is initialized
>
>
>
>
>
>
>
>
>
>
>
> *De :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Envoy=C3=A9 :* lundi 18 f=C3=A9vrier 2019 15:27
> *=C3=80 :* 'Zoran Stojsavljevic' <zoran.stojsavljevic@gmail.com>
> *Cc :* 'Yocto Project' <yocto@yoctoproject.org>; 'Marc Ferland' <
> marc.ferland@gmail.com>
> *Objet :* RE: [yocto] yocto touchscreen
>
>
>
> Hello Zoran
>
>
>
> I will try these 2 ways.
>
> Of course, the second way is the easiest, but I will try also the first
> way only to see if it is possible.
>
> I will keep you in touch if the first way can work.
>
>
>
> Best regards,
>
> Nikola
>
>
>
> *De :* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> *Envoy=C3=A9 :* lundi 18 f=C3=A9vrier 2019 15:21
> *=C3=80 :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Cc :* Yocto Project <yocto@yoctoproject.org>; Marc Ferland <
> marc.ferland@gmail.com>
> *Objet :* Re: [yocto] yocto touchscreen
>
>
>
> Hello Nikola,
>
>
>
> Two things, which immediately came to my mind:
>
> [1 - Harder way] Either to change xorg-x11-server in sumo to match at
> least xorg-x11-server *1.20.3;*
>
>       (harder way, since few people know exact dependencies among various
> GFX packages, and what
>
>        and how many packages need to be also changed to make
> xorg-x11-server 1.20.3 to work)
>
> [2 - Easier Way] Either to migrate YOCTO to Thud, where the correct
> xorg-x11-server package 1.20.3
>
>       is already fixed and set!
>
>       (easier way, since exact dependencies among various GFX packages ar=
e
> already set for 1.20.3)
>
>
>
> Best Regards,
>
> Zoran
>
> _______
>
>
>
> On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
>
> Thank you Zoran for trying to help me.
> I tried to resolve the problem, but I didn=E2=80=99t succeed yet, I think=
 I will
> to continue, and If after some time I find nothing, I=E2=80=99m going to =
migrate to
> the thud version.
>
>
>
> I will maybe try to use Bugzilla
>
>
>
> Nikola
>
> *De :* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> *Envoy=C3=A9 :* mardi 5 f=C3=A9vrier 2019 19:28
> *=C3=80 :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Cc :* Yocto Project <yocto@yoctoproject.org>; marc.ferland@gmail.com
> *Objet :* Re: [yocto] yocto touchscreen
>
>
>
> Hello Nikola,
>
> Let us try to cut to the chase!
>
> After reading what Marc Ferland says/writes, and looking into the
> following:
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634
>
> I have spotted the following:
>
> *Pat Riehecky* *2018-11-20 14:28:22 UTC*
>
>
>
> *the bug remains with the elrepo
> kernels:kernel-ml-4.19.2-1.el7.elrepo.x86_64kernel-lt-4.4.163-1.el7.elrep=
o.x86_64*
>
> I never had this problem since I do not use Xorg (GFX), rather I only
>
> use serial console from VBox VM from my BBB (pass-through).
>
>
>
> Thus, my suggestion for you, to skip the whole mess is to rebuild your
>
> distro *in the light of YOCTO Project 2.6.1 (thud 20.0.0.1).*
>
>
>
> My best guess (then you'll inherit YOCTO kernel 4.20.x with fixed Xorg -
> X11).
>
>
>
> I am using Fedora 29 on my laptop. Also from the bugzilla:
>
> *Pat Riehecky* *2018-11-20 15:46:11 UTC *
>
> *Bug resolved by rebuilding xorg-x11-server-1.20.3-1.fc29 [1] for 7.6.*
>
> *With this in mind it appears to be an Xorg server bug rather than fbdev.=
*
>
>
>
> From my HP EliteBook 840 G1 Fedora 29, Xorg.0.log - February 5th, 2019.,
>
> I have the following:
>
>
>
> [    26.955] Kernel command line: BOOT_IMAGE=3D/
> *vmlinuz-4.20.6-200.fc29.x86_64*
>
> root=3D/dev/mapper/fedora-root ro rd.lvm.lv=3Dfedora/root rd.lvm.lv=3Dfed=
ora/swap
> rhgb
>
> quiet LANG=3Den_US.UTF-8
>
> [    26.955] Build Date: 11 January 2019  12:47:38PM
> *[    26.955] Build ID: xorg-x11-server 1.20.3-3.fc29*
> [    26.955] Current version of pixman: 0.34.0
>
> Best Regards,
> Zoran
> _______
>
> On Tue, Feb 5, 2019 at 2:49 PM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello Nikola,
> >
> > > I created a kernel recipe with a bbappend file, and, I added
> > > the same defconfig that I used for krogoth version.
> > > The bbappend for kernel recipe concern meta-ti layer.
> > > I didn't edited defconfig file in other layers which contain a
> > > kernel recipe.
> >
> > It could be some problem that Sumo does not take your bbappend file int=
o
> the
> > consideration as placed.
> >
> > It could be something else, as well.
> >
> > I have the same issue with my defconfig file for my Thud Beagle Bone
> Black (BBB)
> > standard board. Every time I recompile my YOCTO for it for different
> releases, I need
> > to import my specific defconfig. But I use complete different repos for
> my standard
> > Beagle Bone Black than YOCTO BBB Poky reference distro.
> >
> > Here is what I use in Thud (my bblayers.conf):
> >
> > POKY_BBLAYERS_CONF_VERSION =3D "2"
> > BBPATH =3D "${TOPDIR}"
> > BBFILES ?=3D ""
> >
> > BBLAYERS ?=3D " \
> >     /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb \
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-n=
etworking
> \
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-o=
e \
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-p=
ython
> \
> >     /home/user/projects2/beaglebone-black/yocto-thud/meta-qt5 \
> >     /home/user/projects2/beaglebone-black/yocto-thud/poky/meta \
> >     /home/user/projects2/beaglebone-black/yocto-thud/poky/meta-poky"
> >
> > There, I replace defconfig in this layer:
> /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb
> > with my own defconfig.
> >
> > In the directory:
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb/recipes-kernel/=
linux/linux-stable-4.19/beaglebone
> >
> > If you use only Poky repository, then you need to read the following
> paragraph (how to use
> > your defconfig with Poky):
> >
> > [2.3.3. Changing the Configuration] YOCTO Project Linux Development
> Manual
> >
> https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an=
-in-tree-defconfig-file
> > 2.3.3. Changing the Configuration
> >
> > I hope this will help. Please, keep us posted!
> >
> > Zoran
> > _______
> >
> >
> > On Tue, Feb 5, 2019 at 10:54 AM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
> >>
> >> Hy Zoran
> >>
> >> Thank's to take time to answer
> >>
> >> I created a kernel recipe with a bbappend file, and, I added the same
> defconfig that I used for krogoth version.
> >> The bbappend for kernel recipe concern meta-ti layer.
> >> I didn't edited defconfig file in other layers which contain a kernel
> recipe.
> >>
> >> I think it's a problem which concern the screen resolution, screen
> frequency and adc touchscreen.
> >> Something is different between the krogoth and sumo version, but I
> didn't find what is changed...
> >>
> >> Xrandr show that problem is maybe around the screen resolution.
> >> It's show the next message : "Size 1024x768 not found in available
> modes"
> >> Maybe it was changed between krogoth and sumo version...but I don't
> know where it is indicated if sources files...
> >>
> >> What do you think ? problem can be around the screen resolution, scree=
n
> frequency and adc touchscreen ?
> >>
> >> Nikola
> >>
> >> -----Message d'origine-----
> >> De : Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> >> Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08
> >> =C3=80 : Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> >> Cc : Yocto Project <yocto@yoctoproject.org>
> >> Objet : Re: [yocto] yocto touchscreen
> >>
> >> > I built a first version of this os with version krogoth and it works
> fine.
> >> >
> >> > Now I build a second version of this os with version sumo and the
> >> > touch screen works fine during boot process but when kernel is loade=
d,
> >> > touchscreen freeze / lock and impossible to use it.
> >>
> >> Did you compare Krogoth kernel defconfig with Sumo kernel defconfig?
> >>
> >> May there are some mismatches in drivers' setup between these two?
> >>
> >> Zoran
> >> _______
> >>
> >> On Mon, Feb 4, 2019 at 12:24 PM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
> >> >
> >> > Hy Team,
> >> >
> >> >
> >> >
> >> > I have a problem
> >> >
> >> >
> >> >
> >> > I buid a custom os for AM335x processor and I used yocto to do it.
> >> >
> >> >
> >> >
> >> > I build a first version of this os with version krogoth and it work
> fine.
> >> >
> >> >
> >> >
> >> > Now I build a second version of this os with version sumo and the
> touchscreen work fine during boot process but when kernel is loaded,
> touchscreen freeze / lock and impossible to use it.
> >> >
> >> > The terminal is printed on the touchscreen but the screen is locked,
> impossible to write a command or to move the mouse to select, =E2=80=A6.
> >> >
> >> >
> >> >
> >> > Here is the log of boot to the user session (log got with serial
> communication between PC and board) :
> >> >
> >> >
> >> >
> >> > U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)
> >> >
> >> > Trying to boot from MMC1
> >> >
> >> > reading uboot.env
> >> >
> >> > reading u-boot.img
> >> >
> >> > reading u-boot.img
> >> >
> >> > reading u-boot.img
> >> >
> >> > reading u-boot.img
> >> >
> >> >
> >> >
> >> >
> >> >
> >> > U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)
> >> >
> >> >
> >> >
> >> > CPU  : AM335X-GP rev 2.1
> >> >
> >> > Model: TI AM335x EVM-SK
> >> >
> >> > DRAM:  256 MiB
> >> >
> >> > NAND:  0 MiB
> >> >
> >> > MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> >> >
> >> > reading uboot.env
> >> >
> >> > ERROR: No USB device found
> >> >
> >> >
> >> >
> >> > at drivers/usb/gadget/ether.c:2709/usb_ether_init()
> >> >
> >> > Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]
> >> >
> >> >
> >> >
> >> > Warning: ethernet@4a100000 using MAC address from ROM
> >> >
> >> > eth0: ethernet@4a100000
> >> >
> >> > Hit any key to stop autoboot:  0
> >> >
> >> > reading zImage
> >> >
> >> > 3412752 bytes read in 251 ms (13 MiB/s)
> >> >
> >> > reading dtb
> >> >
> >> > 39733 bytes read in 12 ms (3.2 MiB/s)
> >> >
> >> > ## Flattened Device Tree blob at 82000000
> >> >
> >> >    Booting using the fdt blob at 0x82000000
> >> >
> >> >    Loading Device Tree to 8df19000, end 8df25b34 ... OK
> >> >
> >> >
> >> >
> >> > Starting kernel ...
> >> >
> >> >
> >> >
> >> > [    0.000000] Booting Linux on physical CPU 0x0
> >> >
> >> > [    0.000000] Initializing cgroup subsys cpu
> >> >
> >> > [    0.000000] Initializing cgroup subsys cpuacct
> >> >
> >> > [    0.000000] Linux version 4.4.19-ge581bb1cac
> (polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018
> >> >
> >> > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=3D10c5387d
> >> >
> >> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasin=
g
> instruction cache
> >> >
> >> > [    0.000000] Machine model: TI AM335x EVM-SK
> >> >
> >> > [    0.000000] cma: Reserved 48 MiB at 0x8a800000
> >> >
> >> > [    0.000000] Memory policy: Data cache writeback
> >> >
> >> > [    0.000000] CPU: All CPU(s) started in SVC mode.
> >> >
> >> > [    0.000000] AM335X ES2.1 (sgx neon )
> >> >
> >> > [    0.000000] Built 1 zonelists in Zone order, mobility grouping
> on.  Total pages: 64960
> >> >
> >> > [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p3 rw
> >> >
> >> > [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
> >> >
> >> > [    0.000000] Dentry cache hash table entries: 32768 (order: 5,
> 131072 bytes)
> >> >
> >> > [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 6553=
6
> bytes)
> >> >
> >> > [    0.000000] Memory: 200444K/262144K available (6495K kernel code,
> 313K rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K
> cma-reserved, 0K highmem)
> >> >
> >> > [    0.000000] Virtual kernel memory layout:
> >> >
> >> > [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> >> >
> >> > [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> >> >
> >> > [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
> >> >
> >> > [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
> >> >
> >> > [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> >> >
> >> > [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> >> >
> >> > [    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)
> >> >
> >> > [    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)
> >> >
> >> > [    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)
> >> >
> >> > [    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)
> >> >
> >> > [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=
=3D1,
> Nodes=3D1
> >> >
> >> > [    0.000000] Preemptible hierarchical RCU implementation.
> >> >
> >> > [    0.000000]  Build-time adjustment of leaf fanout to 32.
> >> >
> >> > [    0.000000] NR_IRQS:16 nr_irqs:16 16
> >> >
> >> > [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with
> 128 interrupts
> >> >
> >> > [    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
> >> >
> >> > [    0.000015] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps
> every 89478484971ns
> >> >
> >> > [    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 79635851949 ns
> >> >
> >> > [    0.000047] OMAP clocksource: timer1 at 24000000 Hz
> >> >
> >> > [    0.000222] clocksource_probe: no matching clocksources found
> >> >
> >> > [    0.000415] Console: colour dummy device 80x30
> >> >
> >> > [    0.000442] WARNING: Your 'console=3DttyO0' has been replaced by
> 'ttyS0'
> >> >
> >> > [    0.000448] This ensures that you still see kernel messages. Plea=
se
> >> >
> >> > [    0.000454] update your kernel commandline.
> >> >
> >> > [    0.000473] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977=
216)
> >> >
> >> > [    0.089064] pid_max: default: 32768 minimum: 301
> >> >
> >> > [    0.089193] Mount-cache hash table entries: 1024 (order: 0, 4096
> bytes)
> >> >
> >> > [    0.089205] Mountpoint-cache hash table entries: 1024 (order: 0,
> 4096 bytes)
> >> >
> >> > [    0.089932] Initializing cgroup subsys io
> >> >
> >> > [    0.089964] Initializing cgroup subsys memory
> >> >
> >> > [    0.090005] Initializing cgroup subsys devices
> >> >
> >> > [    0.090021] Initializing cgroup subsys freezer
> >> >
> >> > [    0.090036] Initializing cgroup subsys perf_event
> >> >
> >> > [    0.090048] Initializing cgroup subsys pids
> >> >
> >> > [    0.090078] CPU: Testing write buffer coherency: ok
> >> >
> >> > [    0.090499] Setting up static identity map for 0x80008200 -
> 0x80008258
> >> >
> >> > [    0.092680] devtmpfs: initialized
> >> >
> >> > [    0.105440] VFP support v0.3: implementor 41 architecture 3 part
> 30 variant c rev 3
> >> >
> >> > [    0.120529] omap_hwmod: debugss: _wait_target_disable failed
> >> >
> >> > [    0.175584] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 19112604462750000 ns
> >> >
> >> > [    0.179852] pinctrl core: initialized pinctrl subsystem
> >> >
> >> > [    0.181216] NET: Registered protocol family 16
> >> >
> >> > [    0.183420] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
> >> >
> >> > [    0.209061] cpuidle: using governor ladder
> >> >
> >> > [    0.239048] cpuidle: using governor menu
> >> >
> >> > [    0.243661] OMAP GPIO hardware version 0.1
> >> >
> >> > [    0.254360] hw-breakpoint: debug architecture 0x4 unsupported.
> >> >
> >> > [    0.297629] edma 49000000.edma: TI EDMA DMA engine driver
> >> >
> >> > [    0.298606] reg-fixed-voltage fixedregulator@2: could not find
> pctldev for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12x=
x_gpio,
> deferring probe
> >> >
> >> > [    0.302364] omap_i2c 44e0b000.i2c: could not find pctldev for nod=
e
> /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring
> probe
> >> >
> >> > [    0.302525] media: Linux media interface: v0.10
> >> >
> >> > [    0.302588] Linux video capture interface: v2.00
> >> >
> >> > [    0.302638] pps_core: LinuxPPS API ver. 1 registered
> >> >
> >> > [    0.302646] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
> Rodolfo Giometti <giometti@linux.it>
> >> >
> >> > [    0.302676] PTP clock support registered
> >> >
> >> > [    0.302741] EDAC MC: Ver: 3.0.0
> >> >
> >> > [    0.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400
> >> >
> >> > [    0.304332] Advanced Linux Sound Architecture Driver Initialized.
> >> >
> >> > [    0.305512] clocksource: Switched to clocksource timer1
> >> >
> >> > [    0.316775] NET: Registered protocol family 2
> >> >
> >> > [    0.317599] TCP established hash table entries: 2048 (order: 1,
> 8192 bytes)
> >> >
> >> > [    0.317636] TCP bind hash table entries: 2048 (order: 1, 8192
> bytes)
> >> >
> >> > [    0.317663] TCP: Hash tables configured (established 2048 bind
> 2048)
> >> >
> >> > [    0.317748] UDP hash table entries: 256 (order: 0, 4096 bytes)
> >> >
> >> > [    0.317767] UDP-Lite hash table entries: 256 (order: 0, 4096 byte=
s)
> >> >
> >> > [    0.317925] NET: Registered protocol family 1
> >> >
> >> > [    0.318352] RPC: Registered named UNIX socket transport module.
> >> >
> >> > [    0.318366] RPC: Registered udp transport module.
> >> >
> >> > [    0.318372] RPC: Registered tcp transport module.
> >> >
> >> > [    0.318379] RPC: Registered tcp NFSv4.1 backchannel transport
> module.
> >> >
> >> > [    0.319330] hw perfevents: enabled with armv7_cortex_a8 PMU
> driver, 5 counters available
> >> >
> >> > [    0.321392] futex hash table entries: 256 (order: -1, 3072 bytes)
> >> >
> >> > [    0.329780] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> >> >
> >> > [    0.330717] NFS: Registering the id_resolver key type
> >> >
> >> > [    0.330798] Key type id_resolver registered
> >> >
> >> > [    0.330807] Key type id_legacy registered
> >> >
> >> > [    0.330886] ntfs: driver 2.1.32 [Flags: R/O].
> >> >
> >> > [    0.334673] Block layer SCSI generic (bsg) driver version 0.4
> loaded (major 248)
> >> >
> >> > [    0.334706] io scheduler noop registered
> >> >
> >> > [    0.334719] io scheduler deadline registered
> >> >
> >> > [    0.334877] io scheduler cfq registered (default)
> >> >
> >> > [    0.336555] pinctrl-single 44e10800.pinmux: 142 pins at pa
> f9e10800 size 568
> >> >
> >> > [    0.339415] backlight supply power not found, using dummy regulat=
or
> >> >
> >> > [    0.402480] Serial: 8250/16550 driver, 10 ports, IRQ sharing
> disabled
> >> >
> >> > [    0.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 15=
8,
> base_baud =3D 3000000) is a 8250
> >> >
> >> > [    1.017357] console [ttyS0] enabled
> >> >
> >> > [    1.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 15=
9,
> base_baud =3D 3000000) is a 8250
> >> >
> >> > [    1.032273] [drm] Initialized drm 1.1.0 20060810
> >> >
> >> > [    1.039564] [drm] Supports vblank timestamp caching Rev 2
> (21.10.2013).
> >> >
> >> > [    1.046349] [drm] No driver support for vblank timestamp query.
> >> >
> >> > [    1.062121] Console: switching to colour frame buffer device 60x3=
4
> >> >
> >> > [    1.070360] tilcdc 4830e000.lcdc: fb0:  frame buffer device
> >> >
> >> > [    1.105531] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0
> >> >
> >> > [    1.118644] loop: module loaded
> >> >
> >> > [    1.124253] libphy: Fixed MDIO Bus: probed
> >> >
> >> > [    1.185550] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6
> >> >
> >> > [    1.191695] davinci_mdio 4a101000.mdio: detected phy mask fffffff=
e
> >> >
> >> > [    1.198786] libphy: 4a101000.mdio: probed
> >> >
> >> > [    1.202886] davinci_mdio 4a101000.mdio: phy[0]: device
> 4a101000.mdio:00, driver SMSC LAN8710/LAN8720
> >> >
> >> > [    1.212890] cpsw 4a100000.ethernet: Detected MACID =3D
> a0:f6:fd:4c:a6:ba
> >> >
> >> > [    1.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D
> c4:ed:ba:88:2a:92
> >> >
> >> > [    1.229382] mousedev: PS/2 mouse device common for all mice
> >> >
> >> > [    1.235845] i2c /dev entries driver
> >> >
> >> > [    1.240508] cpuidle: enable-method property 'ti,am3352' found
> operations
> >> >
> >> > [    1.248197] omap_hsmmc 48060000.mmc: Got CD GPIO
> >> >
> >> > [    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
> >> >
> >> > [    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
> >> >
> >> > [    1.317159] ledtrig-cpu: registered to indicate activity on CPUs
> >> >
> >> > [    1.326069] NET: Registered protocol family 10
> >> >
> >> > [    1.332092] sit: IPv6 over IPv4 tunneling driver
> >> >
> >> > [    1.337715] NET: Registered protocol family 17
> >> >
> >> > [    1.342510] Key type dns_resolver registered
> >> >
> >> > [    1.347095] omap_voltage_late_init: Voltage driver support not
> added
> >> >
> >> > [    1.407145] tps65910-rtc tps65910-rtc: rtc core: registered
> tps65910-rtc as rtc0
> >> >
> >> > [    1.415278] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
> >> >
> >> > [    1.421665] omap_hsmmc 48060000.mmc: Got CD GPIO
> >> >
> >> > [    1.426813] vmmc: supplied by vbat
> >> >
> >> > [    1.466341] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
> >> >
> >> > [    1.474737] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
> >> >
> >> > [    1.513247] mmc0: host does not support reading read-only switch,
> assuming write-enable
> >> >
> >> > [    1.523414] mmc0: new high speed SDHC card at address 0001
> >> >
> >> > [    1.529635] mmcblk0: mmc0:0001 AS 3.72 GiB
> >> >
> >> > [    1.535996]  mmcblk0: p1 p2 p3
> >> >
> >> > [    1.595932] vdd_mpu: supplied by vbat
> >> >
> >> > [    1.602167] input: gpio_buttons@0 as
> /devices/platform/gpio_buttons@0/input/input0
> >> >
> >> > [    1.618291] tps65910-rtc tps65910-rtc: setting system clock to
> 2019-02-01 20:07:49 UTC (1549051669)
> >> >
> >> > [    1.639394] lis3_reg: disabling
> >> >
> >> > [    1.655732] ALSA device list:
> >> >
> >> > [    1.658720]   No soundcards found.
> >> >
> >> > [    1.678290] EXT4-fs (mmcblk0p3): couldn't mount as ext3 due to
> feature incompatibilities
> >> >
> >> > [    1.696920] EXT4-fs (mmcblk0p3): couldn't mount as ext2 due to
> feature incompatibilities
> >> >
> >> > [    2.183999] EXT4-fs (mmcblk0p3): recovery complete
> >> >
> >> > [    2.196864] EXT4-fs (mmcblk0p3): mounted filesystem with ordered
> data mode. Opts: (null)
> >> >
> >> > [    2.205084] VFS: Mounted root (ext4 filesystem) on device 179:3.
> >> >
> >> > [    2.225670] devtmpfs: mounted
> >> >
> >> > [    2.235781] Freeing unused kernel memory: 260K (c08b1000 -
> c08f2000)
> >> >
> >> > [    2.242162] This architecture does not have kernel memory
> protection.
> >> >
> >> > INIT: version 2.88 booting
> >> >
> >> > Starting udev
> >> >
> >> > [    3.090091] udevd[78]: starting version 3.2.5
> >> >
> >> > [    3.106175] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.118667] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.128014] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.137335] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.218433] udevd[79]: starting eudev-3.2.5
> >> >
> >> > [    3.325886] random: udevd: uninitialized urandom read (16 bytes
> read, 29 bits of entropy available)
> >> >
> >> > [    3.346155] random: udevd: uninitialized urandom read (16 bytes
> read, 29 bits of entropy available)
> >> >
> >> > [    4.820708] EXT4-fs (mmcblk0p3): re-mounted. Opts: data=3Dordered
> >> >
> >> > [    5.548283] random: dd: uninitialized urandom read (512 bytes
> read, 43 bits of entropy available)
> >> >
> >> > INIT: Entering runlevel: 5
> >> >
> >> > Configuring network interfaces... [    5.820546] net eth0:
> initializing cpsw version 1.12 (0)
> >> >
> >> > [    5.825987] net eth0: initialized cpsw ale version 1.4
> >> >
> >> > [    5.831150] net eth0: ALE Table size 1024
> >> >
> >> > [    5.838581] net eth0: phy found : id is : 0x7c0f1
> >> >
> >> > [    5.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
> >> >
> >> > [    9.896392] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Ful=
l
> - flow control rx/tx
> >> >
> >> > [    9.904635] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes rea=
dy
> >> >
> >> > chown: unrecognized option '--reference=3D/etc/resolv.conf'
> >> >
> >> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
> >> >
> >> >
> >> >
> >> > Usage: chown [-Rh]... USER[:[GRP]] FILE...
> >> >
> >> > chmod: unrecognized option '--reference=3D/etc/resolv.conf'
> >> >
> >> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
> >> >
> >> >
> >> >
> >> > Usage: chmod [-R] MODE[,MODE]... FILE...
> >> >
> >> > done.
> >> >
> >> > Starting system message bus: [   14.887099] random: dbus-daemon:
> uninitialized urandom read (12 bytes read, 62 bits of entropy available)
> >> >
> >> > [   14.912318] random: dbus-daemon: uninitialized urandom read (12
> bytes read, 62 bits of entropy available)
> >> >
> >> > dbus.
> >> >
> >> > Starting OpenBSD Secure Shell server: sshd
> >> >
> >> > [   15.393971] random: sshd: uninitialized urandom read (32 bytes
> read, 65 bits of entropy available)
> >> >
> >> > done.
> >> >
> >> > Starting Xserver
> >> >
> >> > Starting DHCP server:
> >> >
> >> > .
> >> >
> >> > starting DNS forwarder and DHCP server: dnsmasq...
> >> >
> >> > X.Org X Server 1.19.6
> >> >
> >> > Release Date: 2017-12-20
> >> >
> >> > X Protocol Version 11, Revision 0
> >> >
> >> > Build Operating System: Linux 4.15.0-38-generic x86_64
> >> >
> >> > Current Operating System: Linux polycaptil-machine-am335x-evmsk
> >> > 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
> >> >
> >> > Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw
> >> >
> >> > Build Date: 05 November 2018  09:33:21PM
> >> >
> >> >
> >> >
> >> > Current version of pixman: 0.34.0
> >> >
> >> >         Before reporting problems, check http://wiki.x.org
> >> >
> >> >         to make sure that you have the latest version.
> >> >
> >> > Markers: (--) probed, (**) from config file, (=3D=3D) default settin=
g,
> >> >
> >> >         (++) from command line, (!!) notice, (II) informational,
> >> >
> >> >         (WW) warning, (EE) error, (NI) not implemented, (??) unknown=
.
> >> >
> >> > (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Feb  1 20:08:02 =
2019
> >> >
> >> > (=3D=3D) Using config file: "/etc/X11/xorg.conf"
> >> >
> >> > (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
> >> >
> >> > done.
> >> >
> >> > Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf
> >> >
> >> > nl80211: 'nl80211' generic netlink not found
> >> >
> >> > Failed to initialize driver 'nl80211'
> >> >
> >> > wlan0: interface state UNINITIALIZED->DISABLED
> >> >
> >> > wlan0: AP-DISABLED
> >> >
> >> > hostapd_free_hapd_data: Interface wlan0 wasn't started
> >> >
> >> > Starting ntpd: done
> >> >
> >> > Starting syslogd/klogd: done
> >> >
> >> > Starting crond: OK
> >> >
> >> >
> >> >
> >> > Poky (Yocto Project Reference Distro) 2.5
> >> > polycaptil-machine-am335x-evmsk /dev/ttyS0
> >> >
> >> >
> >> >
> >> > polycaptil-machine-am335x-evmsk login: D-BUS per-session daemon
> >> > address is:
> >> > unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e9553=
5c54a7
> >> > 25
> >> >
> >> > Size 1024x768 not found in available modes
> >> >
> >> > Error: No calibratable devices found.
> >> >
> >> > matchbox: Cant find a keycode for keysym 269025056
> >> >
> >> > matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
> >> >
> >> >
> >> >
> >> > matchbox: Cant find a keycode for keysym 2809
> >> >
> >> > matchbox: ignoring key shortcut telephone=3D!$dates
> >> >
> >> >
> >> >
> >> > matchbox: Cant find a keycode for keysym 269025050
> >> >
> >> > matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -deskto=
p
> >> >
> >> >
> >> >
> >> > dbus-daemon[358]: Activating service name=3D'org.a11y.atspi.Registry=
'
> >> > requested by ':1.0' (uid=3D0 pid=3D354 comm=3D"matchbox-terminal ")
> >> >
> >> > dbus-daemon[358]: Successfully activated service
> 'org.a11y.atspi.Registry'
> >> >
> >> > SpiRegistry daemon is running with well-known name -
> >> > org.a11y.atspi.Registry
> >> >
> >> > [   30.662697] random: nonblocking pool is initialized
> >> >
> >> >
> >> >
> >> > Poky (Yocto Project Reference Distro) 2.5
> >> > polycaptil-machine-am335x-evmsk /dev/ttyS0
> >> >
> >> >
> >> >
> >> > Thank=E2=80=99s to take time to read my message.
> >> >
> >> > N.Stanisavljevic
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >>
>
>

--000000000000b5b79a0586b2e06b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Nikola,<br><br>One friendly advise: please, for=
 the very long boot messages use paste-bin site:<br><a href=3D"https://past=
ebin.com/69D1Ps1W">https://pastebin.com/69D1Ps1W</a><br>_______<br></div><d=
iv><br></div><div>I am not an expert on X11, but I have noticed the followi=
ng:<br><br>&gt; I use a DTB file from krogoth version, because, I tried to =
use the DTB file<br>&gt; generated for sumo thud and warrior version but it=
=E2=80=99s didn=E2=80=99t work.<br><br>This could be from the fact that you=
 are using almost three year old kernel.<br>Krogoth was released in 04.2016=
: <a href=3D"https://wiki.yoctoproject.org/wiki/Releases">https://wiki.yoct=
oproject.org/wiki/Releases</a><br>The kernel 4.4.19 was released in 08.2016=
:<br><a href=3D"https://www.spinics.net/lists/announce-kernel/msg01655.html=
">https://www.spinics.net/lists/announce-kernel/msg01655.html</a><br><br>So=
, you are using correct krogoth DTB for the adequate 4.4.19 kernel.<br><br>=
I do not track all the kernel changes (I am not Greg Kroah-Hartman, and not=
<br>ought to be :-) ), but there is a possibility that DTS compiler changed=
 some<br>formats? You need to explore this. Does the DTS compiler change th=
e format<br>in recent kernels for GFX (remote, but still the possibility)?<=
br><br>&gt; I only update files in rootfs partition (with developed version=
s) and not boot<br>&gt; partition. While boot process is running, the splas=
hscreen appear correctly,<br>&gt; but immediately when the terminal session=
 appears, the touchscreen lock.<br><br></div><div>I assume, U-Boot keeps it=
s own DTS file, while kernel its own. In your case,</div><div>the splash sc=
reen could come out from Grub (which is part of the /boot, not</div><div>ch=
anged as said), <i><b>or, perhaps, from booting of the early stage kernel.<=
/b></i></div><div><br></div><div><i><b>If it is so, it does explain correct=
 splash screen, since in this stage</b></i></div><div><i><b>kernel does NOT=
 use X11 framework, rather fbdev (very simplistic i/f).</b></i><br></div><d=
iv><div><br></div><div>From the log:<br></div><div>&gt; Current Operating S=
ystem: <span style=3D"color:rgb(255,0,0)"><i><b>Linux am335x-evm 4.4.19-ge5=
81bb1cac</b></i></span> #1</div><div>&gt; PREEMPT Thu May 24 11:42:17 CEST =
2018 armv7l</div><div><br></div><div>Seems that 1.20.4 X11 org. and kernel =
4.4.19 I/F are not in sync (most likely)?</div><div><br></div><div><u><i>My=
 kludge/educated guess at this point will be to change the kernel to 4.20..=
.</i></u></div><div><u><i>Or similar (one native to warrior release).</i></=
u><br></div></div><div><br></div><div>Any other opinion from YOCTO mailing =
list?<br></div><div><br></div><div>Thank you,<br>Zoran<br>_______<br></div>=
</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Apr 16, 2019 at 12:09 PM Stanisavljevic &lt;<a href=3D"mailto:n=
.stanisavljevic@polycaptil.fr">n.stanisavljevic@polycaptil.fr</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"F=
R"><div class=3D"gmail-m_-7739122866584811312WordSection1"><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">Hello Zoran<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">I tried to change screen resolution with x=
randr to change the screen resolution to 480x272 (it is the screen resoluti=
on of the touchscreen) but it=E2=80=99s changes nothing screen resolution s=
eems to stay to 1024x768<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">I defined on the device tree the screen resolution but it=
=E2=80=99s like it was not taken in account<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">Here is the definition of the touchscr=
een resolution in the device tree :<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display-timing=
s {<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 480x272 {<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hactive=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &lt;480&gt;;<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 vactive=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &lt;272&gt;;<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hback-porch=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &lt;43&gt;;<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hfront-porch=C2=A0=C2=A0=C2=A0=C2=A0 =3D &lt=
;8&gt;;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 hsync-len=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &lt;4&gt;;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 vback-porch=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &lt;12&gt;;<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vfront-porch=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &lt;4&gt;;<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vsync-len=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &lt;10&gt;;<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock-frequency =3D &lt;9000000&=
gt;;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hs=
ync-active=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &lt;0&gt;;<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vsync-active=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &lt;0&gt;;<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 };<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
I use a DTB file from krogoth version, because, I tried to use the DTB file=
 generated for sumo thud and warrior version but it=E2=80=99s didn=E2=80=99=
t work.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>I only update files in rootfs partition (with developed versions) and not =
boot partition<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">While boot process is running, the splashscreen appear correctly, b=
ut immediately when the terminal session appears, the touchscreen lock.<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Here is wh=
at is in Xorg.0.log<u></u><u></u></span></p><p class=3D"MsoNormal"><span>ro=
ot@am335x-evm:~# cat /var/log/Xorg.0.log<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.212]<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">X.Org X Server 1.2=
0.4<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">X P=
rotocol Version 11, Revision 0<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.212] Build Operating System:=
 Linux 4.15.0-45-generic x86_64<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.212] Current Operating Syst=
em: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST=
 2018 armv7l<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">[=C2=A0=C2=A0=C2=A0 15.213] Kernel command line: console=3DttyO0,1152=
00 root=3D/dev/mmcblk0p2 rw<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.213] Build Date: 10 April 2019=
=C2=A0 08:15:46PM<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0 =C2=A015.213]<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.213] Current version=
 of pixman: 0.38.0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.213]=C2=A0=C2=A0=C2=A0 Before reporting =
problems, check <a href=3D"http://wiki.x.org" target=3D"_blank">http://wiki=
.x.org</a><u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to make sure that you have t=
he latest version.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.213] Markers: (--) probed, (**) from con=
fig file, (=3D=3D) default setting,<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (++=
) from command line, (!!) notice, (II) informational,<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 (WW) warning, (EE) error, (NI) not implemented, (??) unknow=
n.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.213] (=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;,=
 Time: Thu Apr 11 15:51:53 2019<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.219] (=3D=3D) Using config =
file: &quot;/etc/X11/xorg.conf&quot;<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.219] (=3D=3D) Using sy=
stem config directory &quot;/usr/share/X11/xorg.conf.d&quot;<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1=
5.235] (=3D=3D) ServerLayout &quot;Builtin Default Layout&quot;<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.235] (**) |--&gt;Screen &quot;Builtin Default fbdev Screen 0&quot; (=
0)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.235] (**) |=C2=A0=C2=A0 |--&gt;Monitor &quot;Builtin Def=
ault Monitor&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.237] (**) |=C2=A0=C2=A0 |--&gt;Device &q=
uot;Builtin Default fbdev Device 0&quot;<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.237] (=3D=3D) Au=
tomatically adding devices<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.237] (=3D=3D) Automatically enab=
ling devices<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">[=C2=A0=C2=A0=C2=A0 15.237] (=3D=3D) Automatically adding GPU devices=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.237] (=3D=3D) Max clients allowed: 256, resource mask: 0=
x1fffff<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 15.238] (WW) The directory &quot;/usr/share/fonts/X11/=
misc/&quot; does not exist.<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.238]=C2=A0=C2=A0=C2=A0 Entry de=
leted from font path.<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239] (WW) The directory &quot;/usr/sh=
are/fonts/X11/TTF/&quot; does not exist.<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239]=C2=A0=C2=A0=
=C2=A0 Entry deleted from font path.<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239] (WW) The director=
y &quot;/usr/share/fonts/X11/OTF/&quot; does not exist.<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239=
]=C2=A0=C2=A0=C2=A0 Entry deleted from font path.<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239] (WW)=
 The directory &quot;/usr/share/fonts/X11/Type1/&quot; does not exist.<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 15.239]=C2=A0=C2=A0=C2=A0 Entry deleted from font path.<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.239] (WW) The directory &quot;/usr/share/fonts/X11/100dpi/&quot; doe=
s not exist.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">[=C2=A0=C2=A0=C2=A0 15.239]=C2=A0=C2=A0=C2=A0 Entry deleted from font=
 path.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
[=C2=A0=C2=A0=C2=A0 15.239] (WW) The directory &quot;/usr/share/fonts/X11/7=
5dpi/&quot; does not exist.<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239]=C2=A0=C2=A0=C2=A0 Entry de=
leted from font path.<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239] (=3D=3D) FontPath set to:<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.239] (=3D=3D) ModulePath set to &quot;/usr/lib/xorg/modules&quot;=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.239] (II) The server relies on udev to provide the list =
of input devices.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 If no devices become =
available, reconfigure udev or disable AutoAddDevices.<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239]=
 (II) Loader magic: 0x7f73dd78<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239] (II) Module ABI version=
s:<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.239]=C2=A0=C2=A0=C2=A0 X.Org ANSI C Emulation: 0.4<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 15.239]=C2=A0=C2=A0=C2=A0 X.Org Video Driver: 24.0<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1=
5.239]=C2=A0=C2=A0=C2=A0 X.Org XInput driver : 24.1<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.239]=C2=
=A0=C2=A0=C2=A0 X.Org Server Extension : 10.0<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.245] (II) xfr=
ee86: Adding drm device (/dev/dri/card0)<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.248] (II) no pri=
mary bus or device found<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.248]=C2=A0=C2=A0=C2=A0 falling bac=
k to /sys/devices/platform/ocp/4830e000.lcdc/drm/card0<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.249]=
 (II) &quot;glx&quot; will be loaded. This was enabled by default and also =
specified in the config file.<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.249] (II) LoadModule: &quot;e=
xtmod&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.249] (II) Module &quot;extmod&quot; already bui=
lt-in<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 15.249] (II) LoadModule: &quot;dbe&quot;<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.249] (II) Module &quot;dbe&quot; already built-in<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.249] (II=
) LoadModule: &quot;glx&quot;<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.261] (WW) Warning, couldn&#39=
;t open module glx<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.261] (EE) Failed to load module &quot;gl=
x&quot; (module does not exist, 0)<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.262] (II) LoadModule: &q=
uot;record&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.262] (II) Module &quot;record&quot; alrea=
dy built-in<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.262] (II) LoadModule: &quot;dri&quot;<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.262] (II) Module &quot;dri&quot; already built-in<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.26=
2] (II) LoadModule: &quot;fbdev&quot;<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.262] (II) Loading /us=
r/lib/xorg/modules/drivers/fbdev_drv.so<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.267] (II) Module fb=
dev: vendor=3D&quot;X.Org Foundation&quot;<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.267]=C2=A0=C2=A0=
=C2=A0 compiled for 1.20.4, module version =3D 0.5.0<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.267]=
=C2=A0=C2=A0=C2=A0 Module class: X.Org Video Driver<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.267]=C2=
=A0=C2=A0=C2=A0 ABI class: X.Org Video Driver, version 24.0<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.267] (II) FBDEV: driver for framebuffer: fbdev<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.268] (--) u=
sing VT number 3<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.277] (WW) Falling back to old probe metho=
d for fbdev<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.277] (II) Loading sub module &quot;fbdevhw&quot=
;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.277] (II) LoadModule: &quot;fbdevhw&quot;<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1=
5.277] (II) Loading /usr/lib/xorg/modules/libfbdevhw.so<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.281=
] (II) Module fbdevhw: vendor=3D&quot;X.Org Foundation&quot;<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1=
5.281]=C2=A0=C2=A0=C2=A0 compiled for 1.20.4, module version =3D 0.0.2<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 15.281]=C2=A0=C2=A0=C2=A0 ABI class: X.Org Video Driver, version =
24.0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 15.281] (II) FBDEV(0): using default device<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0=
 15.282] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card suppor=
t<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.282] (II) FBDEV(0): Creating default Display subsection =
in Screen section<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;Builtin Default=
 fbdev Screen 0&quot; for depth/fbbpp 24/32<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (=3D=3D) F=
BDEV(0): Depth 24, (=3D=3D) framebuffer bpp 32<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (=3D=3D=
) FBDEV(0): RGB weight 888<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (=3D=3D) FBDEV(0): Default =
visual is TrueColor<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (=3D=3D) FBDEV(0): Using gamma cor=
rection (1.0, 1.0, 1.0)<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (II) FBDEV(0): hardware:=C2=A0=
 (video memory: 510kB)<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (DB) xf86MergeOutputClassOption=
s unsupported bus type 0<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (II) FBDEV(0): checking modes=
 against framebuffer device...<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (II) FBDEV(0): checking=
 modes against monitor...<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (II) FBDEV(0): Virtual size =
is 480x272 (pitch 480)<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (**) FBDEV(0):=C2=A0 Built-in m=
ode &quot;current&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.282] (=3D=3D) FBDEV(0): DPI set to =
(96, 96)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.282] (II) Loading sub module &quot;fb&quot;<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.282] (II) LoadModule: &quot;fb&quot;<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.283] (II) Lo=
ading /usr/lib/xorg/modules/libfb.so<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.297] (II) Module fb: v=
endor=3D&quot;X.Org Foundation&quot;<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.297]=C2=A0=C2=A0=C2=A0=
 compiled for 1.20.4, module version =3D 1.0.0<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.297]=C2=A0=
=C2=A0=C2=A0 ABI class: X.Org ANSI C Emulation, version 0.4<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.297] (**) FBDEV(0): using shadow framebuffer<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.298] (II) Loa=
ding sub module &quot;shadow&quot;<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.298] (II) LoadModule: &q=
uot;shadow&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.298] (II) Loading /usr/lib/xorg/modules/l=
ibshadow.so<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.304] (II) Module shadow: vendor=3D&quot;X.Org F=
oundation&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.304]=C2=A0=C2=A0=C2=A0 compiled for 1.20.=
4, module version =3D 1.1.0<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.304]=C2=A0=C2=A0=C2=A0 ABI clas=
s: X.Org ANSI C Emulation, version 0.4<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.324] (=3D=3D) FBDEV(=
0): Backing store enabled<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: =
Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.32=
5] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.325] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.325] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.32=
6] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0 =C2=A015.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.326] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.32=
6] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.32=
7] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0 =C2=A015=
.327] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.32=
8] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.328] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.32=
9] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0 =C2=A015.329] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.32=
9] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.329] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0 =C2=A015.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.33=
0] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.330] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.330] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.33=
1] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0 =C2=A015.331] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.331] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.33=
1] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.331] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.33=
2] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0 =C2=A015.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.332] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.332] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.33=
3] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.333] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0 =C2=A015.33=
4] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid =
argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.33=
4] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) F=
BDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): =
FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCM=
AP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Inval=
id argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argume=
nt<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.334] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15=
.335] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.335] (EE=
) FBDEV(0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.335] (EE) FBDEV(=
0): FBIOPUTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.335] (EE) FBDEV(0): FBIOP=
UTCMAP: Invalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0 =C2=A015.335] (EE) FBDEV(0): FBIOPUTCMAP: I=
nvalid argument<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.335] (=3D=3D) FBDEV(0): DPMS enabled<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 15.335] (II) Initializing extension Generic Event Extension<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 15.335] (II) Initializing extension SHAPE<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.335] (I=
I) Initializing extension MIT-SHM<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.335] (II) Initializing ex=
tension XInputExtension<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.338] (II) Initializing extension XT=
EST<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 15.338] (II) Initializing extension BIG-REQUESTS<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.338] (II) Initializing extension SYNC<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.338] (II) I=
nitializing extension XKEYBOARD<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.338] (II) Initializing exte=
nsion XC-MISC<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0=C2=A0 15.338] (II) Initializing extension XFIXES<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 15.338] (II) Initializing extension RENDER<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.338] (=
II) Initializing extension RANDR<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.338] (II) Initializing ext=
ension COMPOSITE<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.338] (II) Initializing extension DAMAGE<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.338] (II) Initializing extension MIT-SCREEN-SAVER<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 15.338] (II) Initializing extension DOUBLE-BUFFER<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.339] =
(II) Initializing extension DPMS<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.339] (II) Initializing ext=
ension Present<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">[=C2=A0=C2=A0=C2=A0 15.339] (II) Initializing extension DRI3<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 15.339] (II) Initializing extension X-Resource<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.339] =
(II) Initializing extension XVideo<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.339] (II) Initializing e=
xtension XVideo-MotionCompensation<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.339] (II) Initializing e=
xtension GLX<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">[=C2=A0=C2=A0=C2=A0 15.339] (II) Initializing extension XFree86-VidMo=
deExtension<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 15.339] (II) Initializing extension XFree86-DGA<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 15.339] (II) Initializing extension XFree86-DRI<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1=
5.339] (II) Initializing extension DRI2<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.678] (II) config/ud=
ev: Adding input device gpio_buttons@0 (/dev/input/event0)<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.=
678] (II) No input driver specified, ignoring this device.<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 15.=
678] (II) This device may have been added with another device file.<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">root@am335x-ev=
m:~#<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">he=
re is what in xorg.conf<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n>root@am335x-evm:~# cat /etc/X11/xorg.conf<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">Section &quot;Module&quot;<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Load=C2=A0=C2=A0=C2=A0 &quot;extmod&quot;<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Load=C2=A0=C2=A0=C2=A0 &quot;dbe&quot;<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Load=C2=A0=C2=A0=C2=A0 &quot;glx&quot;<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Load=C2=A0=C2=A0=C2=A0 &quot;freetype&quot;<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Load=C2=A0=C2=A0=C2=A0 &quot;type1&quot;<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Load=C2=A0=C2=A0=C2=A0 &quot;record&qu=
ot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Load=C2=A0=C2=A0=C2=A0 &quot;dri&qu=
ot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">End=
Section<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>Section &quot;Monitor&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Identifier=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;Builtin Default Monitor&quot;<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">EndSection<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Section &q=
uot;Device&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Identifier=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;Builtin Default fbdev Device 0&quot;<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Driver=C2=A0 &quot;fbdev&quot;<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">EndSection<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Section &quot;Scree=
n&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Identifier=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;Builtin Default fbdev Screen 0&quot;<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Device=C2=A0 &quot;Builtin Default fbdev Device 0&quot;<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Monitor &quot;Builtin Default Monitor&quo=
t;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">EndS=
ection<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
<u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
Section &quot;ServerLayout&quot;<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Identi=
fier=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;Builtin Default Layout&quot;<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Screen=C2=A0 &quot;Builtin Default fbdev Scr=
een 0&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">EndSection<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">root@am335x-evm:~#<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">root@am335x-evm:~# cat /usr/share/X11/xorg.conf.d/<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">10-evdev=
.conf=C2=A0=C2=A0=C2=A0=C2=A0 10-quirks.conf=C2=A0=C2=A0=C2=A0 40-libinput.=
conf<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">ro=
ot@am335x-evm:~# cat /usr/share/X11/xorg.conf.d/<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">cat: read error: Is a directory<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Nikola<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b>De=C2=A0:</b> Zoran Stojs=
avljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt; <br><b>Envoy=C3=A9=C2=A0:</b> ve=
ndredi 12 avril 2019 06:05<br><b>=C3=80=C2=A0:</b> Stanisavljevic &lt;<a hr=
ef=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank">n.stanisavlj=
evic@polycaptil.fr</a>&gt;<br><b>Cc=C2=A0:</b> Yocto Project &lt;<a href=3D=
"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a=
>&gt;; Marc Ferland &lt;<a href=3D"mailto:marc.ferland@gmail.com" target=3D=
"_blank">marc.ferland@gmail.com</a>&gt;<br><b>Objet=C2=A0:</b> Re: [yocto] =
yocto touchscreen<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u><=
/u></p><div><p class=3D"MsoNormal">Hello Nikola,<br><br>I have here one non=
-important suggestion, for the starters:<br>Please, change kernel command l=
ine:<br>&gt; [ =C2=A0 =C2=A00.000000] Kernel command line: console=3DttyO0,=
115200 root=3D/dev/mmcblk0p2 rw<br><br>to: <b><i><span style=3D"color:red">=
console=3DttyS0</span></i></b>,115200 root=3D/dev/mmcblk0p2 rw<br><br>Accor=
ding to:<br>&gt; [ =C2=A0 =C2=A00.000414] Console: colour dummy device 80x3=
0<br>&gt; [ =C2=A0 =C2=A00.000440] WARNING: Your &#39;console=3DttyO0&#39; =
has been replaced by &#39;ttyS0&#39;<br>&gt; [ =C2=A0 =C2=A00.000447] This =
ensures that you still see kernel messages. Please<br>&gt; [ =C2=A0 =C2=A00=
.000452] update your kernel commandline.<br>_______<br><br>Looking into:<br=
>(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Thu Apr 11 15:41=
:31 2019<br>(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>(=
=3D=3D) Using system config directory &quot;/usr/share/X11/xorg.conf.d&quot=
;<br><br>Poky (Yocto Project Reference Distro) 2.6+snapshot am335x-evm /dev=
/ttyS0<br><br>am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) rep=
orts:<br>&gt; Warning: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Unsupported high k=
eycode 372 for name &lt;I372&gt; ignored<u></u><u></u></p><div><p class=3D"=
MsoNormal">&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 X11 cannot support keycodes above 255.<u></u><u></u></p></div><div><p c=
lass=3D"MsoNormal">&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 This warning only shows for the first high keycode.<u></u><u>=
</u></p></div><p class=3D"MsoNormal"><b><i>&gt; Internal error: =C2=A0 Coul=
d not resolve keysym XF86MonBrightnessCycle</i></b><u></u><u></u></p><div><=
p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNor=
mal">Errors from xkbcomp are not fatal to the X server<u></u><u></u></p></d=
iv><p class=3D"MsoNormal">[ =C2=A0 15.951736] random: dbus-daemon: uninitia=
lized urandom read (12 bytes read, 67 bits of entropy available)<br>D-BUS p=
er-session daemon address is: unix:abstract=3D/tmp/dbus-AntF8uRBJQ,guid=3D2=
087fb970fdb264af1e4e5315caf602b<br><b><i><span style=3D"color:red">Size 102=
4x768 not found in available modes</span></i></b><br><b><i><span style=3D"c=
olor:red">Error: No calibratable devices found.</span></i></b><br><b><i><sp=
an style=3D"color:black">matchbox: Cant find a keycode for keysym 269025056=
</span></i></b><br>matchbox: ignoring key shortcut XF86Calendar=3D!$contact=
s<br><b><i><span style=3D"color:black">matchbox: Cant find a keycode for ke=
ysym 2809</span></i></b><br>matchbox: ignoring key shortcut telephone=3D!$d=
ates<br><b><i>matchbox: Cant find a keycode for keysym 269025050</i></b><br=
>matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop<br>_=
______<u></u><u></u></p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p=
></div><div><p class=3D"MsoNormal">Seems, that mode you have chosen somehow=
 with your touch screen<u></u><u></u></p></div><div><p class=3D"MsoNormal">=
driver is NOT supported (messages in <b><i><span style=3D"color:red">RED</s=
pan></i></b>).<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Please, could you choose=
 something supported (800x600) and see if<u></u><u></u></p></div><div><p cl=
ass=3D"MsoNormal">this will work for you (just as proof of concept/ad-hoc t=
est)?<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></=
u></p></div><div><p class=3D"MsoNormal">Maybe your driver does not support =
1024x768 mode (could be!)?<u></u><u></u></p></div><div><p class=3D"MsoNorma=
l"><b><i><span style=3D"color:red">And, YES, calibration mode NOT to be per=
formed could be FATAL!</span></i></b><u></u><u></u></p></div><div><p class=
=3D"MsoNormal">_______<u></u><u></u></p></div><div><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">For now, it is eno=
ugh suggestions for exploring and trying by you.<u></u><u></u></p></div><di=
v><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"Mso=
Normal">You should have attached to your @ log Xorg.0.log message again, fo=
r<u></u><u></u></p></div><div><p class=3D"MsoNormal">us to inspect the mess=
ages and try to determine where the failure is.<u></u><u></u></p></div><div=
><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoN=
ormal">Zoran<u></u><u></u></p></div><div><p class=3D"MsoNormal">_______<u><=
/u><u></u></p></div></div><p class=3D"MsoNormal" style=3D"margin-bottom:12p=
t"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Thu, Apr 11,=
 2019 at 5:58 PM Stanisavljevic &lt;<a href=3D"mailto:n.stanisavljevic@poly=
captil.fr" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt; wrote:<=
u></u><u></u></p></div><blockquote style=3D"border-color:currentcolor curre=
ntcolor currentcolor rgb(204,204,204);border-style:none none none solid;bor=
der-width:medium medium medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8p=
t;margin-right:0cm"><div><div><p class=3D"MsoNormal">Hello Zoran,<u></u><u>=
</u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">I tried to change X.org X Server version</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">To do this I used=
 yocto warrior version.</span><u></u><u></u></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">When I boot the system, it=E2=80=99s written that <a href=
=3D"http://x.org" target=3D"_blank">x.org</a> X Server version is to 1.20.4=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">But I =
have the same problem as before, the touchscreen is completely locked and d=
on=E2=80=99t react when I touch the screen.</span><u></u><u></u></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">Do you have an other idea where the pr=
oblem is coming ?</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Here I copy the boot log :</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">U-Boot SPL 2017.05-00001-g041a398 (May 02 20=
18 - 18:36:57)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">Trying to boot from MMC1</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">reading uboot.env</span><u></u><u></u></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">reading u-boot.img</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading u-boot.img</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading u-boot=
.img</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">re=
ading u-boot.img</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">CPU=C2=A0 =
: AM335X-GP rev 2.1</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">Model: TI AM335x EVM-SK</span><u></u><u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">DRAM:=C2=A0 256 MiB</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">NAND:=C2=A0 0 MiB</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">MMC:=C2=A0=C2=A0 OMAP=
 SD/MMC: 0, OMAP SD/MMC: 1</span><u></u><u></u></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">reading uboot.env</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">ERROR: No USB device found</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">at drivers/usb/gadget/et=
her.c:2709/usb_ether_init()</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">Net:=C2=A0=C2=A0 CACHE: Misaligned operation at range =
[8df323c0, 8df32464]</span><u></u><u></u></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">Warning: ethernet@4a100000 using MAC address from ROM</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">eth0: ethernet=
@4a100000</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">Hit any key to stop autoboot:=C2=A0 0</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">reading zImage</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">3412752 bytes read in 251 ms (1=
3 MiB/s)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">reading dtb</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">39733 bytes read in 12 ms (3.2 MiB/s)</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">## Flattened Device Tree blob at 8200=
0000</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0=C2=A0 Booting using the fdt blob at 0x82000000</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0 Loading Device =
Tree to 8df19000, end 8df25b34 ... OK</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">Starting kernel ...</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[ =C2=A0=C2=A0=C2=A00.000000] B=
ooting Linux on physical CPU 0x0</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Initializing cgroup=
 subsys cpu</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 0.000000] Initializing cgroup subsys cpuacct</span=
><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.000000] Linux version 4.4.19-ge581bb1cac (polycaptil@polycaptil=
-HP-Notebo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ok) (gcc version 5.3.0 (GCC) ) #1 PREEMPT =
Thu May 24 11:42:17 CEST 2018</span><u></u><u></u></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] CPU: ARMv7 Processor [=
413fc082] revision 2 (ARMv7), cr=3D10c5387d</span><u></u><u></u></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] CPU: PIP=
T / VIPT nonaliasing data cache, VIPT aliasing instructio=C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0n cache</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">[=C2=A0=C2=A0=C2=A0 0.000000] Machine model: TI AM335x EVM-SK</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.000000] cma: Reserved 48 MiB at 0x8a800000</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Mem=
ory policy: Data cache writeback</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] CPU: All CPU(s) sta=
rted in SVC mode.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] AM335X ES2.1 (sgx neon )</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.000000] Built 1 zonelists in Zone order, mobility grouping on.=C2=A0 =
Total pag=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 es: 64960</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command=
 line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.00000=
0] PID hash table entries: 1024 (order: 0, 4096 bytes)</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.00000=
0] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 byt=
es)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000] Memory: 200444K/262144K available (6495K kerne=
l code, 313K rwdata=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 , 2368K rodata, 260K init, 265K bss=
, 12548K reserved, 49152K cma-reserved, 0K hi=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ghmem)</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.000000] Virtual kernel memory layout:</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=
=A0=C2=A0=C2=A0=C2=A0 vector=C2=A0 : 0xffff0000 - 0xffff1000=C2=A0=C2=A0 (=
=C2=A0=C2=A0 4 kB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 fixmap=C2=
=A0 : 0xffc00000 - 0xfff00000=C2=A0=C2=A0 (3072 kB)</span><u></u><u></u></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=
=C2=A0=C2=A0=C2=A0=C2=A0 vmalloc : 0xd0800000 - 0xff800000=C2=A0=C2=A0 ( 75=
2 MB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 lowmem=C2=A0 : 0xc0000=
000 - 0xd0000000=C2=A0=C2=A0 ( 256 MB)</span><u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=
=C2=A0=C2=A0 pkmap=C2=A0=C2=A0 : 0xbfe00000 - 0xc0000000=C2=A0=C2=A0 (=C2=
=A0=C2=A0 2 MB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 modules : =
0xbf000000 - 0xbfe00000=C2=A0=C2=A0 (=C2=A0 14 MB)</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .text : 0xc0008000 - 0xc08b0034=C2=A0=
=C2=A0 (8865 kB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 .init : 0xc08b1000 - 0xc08f2000=C2=A0=C2=A0 ( 260 kB)</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.00=
0000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0xc08f2000 - 0xc09407f0=
=C2=A0=C2=A0 ( 314 kB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 .bss : 0xc09407f0 - 0xc0982d58=C2=A0=C2=A0 ( 266 kB)</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, No=
des=3D1</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 0.000000] Preemptible hierarchical RCU implementation.=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.000000]=C2=A0 Build-time adjustment of leaf fanout to 32.=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.000000] NR_IRQS:16 nr_irqs:16 16</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] I=
RQ: Found an INTC at 0xfa200000 (revision 5.0) with 128 interrup=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ts</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">[=C2=A0=C2=A0=C2=A0 0.000000] OMAP clockevent source: timer2 at 24000=
000 Hz</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
[=C2=A0=C2=A0=C2=A0 0.000013] sched_clock: 32 bits at 24MHz, resolution 41n=
s, wraps every 89478=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 484971ns</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000034] clo=
cksource: timer1: mask: 0xffffffff max_cycles: 0xffffffff, max=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 _idle_ns: 79635851949 ns</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000046] OMAP clocksource: ti=
mer1 at 24000000 Hz</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000221] clocksource_probe: no matching c=
locksources found</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000414] Console: colour dummy device 80x30=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.000440] WARNING: Your &#39;console=3DttyO0&#39; has been =
replaced by &#39;ttyS0&#39;</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000447] This ensures that you st=
ill see kernel messages. Please</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000452] update your kernel c=
ommandline.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 0.000471] Calibrating delay loop... 795.44 BogoMIP=
S (lpj=3D3977216)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089060] pid_max: default: 32768 minimum: 3=
01</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.089190] Mount-cache hash table entries: 1024 (order: 0, 4=
096 bytes)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">[=C2=A0=C2=A0=C2=A0 0.089201] Mountpoint-cache hash table entries: 1024=
 (order: 0, 4096 bytes)</span><u></u><u></u></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089924] Initializing cgroup subsys i=
o</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0 =C2=A00.089956] Initializing cgroup subsys memory</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.=
089996] Initializing cgroup subsys devices</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090011] Initializ=
ing cgroup subsys freezer</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090026] Initializing cgroup subsys=
 perf_event</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 0.090038] Initializing cgroup subsys pids</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.090068] CPU: Testing write buffer coherency: ok</span><u></u><u></=
u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090=
493] Setting up static identity map for 0x80008200 - 0x80008258</span><u></=
u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.092679] devtmpfs: initialized</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.105439] VFP support v0.3=
: implementor 41 architecture 3 part 30 variant c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0rev 3</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 0.120521] omap_hwmod: debugss: _wait_target_disable f=
ailed</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.175644] clocksource: jiffies: mask: 0xffffffff max_cyc=
les: 0xffffffff, ma=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x_idle_ns: 19112604462750000 ns</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.179890] pinctrl core: initialized pinctrl subsystem</span><u></=
u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.181243] NET: Registered protocol family 16</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.183450] DMA=
: preallocated 256 KiB pool for atomic coherent allocations</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.=
209057] cpuidle: using governor ladder</span><u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.239046] cpuidle: usin=
g governor menu</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.243690] OMAP GPIO hardware version 0.1</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.254398] hw-breakpoint: debug architecture 0x4 unsupported.</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.297651] edma 49000000.edma: TI EDMA DMA engine driver</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.298633] reg-fixed-voltage fixedregulator@2: could not find pctldev fo=
r no=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 de /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pin=
mux_wl12xx_gpio, deferring pro=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 be</span><u></u><u></u></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302387] =
omap_i2c 44e0b000.i2c: could not find pctldev for node /ocp/l4_wk=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 up@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring pro=
be</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.302542] media: Linux media interface: v0.10</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
0.302605] Linux video capture interface: v2.00</span><u></u><u></u></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302656] pps_c=
ore: LinuxPPS API ver. 1 registered</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302664] pps_core: Softwa=
re ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giome=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tti &=
lt;<a href=3D"mailto:giometti@linux.it" target=3D"_blank">giometti@linux.it=
</a>&gt;</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 0.302694] PTP clock support registered</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0=
.302758] EDAC MC: Ver: 3.0.0</span><u></u><u></u></p><p class=3D"MsoNormal"=
>[=C2=A0=C2=A0=C2=A0 0.303971] omap-mailbox 480c8000.mailbox: omap mailbox =
rev 0x400<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.304334] Advanced Linux Sound Architecture Driver Initiali=
zed.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.305513] clocksource: Switched to clocksource timer1</s=
pan><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.316808] NET: Registered protocol family 2</span><u></u><u></=
u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317=
626] TCP established hash table entries: 2048 (order: 1, 8192 bytes)</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.317665] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.317693] TCP: Hash tables configured (established 2048 bind 2=
048)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.317782] UDP hash table entries: 256 (order: 0, 4096 by=
tes)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.317803] UDP-Lite hash table entries: 256 (order: 0, 40=
96 bytes)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 0.317960] NET: Registered protocol family 1</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.318387] RPC: Registered named UNIX socket transport module.</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.318402] RPC: Registered udp transport module.</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.31840=
9] RPC: Registered tcp transport module.</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.318415] RPC: Regi=
stered tcp NFSv4.1 backchannel transport module.</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.319367] hw =
perfevents: enabled with armv7_cortex_a8 PMU driver, 5 counter=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 s available</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.321439] futex hash table entries: 256 (or=
der: -1, 3072 bytes)</span><u></u><u></u></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.329858] squashfs: version 4.0 (2009/01/=
31) Phillip Lougher</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.330796] NFS: Registering the id_resolver=
 key type</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 0.330874] Key type id_resolver registered</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.330882] Key type id_legacy registered</span><u></u><u></u></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.330960] ntfs: dr=
iver 2.1.32 [Flags: R/O].</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334733] Block layer SCSI generic (=
bsg) driver version 0.4 loaded (major 2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 48)</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
0.334764] io scheduler noop registered</span><u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334778] io scheduler =
deadline registered</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334936] io scheduler cfq registered (def=
ault)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.336607] pinctrl-single 44e10800.pinmux: 142 pins at pa=
 f9e10800 size 568</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.339467] backlight supply power not found,=
 using dummy regulator</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.402551] Serial: 8250/16550 driver, 10=
 ports, IRQ sharing disabled</span><u></u><u></u></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.407008] 44e09000.serial: ttyS0 =
at MMIO 0x44e09000 (irq =3D 158, base_baud =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 30=
00000) is a 8250</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.017402] console [ttyS0] enabled</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 1.022241] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159, base_=
baud =3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3000000) is a 8250</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.032291]=
 [drm] Initialized drm 1.1.0 20060810</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.039603] [drm] Supports=
 vblank timestamp caching Rev 2 (21.10.2013).</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.046388] [drm] =
No driver support for vblank timestamp query.</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.062150] Consol=
e: switching to colour frame buffer device 60x34</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.070379] til=
cdc 4830e000.lcdc: fb0:=C2=A0 frame buffer device</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.105534] [d=
rm] Initialized tilcdc 1.0.0 20121205 on minor 0</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.118627] loo=
p: module loaded</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.124254] libphy: Fixed MDIO Bus: probed</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 1.185548] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 1.191692] davinci_mdio 4a101000.mdio: detected phy mask ffffff=
fe</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 1.198739] libphy: 4a101000.mdio: probed</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.2028=
36] davinci_mdio 4a101000.mdio: phy[0]: device 4a101000.mdio:00, driv=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 er SMSC LAN8710/LAN8720</span><u></u><u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.212833] cpsw 4a100000.e=
thernet: Detected MACID =3D a0:f6:fd:4c:a6:ba</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.220460] cpsw 4=
a100000.ethernet: cpsw: Detected MACID =3D c4:ed:ba:88:2a:92</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1=
.229323] mousedev: PS/2 mouse device common for all mice</span><u></u><u></=
u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.235=
803] i2c /dev entries driver</span><u></u><u></u></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.240462] cpuidle: enable-method =
property &#39;ti,am3352&#39; found operations</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.248156] omap_h=
smmc 48060000.mmc: Got CD GPIO</span><u></u><u></u></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.275714] pinctrl-single 44e108=
00.pinmux: bad data for mux pinmux_mmc2_pins</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.282895] pinctrl=
-single 44e10800.pinmux: no pins entries for pinmux_mmc2_p=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ins</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 1.317169] ledtrig-cpu: registered to indicate activity=
 on CPUs</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 1.326062] NET: Registered protocol family 10</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.332076] sit: IPv6 over IPv4 tunneling driver</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.337708=
] NET: Registered protocol family 17</span><u></u><u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.342503] Key type dns_re=
solver registered</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.347084] omap_voltage_late_init: Voltage dr=
iver support not added</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.407266] tps65910-rtc tps65910-rtc: rt=
c core: registered tps65910-rtc as r=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tc0</span><u></u><u>=
</u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.4=
15401] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.42179=
8] omap_hsmmc 48060000.mmc: Got CD GPIO</span><u></u><u></u></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.426953] vmmc: suppli=
ed by vbat</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">[=C2=A0=C2=A0=C2=A0 1.466351] pinctrl-single 44e10800.pinmux: bad data =
for mux pinmux_mmc2_pins</span><u></u><u></u></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.474750] pinctrl-single 44e10800.pin=
mux: no pins entries for pinmux_mmc2_p=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ins</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
1.513248] mmc0: host does not support reading read-only switch, assuming wr=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 ite-enable</span><u></u><u></u></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.523416] mmc0: new high speed S=
DHC card at address 0001</span><u></u><u></u></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.529625] mmcblk0: mmc0:0001 AS 3.72 =
GiB</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 1.535990]=C2=A0 mmcblk0: p1 p2 p3</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.595934]=
 vdd_mpu: supplied by vbat</span><u></u><u></u></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.602181] input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/i=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0nput0</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.618321] tps65910-rtc tps65910-rtc: setting system clock to 2019-04=
-11 15:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 41:17 UTC (1554997277)</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.639403] l=
is3_reg: disabling</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.655736] ALSA device list:</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.=
658725]=C2=A0=C2=A0 No soundcards found.</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.678270] EXT4-fs (=
mmcblk0p2): couldn&#39;t mount as ext3 due to feature incomp=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 atibilities</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.696893] EXT4-fs (mmcblk0p2): couldn&#39;t =
mount as ext2 due to feature incomp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 atibilities</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.918459] EXT4-fs (mmcblk0p2): recovery complete</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.9268=
17] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. O=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0pts: (null)</span><u></u><u></u></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.945553] VFS: Mounted root (ext4 fil=
esystem) on device 179:2.</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.951741] devtmpfs: mounted</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.955142] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 1.975513] This architecture does not have kernel memory protec=
tion.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I=
NIT: version 2.88 booting</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">Starting udev</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.626491] udevd[78]: starting=
 version 3.2.7</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">[=C2=A0=C2=A0=C2=A0 2.632958] random: udevd: uninitialized urandom =
read (16 bytes read, 19 bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy available=
)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 2.655617] random: udevd: uninitialized urandom read (16 byt=
es read, 19 bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy available)</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 2.675821] random: udevd: uninitialized urandom read (16 bytes read, 20 =
bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0of entropy available)</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.68508=
5] random: udevd: uninitialized urandom read (16 bytes read, 20 bits=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 of entropy available)</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.730297] udevd[78]=
: specified group &#39;kvm&#39; unknown</span><u></u><u></u></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.798310] udevd[79]: s=
tarting eudev-3.2.7</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 3.062517] random: udevd: uninitialized ura=
ndom read (16 bytes read, 23 bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy availa=
ble)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 3.095948] random: udevd: uninitialized urandom read (16 =
bytes read, 23 bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy available)</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 3.128747] udevd[79]: specified group &#39;kvm&#39; unknown</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 4.544886] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 5.086681] random: dd: uninitialized urandom read (512 bytes read, 36=
 bits o=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 f entropy available)</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">INIT: Entering runlevel: 5</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Configuring n=
etwork interfaces... [=C2=A0=C2=A0=C2=A0 5.281526] net eth0: initializing c=
psw ver=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0sion 1.12 (0)</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 5.286963] net eth0:=
 initialized cpsw ale version 1.4</span><u></u><u></u></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 5.292126] net eth0: ALE Tabl=
e size 1024</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 5.299577] net eth0: phy found : id is : 0x7c0f1</s=
pan><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 5.312916] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: =
started, v1.30.1</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">udhcpc: sending discover</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">udhcpc: sending discover</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: sending discover</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: no=
 lease, forking to background</span><u></u><u></u></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">done.</span><u></u><u></u></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">Starting system message bus: [=C2=A0=C2=A0 14.818015]=
 random: dbus-daemon: uninitialized urandom read (12 bytes read, 53 bits of=
 entropy available)</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0 14.841904] random: dbus-daemon: uninitialized ur=
andom read (12 bytes read, 53 bits of entropy available)</span><u></u><u></=
u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">dbus.</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Starting Xserver</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Starting syslogd=
/klogd:</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>done</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
X.Org X Server 1.20.4</span><u></u><u></u></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">X Protocol Version 11, Revision 0</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">Build Operating System: Linux 4.1=
5.0-45-generic x86_64</span><u></u><u></u></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">Current Operating System: Linux am335x-evm 4.4.19-ge581bb1ca=
c #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">Kernel command line: console=3Dt=
tyO0,115200 root=3D/dev/mmcblk0p2 rw</span><u></u><u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">Build Date: 10 April 2019=C2=A0 08:15:46PM</s=
pan><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</s=
pan><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Current v=
ersion of pixman: 0.38.0</span><u></u><u></u></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Before reporti=
ng problems, check <a href=3D"http://wiki.x.org" target=3D"_blank">http://w=
iki.x.org</a></span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to make sure that you hav=
e the latest version.</span><u></u><u></u></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">Markers: (--) probed, (**) from config file, (=3D=3D) defaul=
t setting,</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (++) from command line, (!!)=
 notice, (II) informational,</span><u></u><u></u></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (WW) warni=
ng, (EE) error, (NI) not implemented, (??) unknown.</span><u></u><u></u></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Log file: &quot;/var/=
log/Xorg.0.log&quot;, Time: Thu Apr 11 15:41:31 2019</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Using config file: &=
quot;/etc/X11/xorg.conf&quot;</span><u></u><u></u></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">(=3D=3D) Using system config directory &quot;/usr/sh=
are/X11/xorg.conf.d&quot;</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">Poky (Yocto Project Reference Distro) 2.6+snapshot am335=
x-evm /dev/ttyS0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) report=
s:</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">&gt;=
 Warning:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Unsupported=
 high keycode 372 for name &lt;I372&gt; ignored</span><u></u><u></u></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 X11 cannot support keycodes above 255.</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 This warning only shows for the first high keycode.</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">&gt; Internal error:=C2=A0=C2=
=A0 Could not resolve keysym XF86MonBrightnessCycle</span><u></u><u></u></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">Errors from xkbcomp are not fa=
tal to the X server</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0 15.951736] random: dbus-daemon: uninitialized ur=
andom read (12 bytes read, 67 bits of entropy available)</span><u></u><u></=
u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">D-BUS per-session daemon =
address is: unix:abstract=3D/tmp/dbus-AntF8uRBJQ,guid=3D2087fb970fdb264af1e=
4e5315caf602b</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">Size 1024x768 not found in available modes</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">Error: No calibratable devices f=
ound.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">m=
atchbox: Cant find a keycode for keysym 269025056</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">matchbox: ignoring key shortcut =
XF86Calendar=3D!$contacts</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">matchbox: Cant find a keycode for keysym 2809</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">matchbox: ignorin=
g key shortcut telephone=3D!$dates</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">matchbox: Cant find a keycode for keysym 269025=
050</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">mat=
chbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">dbus-daemon[282=
]: Activating service name=3D&#39;org.a11y.atspi.Registry&#39; requested by=
 &#39;:1.0&#39; (uid=3D0 pid=3D278 comm=3D&quot;matchbox-terminal &quot;)</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">dbus-dae=
mon[282]: Successfully activated service &#39;org.a11y.atspi.Registry&#39;<=
/span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">SpiRegi=
stry daemon is running with well-known name - org.a11y.atspi.Registry</span=
><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0 41.825592] random: nonblocking pool is initialized</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">Nikola.</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u=
></p><p class=3D"MsoNormal"><b>De=C2=A0:</b> Zoran Stojsavljevic &lt;<a hre=
f=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavl=
jevic@gmail.com</a>&gt; <br><b>Envoy=C3=A9=C2=A0:</b> lundi 8 avril 2019 08=
:07<br><b>=C3=80=C2=A0:</b> Stanisavljevic &lt;<a href=3D"mailto:n.stanisav=
ljevic@polycaptil.fr" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&=
gt;<br><b>Cc=C2=A0:</b> Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproj=
ect.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;; Marc Ferland &lt=
;<a href=3D"mailto:marc.ferland@gmail.com" target=3D"_blank">marc.ferland@g=
mail.com</a>&gt;<br><b>Objet=C2=A0:</b> Re: [yocto] yocto touchscreen<u></u=
><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><div><div><div><=
p class=3D"MsoNormal">Hello Nikola,<br><br>I did some quick analysis of you=
r kernel boot traces, and there are the following observations made:<br><br=
>[1] The kernel used is:<br>Linux version 4.4.19-ge581bb1cac (polycaptil@po=
lycaptil-HP-Notebook) ?!<br><br>In my case (I built YOCTO thud for BBB NOT =
using X11, only serial console):<br>Linux version 4.19.7-jumpnow (oe-user@o=
e-host) (gcc version 8.2.0 (GCC))<br><br>I could not explain polycaptil@pol=
ycaptil-HP-Notebook, maybe you do it for such kind of platform...<br>The ke=
rnel used is too old, for my taste, you did not replaced it, if you built Y=
OCTO thud!<br><br>[2] The kernel command line:<br>[ =C2=A0 =C2=A00.000000] =
Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw<br><br=
>Shows that you use EMMC as holder for / tree, all good.<br><br>[3] The con=
cern about your console: console=3DttyO0,115200<br>Is addressed here:<br>[ =
=C2=A0 =C2=A00.000441] WARNING: Your &#39;console=3DttyO0&#39; has been rep=
laced by &#39;ttyS0&#39;<br><br>Later followed by:<br>[ =C2=A0 =C2=A00.4024=
95] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled<br>[ =C2=A0 =
=C2=A00.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, bas=
e_baud =3D 3000000) is a 8250<br>[ =C2=A0 =C2=A01.017361] console [ttyS0] e=
nabled<br>[ =C2=A0 =C2=A01.022188] 48022000.serial: ttyS1 at MMIO 0x4802200=
0 (irq =3D 159, base_baud =3D 3000000) is a 8250<u></u><u></u></p><div><p c=
lass=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal=
">So, not at all worries about the console!<u></u><u></u></p></div><p class=
=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">[4=
] The following traces are worrying me very much:<u></u><u></u></p></div><d=
iv><p class=3D"MsoNormal">Starting Xserver<br>Starting syslogd/klogd:<br>do=
ne<br><b><i><span style=3D"color:red">X.Org X Server 1.20.1</span></i></b><=
br>X Protocol Version 11, Revision 0<br>Build Operating System: Linux 4.15.=
0-45-generic x86_64<br><b><i><span style=3D"color:red">Current Operating Sy=
stem: Linux am335x-evm 4.4.19-ge581bb1cac</span></i></b> #1 PREEMPT Thu May=
 24 11:42:17 CEST 2018 armv7l<br>Kernel command line: console=3DttyO0,11520=
0 root=3D/dev/mmcblk0p2 rw<br>Build Date: 02 April 2019=C2=A0 07:35:10PM<u>=
</u><u></u></p></div><div><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></=
div><div><p class=3D"MsoNormal">As Marc wrote earlier:<u></u><u></u></p></d=
iv><div><p class=3D"MsoNormal">&gt; Looks like: <a href=3D"https://bugzilla=
.redhat.com/show_bug.cgi?id=3D1650634" target=3D"_blank">https://bugzilla.r=
edhat.com/show_bug.cgi?id=3D1650634</a><u></u><u></u></p></div><div><p clas=
s=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">S=
o, as I stated before: you should have in your build:<u></u><u></u></p></di=
v><div><p class=3D"MsoNormal"><b><i><u><span style=3D"color:red">X.Org Serv=
er 1.20.3! This is the main problem, seems!</span></u></i></b><u></u><u></u=
></p></div><div><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><div><=
p class=3D"MsoNormal">Zoran<u></u><u></u></p></div><div><p class=3D"MsoNorm=
al">_______<u></u><u></u></p></div><div><p class=3D"MsoNormal">=C2=A0<u></u=
><u></u></p></div></div></div><p class=3D"MsoNormal" style=3D"margin-bottom=
:12pt">=C2=A0<u></u><u></u></p><div><div><p class=3D"MsoNormal">On Fri, Apr=
 5, 2019 at 3:35 PM Stanisavljevic &lt;<a href=3D"mailto:n.stanisavljevic@p=
olycaptil.fr" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt; wrot=
e:<u></u><u></u></p></div><blockquote style=3D"border-style:none none none =
solid;border-width:medium medium medium 1pt;padding:0cm 0cm 0cm 6pt;margin:=
5pt 0cm 5pt 4.8pt;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204)"><div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">Hello Zo=
ran,</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
I keep you in touch about the migration from sumo to thud to solve my probl=
em of locked touchscreen.</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">I migrated from sumo to thud version, but nothing change=
d, the problem is the same, and I have same messages on boot as sumo versio=
n.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I l=
ooked that the x server have a configuration kernel command line (if I corr=
ectly understood), here is what is written :</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">Kernel command line: console=3DttyO0,=
115200 root=3D/dev/mmcblk0p2 rw</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">But the kernel command line of poky is different, =
here is what is configured for poky kernel command line :</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Poky (Yocto Project Refe=
rence Distro) 2.6.1 am335x-evm /dev/ttyS0</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">For the xserver it is ttyO0 and for pok=
y it is ttyS0, maybe there is something wrong here which do problem for the=
 touchscreen.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">I put below (at end of this mail )the text which appear during the b=
oot.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
I think <span style=3D"color:black">xorg-x11-server package 1.20.3 was not =
the problem in the previous yocto version (sumo)=E2=80=A6</span></span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN=
-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"c=
olor:black" lang=3D"EN-US">Best regards</span><u></u><u></u></p><p class=3D=
"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">Nikola</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US=
">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"colo=
r:black" lang=3D"EN-US">Here is the text that appear during the boot :</spa=
n><u></u><u></u></p><div style=3D"border-style:dotted none;border-width:3pt=
 medium;padding:1pt 0cm;border-color:currentcolor"><p class=3D"MsoNormal"><=
span style=3D"color:black" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p></=
div><p class=3D"MsoNormal"><span lang=3D"EN-US">root@am335x-evm:~# CCCCCCCC=
CCCCCCCCCCCCCCCC</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)</span=
><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Trying to bo=
ot from MMC1</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">reading uboot.env</span><u></u><u></u></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">reading u-boot.img</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">reading u-boot.img</span><u></u><u></u></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">reading u-boot.img</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading u-boot.img</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">U-Boot 201=
7.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">CPU=C2=A0 : AM335X-GP rev 2.1</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Model: T=
I AM335x EVM-SK</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">DRAM:=C2=A0 256 MiB</span><u></u><u></u></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">NAND:=C2=A0 0 MiB</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">MMC:=C2=A0=C2=A0 OMAP SD/MMC: 0, OMAP S=
D/MMC: 1</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">reading uboot.env</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">ERROR: No USB device found</span><u></u><u></u></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">at drivers/usb/gadget/ether.c:2709/usb_eth=
er_init()</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">Net:=C2=A0=C2=A0 CACHE: Misaligned operation at range [8df323c0, 8df3246=
4]</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">War=
ning: ethernet@4a100000 using MAC address from ROM</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">eth0: ethernet@4a100000</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Hit any key to=
 stop autoboot:=C2=A0 0</span><u></u><u></u></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">reading zImage</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">3412752 bytes read in 252 ms (12.9 MiB/s)</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading dtb</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">39733 byte=
s read in 12 ms (3.2 MiB/s)</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">## Flattened Device Tree blob at 82000000</span><u></u=
><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0 Bootin=
g using the fdt blob at 0x82000000</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">=C2=A0=C2=A0 Loading Device Tree to 8df19000, e=
nd 8df25b34 ... OK</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">Starting kernel ...</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Booting Linux on phy=
sical CPU 0x0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Initializing cgroup subsys cpu</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.000000] Initializing cgroup subsys cpuacct</span><u></u><u></u></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] =
Linux version 4.4.19-ge581bb1cac (polycaptil@polycaptil-HP-Notebook) (gcc v=
ersion 5.3.0 (GCC) ) #1 PREEMPT Thu May 24 11:42:17 CEST 2018</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c5387d=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT ali=
asing instruction cache</span><u></u><u></u></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Machine model: TI AM335x EVM=
-SK</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000] cma: Reserved 48 MiB at 0x8a800000</span><u></=
u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.000000] Memory policy: Data cache writeback</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] CP=
U: All CPU(s) started in SVC mode.</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] AM335X ES2.1 (sgx=
 neon )</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists in Zone order, mobility gr=
ouping on.=C2=A0 Total pages: 64960</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command l=
ine: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=
 PID hash table entries: 1024 (order: 0, 4096 bytes)</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=
 Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.000000] Memory: 200444K/262144K available (6495K kernel c=
ode, 313K rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152=
K cma-reserved, 0K highmem)</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Virtual kernel memory la=
yout:</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 vector=C2=A0 : 0xffff0=
000 - 0xffff1000=C2=A0=C2=A0 (=C2=A0=C2=A0 4 kB)</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=
=A0=C2=A0=C2=A0=C2=A0 fixmap=C2=A0 : 0xffc00000 - 0xfff00000=C2=A0=C2=A0 (3=
072 kB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 vmalloc : 0xd0800000=
 - 0xff800000=C2=A0=C2=A0 ( 752 MB)</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=
=A0=C2=A0 lowmem=C2=A0 : 0xc0000000 - 0xd0000000=C2=A0=C2=A0 ( 256 MB)</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 pkmap=C2=A0=C2=A0 : 0xbfe00000 =
- 0xc0000000=C2=A0=C2=A0 (=C2=A0=C2=A0 2 MB)</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=
=C2=A0=C2=A0=C2=A0 modules : 0xbf000000 - 0xbfe00000=C2=A0=C2=A0 (=C2=A0 14=
 MB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .text : 0x=
c0008000 - 0xc08b0034=C2=A0=C2=A0 (8865 kB)</span><u></u><u></u></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 .init : 0xc08b1000 - 0xc08f2000=C2=A0 =C2=A0( 2=
60 kB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0=
xc08f2000 - 0xc09407f0=C2=A0=C2=A0 ( 314 kB)</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bss : 0xc09407f0 - 0xc0982d58=C2=A0=
=C2=A0 ( 266 kB)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, M=
inObjects=3D0, CPUs=3D1, Nodes=3D1</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Preemptible hiera=
rchical RCU implementation.</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0 Build-time adjustm=
ent of leaf fanout to 32.</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS:16 nr_irqs:16 16</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with=
 128 interrupts</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] OMAP clockevent source: timer2 at =
24000000 Hz</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 0.000016] sched_clock: 32 bits at 24MHz, resolutio=
n 41ns, wraps every 89478484971ns</span><u></u><u></u></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000036] clocksource: timer=
1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.000047] OMAP clocksource: timer1 at 24000000 Hz</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.=
000222] clocksource_probe: no matching clocksources found</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.00=
0415] Console: colour dummy device 80x30</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000441] WARNING: =
Your &#39;console=3DttyO0&#39; has been replaced by &#39;ttyS0&#39;</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.000447] This ensures that you still see kernel messages. Please</s=
pan><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.000453] update your kernel commandline.</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.00047=
3] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977216)</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0=
.089067] pid_max: default: 32768 minimum: 301</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089198] Mount-=
cache hash table entries: 1024 (order: 0, 4096 bytes)</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089210=
] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.089932] Initializing cgroup subsys io</span><u></u><u></u></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089965] Initi=
alizing cgroup subsys memory</span><u></u><u></u></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090003] Initializing cgroup sub=
sys devices</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 0.090020] Initializing cgroup subsys freezer</span=
><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.090035] Initializing cgroup subsys perf_event</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.09=
0047] Initializing cgroup subsys pids</span><u></u><u></u></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090074] CPU: Testing w=
rite buffer coherency: ok</span><u></u><u></u></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090499] Setting up static identity=
 map for 0x80008200 - 0x80008258</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.092669] devtmpfs: initializ=
ed</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.105440] VFP support v0.3: implementor 41 architecture 3 p=
art 30 variant c rev 3</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.120496] omap_hwmod: debugss: _wait_ta=
rget_disable failed</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.175552] clocksource: jiffies: mask: 0xff=
ffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.179889] pinctrl core: initialized pinctrl subsystem</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.18=
1246] NET: Registered protocol family 16</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.183446] DMA: prea=
llocated 256 KiB pool for atomic coherent allocations</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.209067=
] cpuidle: using governor ladder</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.239055] cpuidle: using gove=
rnor menu</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 0.243662] OMAP GPIO hardware version 0.1</span><u></=
u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.254349] hw-breakpoint: debug architecture 0x4 unsupported.</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.297650] edma 49000000.edma: TI EDMA DMA engine driver</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.=
298630] reg-fixed-voltage fixedregulator@2: could not find pctldev for node=
 /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, deferring =
probe</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.302384] omap_i2c 44e0b000.i2c: could not find pctldev =
for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, defe=
rring probe</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 0.302543] media: Linux media interface: v0.10</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.302609] Linux video capture interface: v2.00</span><u></u><u></=
u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302=
660] pps_core: LinuxPPS API ver. 1 registered</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302668] pps_co=
re: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti &lt;<a href=
=3D"mailto:giometti@linux.it" target=3D"_blank">giometti@linux.it</a>&gt;</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.302699] PTP clock support registered</span><u></u><u></u></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302764] =
EDAC MC: Ver: 3.0.0</span><u></u><u></u></p><p class=3D"MsoNormal">[=C2=A0=
=C2=A0=C2=A0 0.303981] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x40=
0<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.304343] Advanced Linux Sound Architecture Driver Initialized.</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.305508] clocksource: Switched to clocksource timer1</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.316757] NET: Registered protocol family 2</span><u></u><u></u></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317569] T=
CP established hash table entries: 2048 (order: 1, 8192 bytes)</span><u></u=
><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0=
 0.317608] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.317636] TCP: Hash tables configured (established 2048 bind 2048)</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.317718] UDP hash table entries: 256 (order: 0, 4096 bytes)</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.317738] UDP-Lite hash table entries: 256 (order: 0, 4096 byt=
es)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.317898] NET: Registered protocol family 1</span><u></u=
><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0=
 0.318323] RPC: Registered named UNIX socket transport module.</span><u></u=
><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0=
 0.318337] RPC: Registered udp transport module.</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.318344] RPC=
: Registered tcp transport module.</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.318350] RPC: Registered t=
cp NFSv4.1 backchannel transport module.</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.319303] hw perfev=
ents: enabled with armv7_cortex_a8 PMU driver, 5 counters available</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.321370] futex hash table entries: 256 (order: -1, 3072 bytes)</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.329774] squashfs: version 4.0 (2009/01/31) Phillip Lougher</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.330714] NFS: Registering the id_resolver key type</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
0.330792] Key type id_resolver registered</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.330801] Key type =
id_legacy registered</span><u></u><u></u></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.330881] ntfs: driver 2.1.32 [Flags: R/O=
].</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.334651] Block layer SCSI generic (bsg) driver version 0.4=
 loaded (major 248)</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334684] io scheduler noop registered</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.334698] io scheduler deadline registered</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334855]=
 io scheduler cfq registered (default)</span><u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.336527] pinctrl-singl=
e 44e10800.pinmux: 142 pins at pa f9e10800 size 568</span><u></u><u></u></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.339377] =
backlight supply power not found, using dummy regulator</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.4024=
95] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, base_baud=
 =3D 3000000) is a 8250</span><u></u><u></u></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.017361] console [ttyS0] enabled</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 1.022188] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159,=
 base_baud =3D 3000000) is a 8250</span><u></u><u></u></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.032233] [drm] Initialized =
drm 1.1.0 20060810</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.039551] [drm] Supports vblank timestamp c=
aching Rev 2 (21.10.2013).</span><u></u><u></u></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.046337] [drm] No driver support f=
or vblank timestamp query.</span><u></u><u></u></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.062083] Console: switching to col=
our frame buffer device 60x34</span><u></u><u></u></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.070316] tilcdc 4830e000.lcdc: =
fb0:=C2=A0 frame buffer device</span><u></u><u></u></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.105532] [drm] Initialized til=
cdc 1.0.0 20121205 on minor 0</span><u></u><u></u></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.118602] loop: module loaded</s=
pan><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 1.124221] libphy: Fixed MDIO Bus: probed</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.185547=
] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.1916=
90] davinci_mdio 4a101000.mdio: detected phy mask fffffffe</span><u></u><u>=
</u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.1=
98754] libphy: 4a101000.mdio: probed</span><u></u><u></u></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.202851] davinci_mdio 4a=
101000.mdio: phy[0]: device 4a101000.mdio:00, driver SMSC LAN8710/LAN8720</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[ =C2=A0=
=C2=A0=C2=A01.212830] cpsw 4a100000.ethernet: Detected MACID =3D a0:f6:fd:4=
c:a6:ba</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 1.220461] cpsw 4a100000.ethernet: cpsw: Detected MACID=
 =3D c4:ed:ba:88:2a:92</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.229313] mousedev: PS/2 mouse device c=
ommon for all mice</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.235792] i2c /dev entries driver</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[ =C2=A0=C2=A0=
=C2=A01.240448] cpuidle: enable-method property &#39;ti,am3352&#39; found o=
perations</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 1.248143] omap_hsmmc 48060000.mmc: Got CD GPIO</span=
><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 1.275713] pinctrl-single 44e10800.pinmux: bad data for mux pinmux=
_mmc2_pins</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">[=C2=A0=C2=A0=C2=A0 1.282895] pinctrl-single 44e10800.pinmux: no pins e=
ntries for pinmux_mmc2_pins</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.317167] ledtrig-cpu: registered =
to indicate activity on CPUs</span><u></u><u></u></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.326065] NET: Registered protoco=
l family 10</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 1.332086] sit: IPv6 over IPv4 tunneling driver</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 1.337713] NET: Registered protocol family 17</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.34252=
8] Key type dns_resolver registered</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.347114] omap_voltage_lat=
e_init: Voltage driver support not added</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.407191] tps65910-=
rtc tps65910-rtc: rtc core: registered tps65910-rtc as rtc0</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.=
415327] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz</span><u></u><u></u=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.4217=
10] omap_hsmmc 48060000.mmc: Got CD GPIO</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.426857] vmmc: sup=
plied by vbat</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0=C2=A0 1.466348] pinctrl-single 44e10800.pinmux: bad da=
ta for mux pinmux_mmc2_pins</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.474748] pinctrl-single 44e10800.=
pinmux: no pins entries for pinmux_mmc2_pins</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.513242] mmc0: h=
ost does not support reading read-only switch, assuming write-enable</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.523406] mmc0: new high speed SDHC card at address 0001</span><u></=
u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 1.529619] mmcblk0: mmc0:0001 AS 3.72 GiB</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.535970]=C2=A0 m=
mcblk0: p1 p2 p3</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.595927] vdd_mpu: supplied by vbat</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.602118] input: gpio_buttons@0 as /devices/platform/gpio_buttons@0/=
input/input0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">[=C2=A0=C2=A0=C2=A0 1.618310] tps65910-rtc tps65910-rtc: setting syst=
em clock to 2019-04-03 08:25:12 UTC (1554279912)</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.639397] lis=
3_reg: disabling</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.655734] ALSA device list:</span><u></u><u>=
</u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.6=
58723]=C2=A0=C2=A0 No soundcards found.</span><u></u><u></u></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.678283] EXT4-fs (mmc=
blk0p2): couldn&#39;t mount as ext3 due to feature incompatibilities</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.696903] EXT4-fs (mmcblk0p2): couldn&#39;t mount as ext2 due to fea=
ture incompatibilities</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.792693] EXT4-fs (mmcblk0p2): recovery=
 complete</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 1.807446] EXT4-fs (mmcblk0p2): mounted filesystem wi=
th ordered data mode. Opts: (null)</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.821463] VFS: Mounted root=
 (ext4 filesystem) on device 179:2.</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.835669] devtmpfs: mounte=
d</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 1.839073] Freeing unused kernel memory: 260K (c08b1000 - c0=
8f2000)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 1.851956] This architecture does not have kernel memor=
y protection.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">INIT: version 2.88 booting</span><u></u><u></u></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">Starting udev</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.513624] udevd[78]=
: starting version 3.2.5</span><u></u><u></u></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.527632] random: udevd: uninitialize=
d urandom read (16 bytes read, 18 bits of entropy available)</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2=
.546992] random: udevd: uninitialized urandom read (16 bytes read, 18 bits =
of entropy available)</span><u></u><u></u></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.566829] random: udevd: uninitialized u=
random read (16 bytes read, 18 bits of entropy available)</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.58=
5755] random: udevd: uninitialized urandom read (16 bytes read, 18 bits of =
entropy available)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.668211] udevd[79]: starting eudev-3.2.5</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 3.036159] random: udevd: uninitialized urandom read (16 bytes =
read, 21 bits of entropy available)</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 3.061761] random: udevd: u=
ninitialized urandom read (16 bytes read, 21 bits of entropy available)</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 4.494682] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered</=
span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 5.052098] random: dd: uninitialized urandom read (512 bytes re=
ad, 34 bits of entropy available)</span><u></u><u></u></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">INIT: Entering runlevel: 5</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">Configuring network interfac=
es... [=C2=A0=C2=A0=C2=A0 5.254308] net eth0: initializing cpsw version 1.1=
2 (0)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 5.259812] net eth0: initialized cpsw ale version 1.4</sp=
an><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 5.264976] net eth0: ALE Table size 1024</span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 5.272411] ne=
t eth0: phy found : id is : 0x7c0f1</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 5.285702] IPv6: ADDRCONF(N=
ETDEV_UP): eth0: link is not ready</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">udhcpc: started, v1.29.2</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: sending discover</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: sen=
ding discover</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">udhcpc: sending discover</span><u></u><u></u></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">udhcpc: no lease, forking to background</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">done.</span><u></=
u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Starting system me=
ssage bus: [=C2=A0=C2=A0 14.793334] random: dbus-daemon: uninitialized uran=
dom read (12 bytes read, 51 bits of entropy available)</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0 14.831748] ra=
ndom: dbus-daemon: uninitialized urandom read (12 bytes read, 52 bits of en=
tropy available)</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">dbus.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Starting Xserver</span><u></u><u></u></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">Starting syslogd/klogd:</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">done</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">X.Org X Server 1.20.1</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">X Protocol Version 11, R=
evision 0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">Build Operating System: Linux 4.15.0-45-generic x86_64</span><u></u><u><=
/u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Current Operating System=
: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2=
018 armv7l</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw</s=
pan><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Build Dat=
e: 02 April 2019=C2=A0 07:35:10PM</span><u></u><u></u></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">Current version of pixman: 0.34.0</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Before reporting problems, check <a href=3D"http://wi=
ki.x.org" target=3D"_blank">http://wiki.x.org</a></span><u></u><u></u></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 to make sure that you have the latest version.</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Markers: (--) probed, =
(**) from config file, (=3D=3D) default setting,</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 (++) from command line, (!!) notice, (II) informational,</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 (WW) warning, (EE) error, (NI) not implemented,=
 (??) unknown.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Wed Apr=
=C2=A0 3 08:25:25 2019</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<=
/span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D=
) Using system config directory &quot;/usr/share/X11/xorg.conf.d&quot;</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Poky (Yocto=
 Project Reference Distro) 2.6.1 am335x-evm /dev/ttyS0</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">am335x-evm login: The XKEYB=
OARD keymap compiler (xkbcomp) reports:</span><u></u><u></u></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">&gt; Warning:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Unsupported high keycode 372 for name &lt;I372&=
gt; ignored</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 X11 cannot support keycodes abov=
e 255.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0This warning only shows for the fir=
st high keycode.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Errors from xkbcomp are not fatal to the X server</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0 15.8889=
59] random: dbus-daemon: uninitialized urandom read (12 bytes read, 65 bits=
 of entropy available)</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">D-BUS per-session daemon address is: unix:abstract=3D/tmp/d=
bus-JjEW6Wgjtx,guid=3D87af020e5c6f1a7e21d449e55ca46df5</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">Size 1024x768 not found in =
available modes</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Error: No calibratable devices found.</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">matchbox: Cant find a keycode for=
 keysym 269025056</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">matchbox: ignoring key shortcut XF86Calendar=3D!$contacts</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">matchbox: Can=
t find a keycode for keysym 2809</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">matchbox: ignoring key shortcut telephone=3D!$dat=
es</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">mat=
chbox: Cant find a keycode for keysym 269025050</span><u></u><u></u></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">matchbox: ignoring key shortcut XF=
86Start=3D!matchbox-remote -desktop</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">Failed to launch bus: Failed to execute child =
process ?/usr/bin? (Permission denied)</span><u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">(matchbox-terminal:274): dbind-WARNING **: =
08:25:27.404: Error retrieving accessibility bus address: org.a11y.Bus.Erro=
r: Failed to execute child process ?/usr/bin? (Permission denied)</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0 43=
.718127] random: nonblocking pool is initialized</span><u></u><u></u></p><d=
iv style=3D"border-style:none none dotted;border-width:medium medium 3pt;pa=
dding:0cm 0cm 1pt;border-color:currentcolor currentcolor windowtext"><div s=
tyle=3D"border-style:none none dotted;border-width:medium medium 3pt;paddin=
g:0cm 0cm 1pt;border-color:currentcolor currentcolor windowtext"><p class=
=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">=C2=A0</span><u><=
/u><u></u></p></div><p class=3D"MsoNormal"><span style=3D"color:black" lang=
=3D"EN-US">=C2=A0</span><u></u><u></u></p></div><p class=3D"MsoNormal"><spa=
n style=3D"color:black" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><div>=
<div style=3D"border-style:solid none none;border-width:1pt medium medium;p=
adding:3pt 0cm 0cm;border-color:currentcolor"><p class=3D"MsoNormal"><b><sp=
an lang=3D"EN-US">De=C2=A0:</span></b><span lang=3D"EN-US"> Stanisavljevic =
&lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank">n.s=
tanisavljevic@polycaptil.fr</a>&gt; <br><b>Envoy=C3=A9=C2=A0:</b> lundi 18 =
f=C3=A9vrier 2019 15:27<br><b>=C3=80=C2=A0:</b> &#39;Zoran Stojsavljevic&#3=
9; &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">z=
oran.stojsavljevic@gmail.com</a>&gt;<br><b>Cc=C2=A0:</b> &#39;Yocto Project=
&#39; &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a>&gt;; &#39;Marc Ferland&#39; &lt;<a href=3D"mailto:mar=
c.ferland@gmail.com" target=3D"_blank">marc.ferland@gmail.com</a>&gt;<br><b=
>Objet=C2=A0:</b> RE: [yocto] yocto touchscreen</span><u></u><u></u></p></d=
iv></div><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Hello Zoran</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I will try these =
2 ways.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>Of course, the second way is the easiest, but I will try also the first wa=
y only to see if it is possible.</span><u></u><u></u></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">I will keep you in touch if the first way can wor=
k.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Bes=
t regards,</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">Nikola</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><b><span lang=3D"=
EN-US">De=C2=A0:</span></b><span lang=3D"EN-US"> Zoran Stojsavljevic &lt;</=
span><a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank"><sp=
an lang=3D"EN-US">zoran.stojsavljevic@gmail.com</span></a><span lang=3D"EN-=
US">&gt; <br><b>Envoy=C3=A9=C2=A0:</b> lundi 18 f=C3=A9vrier 2019 15:21<br>=
<b>=C3=80=C2=A0:</b> Stanisavljevic &lt;</span><a href=3D"mailto:n.stanisav=
ljevic@polycaptil.fr" target=3D"_blank"><span lang=3D"EN-US">n.stanisavljev=
ic@polycaptil.fr</span></a><span lang=3D"EN-US">&gt;<br><b>Cc=C2=A0:</b> Yo=
cto Project &lt;</span><a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank"><span lang=3D"EN-US">yocto@yoctoproject.org</span></a><span lang=3D=
"EN-US">&gt;; Marc Ferland &lt;</span><a href=3D"mailto:marc.ferland@gmail.=
com" target=3D"_blank"><span lang=3D"EN-US">marc.ferland@gmail.com</span></=
a><span lang=3D"EN-US">&gt;<br><b>Objet=C2=A0:</b> Re: [yocto] yocto touchs=
creen</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0</span><u></u><u></u></p><div><div><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Hello Nikola,</span><u></u><u></u></p></div><div><p class=3D"Mso=
Normal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p></div><div><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">Two things, which immediately came =
to my mind:</span><u></u><u></u></p></div><div><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[1 - Harder way] Either to change xorg-x11-server in sumo t=
o match at least xorg-x11-server <b><i><span style=3D"color:red">1.20.3;</s=
pan></i></b></span><u></u><u></u></p></div><div><p class=3D"MsoNormal"><b><=
i><span style=3D"color:red" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <=
/span></i></b><span style=3D"color:black" lang=3D"EN-US">(harder way, since=
 few people know exact dependencies among various GFX packages, and what</s=
pan><u></u><u></u></p></div><div><p class=3D"MsoNormal"><span style=3D"colo=
r:black" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and how many p=
ackages need to be also changed to make xorg-x11-server 1.20.3 to work)</sp=
an><u></u><u></u></p></div><div><p class=3D"MsoNormal"><span style=3D"color=
:black" lang=3D"EN-US">[2 - Easier Way] Either to migrate YOCTO to Thud, wh=
ere the correct xorg-x11-server package 1.20.3</span><u></u><u></u></p></di=
v><div><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 is already fixed and set!</span><u></u><u></=
u></p></div><div><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D=
"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (easier way, since exact dependencie=
s among various GFX packages are already set for 1.20.3)</span><u></u><u></=
u></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><=
u></u><u></u></p></div><div><p class=3D"MsoNormal"><span style=3D"color:bla=
ck" lang=3D"EN-US">Best Regards,</span><u></u><u></u></p></div><div><p clas=
s=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">Zoran</span><u><=
/u><u></u></p></div><div><p class=3D"MsoNormal"><span style=3D"color:black"=
 lang=3D"EN-US">_______=C2=A0 </span><u></u><u></u></p></div></div><p class=
=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US">=C2=A0</sp=
an><u></u><u></u></p><div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=
On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic &lt;</span><a href=3D"mailto=
:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span lang=3D"EN-US">n.s=
tanisavljevic@polycaptil.fr</span></a><span lang=3D"EN-US">&gt; wrote:</spa=
n><u></u><u></u></p></div><blockquote style=3D"border-style:none none none =
solid;border-width:medium medium medium 1pt;padding:0cm 0cm 0cm 6pt;margin:=
5pt 0cm 5pt 4.8pt;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204)"><div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">Thank yo=
u Zoran for trying to help me.<br>I tried to resolve the problem, but I did=
n=E2=80=99t succeed yet, I think I will to continue, and If after some time=
 I find nothing, I=E2=80=99m going to migrate to the thud version.</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I will maybe tr=
y to use Bugzilla</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Nikola</span><u></u><u></u></p><p class=3D"MsoNormal"><b><span l=
ang=3D"EN-US">De=C2=A0:</span></b><span lang=3D"EN-US"> Zoran Stojsavljevic=
 &lt;</span><a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bla=
nk"><span lang=3D"EN-US">zoran.stojsavljevic@gmail.com</span></a><span lang=
=3D"EN-US">&gt; <br><b>Envoy=C3=A9=C2=A0:</b> mardi 5 f=C3=A9vrier 2019 19:=
28<br><b>=C3=80=C2=A0:</b> Stanisavljevic &lt;</span><a href=3D"mailto:n.st=
anisavljevic@polycaptil.fr" target=3D"_blank"><span lang=3D"EN-US">n.stanis=
avljevic@polycaptil.fr</span></a><span lang=3D"EN-US">&gt;<br><b>Cc=C2=A0:<=
/b> Yocto Project &lt;</span><a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank"><span lang=3D"EN-US">yocto@yoctoproject.org</span></a><span l=
ang=3D"EN-US">&gt;; </span><a href=3D"mailto:marc.ferland@gmail.com" target=
=3D"_blank"><span lang=3D"EN-US">marc.ferland@gmail.com</span></a><span lan=
g=3D"EN-US"><br><b>Objet=C2=A0:</b> Re: [yocto] yocto touchscreen</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u>=
</u><u></u></p><div><p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><sp=
an lang=3D"EN-US">Hello Nikola,<br><br>Let us try to cut to the chase!<br><=
br>After reading what Marc Ferland says/writes, and looking into the follow=
ing:<br></span><a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D165=
0634" target=3D"_blank"><span lang=3D"EN-US">https://bugzilla.redhat.com/sh=
ow_bug.cgi?id=3D1650634</span></a><u></u><u></u></p><div><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">I have spotted the following:</span><u></u><u></u=
></p></div><div><p class=3D"MsoNormal"><span class=3D"gmail-m_-773912286658=
4811312gmail-m-9168239870449504461gmail-m-2391544497964063811gmail-m6574121=
755013685205gmail-m-2573238030158729977gmail-m3069207977298945462gmail-fn">=
<b><i><u><span lang=3D"EN-US">Pat Riehecky</span></u></i></b></span><span c=
lass=3D"gmail-m_-7739122866584811312gmail-m-9168239870449504461gmail-m-2391=
544497964063811gmail-m6574121755013685205gmail-m-2573238030158729977gmail-m=
3069207977298945462gmail-vcard"><b><i><u><span lang=3D"EN-US"> </span></u><=
/i></b></span><span class=3D"gmail-m_-7739122866584811312gmail-m-9168239870=
449504461gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-25732=
38030158729977gmail-m3069207977298945462gmail-bzcommenttime"><b><i><u><span=
 lang=3D"EN-US">2018-11-20 14:28:22 UTC</span></u></i></b></span><span clas=
s=3D"gmail-m_-7739122866584811312gmail-m-9168239870449504461gmail-m-2391544=
497964063811gmail-m6574121755013685205gmail-m-2573238030158729977gmail-m306=
9207977298945462gmail-bzcommenttime"><b><i><span lang=3D"EN-US"> </span></i=
></b></span><u></u><u></u></p></div><p class=3D"MsoNormal" style=3D"margin-=
bottom:12pt"><i><u><span lang=3D"EN-US">t<b>he bug remains with the elrepo =
kernels:<br>kernel-ml-4.19.2-1.el7.elrepo.x86_64<br>kernel-lt-4.4.163-1.el7=
.elrepo.x86_64</b></span></u></i><u></u><u></u></p><div><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">I never had this problem since I do not use Xorg (=
GFX), rather I only</span><u></u><u></u></p></div><div><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">use serial console from VBox VM from my BBB (pass-t=
hrough).</span><u></u><u></u></p></div><p class=3D"MsoNormal"><span lang=3D=
"EN-US">=C2=A0</span><u></u><u></u></p><div><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">Thus, my suggestion for you, to skip the whole mess is to rebu=
ild your</span><u></u><u></u></p></div><div><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">distro <b><i><u><span style=3D"color:red">in the light of YOCT=
O Project 2.6.1 (thud 20.0.0.1).</span></u></i></b></span><u></u><u></u></p=
></div><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u><=
/u></p><div><p class=3D"MsoNormal"><span lang=3D"EN-US">My best guess (then=
 you&#39;ll inherit YOCTO kernel 4.20.x with fixed Xorg - X11).</span><u></=
u><u></u></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<=
/span><u></u><u></u></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-=
US">I am using Fedora 29 on my laptop. Also from the bugzilla:</span><u></u=
><u></u></p></div><div><div><p class=3D"MsoNormal"><span class=3D"gmail-m_-=
7739122866584811312gmail-m-9168239870449504461gmail-m-2391544497964063811gm=
ail-m6574121755013685205gmail-m-2573238030158729977gmail-m30692079772989454=
62gmail-fn"><b><i><u><span lang=3D"EN-US">Pat Riehecky</span></u></i></b></=
span><span class=3D"gmail-m_-7739122866584811312gmail-m-9168239870449504461=
gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-25732380301587=
29977gmail-m3069207977298945462gmail-vcard"><b><i><u><span lang=3D"EN-US"> =
</span></u></i></b></span><span class=3D"gmail-m_-7739122866584811312gmail-=
m-9168239870449504461gmail-m-2391544497964063811gmail-m6574121755013685205g=
mail-m-2573238030158729977gmail-m3069207977298945462gmail-bzcommenttime"><b=
><i><u><span lang=3D"EN-US">2018-11-20 15:46:11 UTC </span></u></i></b></sp=
an><u></u><u></u></p></div><p class=3D"MsoNormal"><b><i><u><span style=3D"f=
ont-family:&quot;Arial&quot;,sans-serif" lang=3D"EN-US">Bug resolved by reb=
uilding xorg-x11-server-1.20.3-1.fc29 [1] for 7.6.</span></u></i></b><u></u=
><u></u></p></div><div><p class=3D"MsoNormal"><b><i><u><span style=3D"font-=
family:&quot;Arial&quot;,sans-serif" lang=3D"EN-US">With this in mind it ap=
pears to be an Xorg server bug rather than fbdev.</span></u></i></b><u></u>=
<u></u></p></div><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><=
u></u><u></u></p><div><p class=3D"MsoNormal"><span lang=3D"EN-US">From my H=
P EliteBook 840 G1 Fedora 29, Xorg.0.log - February 5th, 2019.,</span><u></=
u><u></u></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">I have =
the following:</span><u></u><u></u></p></div><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">=C2=A0</span><u></u><u></u></p><div><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[ =C2=A0 =C2=A026.955] Kernel command line: BOOT_IMAGE=
=3D/<b><i><u><span style=3D"color:red">vmlinuz-4.20.6-200.fc29.x86_64</span=
></u></i></b></span><u></u><u></u></p></div><div><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">root=3D/dev/mapper/fedora-root ro </span><a href=3D"http:=
//rd.lvm.lv" target=3D"_blank"><span lang=3D"EN-US">rd.lvm.lv</span></a><sp=
an lang=3D"EN-US">=3Dfedora/root </span><a href=3D"http://rd.lvm.lv" target=
=3D"_blank"><span lang=3D"EN-US">rd.lvm.lv</span></a><span lang=3D"EN-US">=
=3Dfedora/swap rhgb</span><u></u><u></u></p></div><div><p class=3D"MsoNorma=
l">quiet LANG=3Den_US.UTF-8<u></u><u></u></p></div><p class=3D"MsoNormal"><=
span lang=3D"EN-US">[ =C2=A0 =C2=A026.955] Build Date: 11 January 2019 =C2=
=A012:47:38PM<br><b><i><u><span style=3D"color:red">[ =C2=A0=C2=A0 26.955] =
Build ID: xorg-x11-server 1.20.3-3.fc29</span></u></i></b><br>[ =C2=A0 =C2=
=A026.955] Current version of pixman: 0.34.0<br><br>Best Regards,<br>Zoran<=
br>_______<br><br>On Tue, Feb 5, 2019 at 2:49 PM Zoran Stojsavljevic &lt;</=
span><a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank"><sp=
an lang=3D"EN-US">zoran.stojsavljevic@gmail.com</span></a><span lang=3D"EN-=
US">&gt; wrote:<br>&gt;<br>&gt; Hello Nikola,<br>&gt;<br>&gt; &gt; I create=
d a kernel recipe with a bbappend file, and, I added<br>&gt; &gt; the same =
defconfig that I used for krogoth version.<br>&gt; &gt; The bbappend for ke=
rnel recipe concern meta-ti layer.<br>&gt; &gt; I didn&#39;t edited defconf=
ig file in other layers which contain a<br>&gt; &gt; kernel recipe.<br>&gt;=
<br>&gt; It could be some problem that Sumo does not take your bbappend fil=
e into the<br>&gt; consideration as placed.<br>&gt;<br>&gt; It could be som=
ething else, as well.<br>&gt;<br>&gt; I have the same issue with my defconf=
ig file for my Thud Beagle Bone Black (BBB)<br>&gt; standard board. Every t=
ime I recompile my YOCTO for it for different releases, I need<br>&gt; to i=
mport my specific defconfig. But I use complete different repos for my stan=
dard<br>&gt; Beagle Bone Black than YOCTO BBB Poky reference distro.<br>&gt=
;<br>&gt; Here is what I use in Thud (my bblayers.conf):<br>&gt;<br>&gt; PO=
KY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br>&gt; BBPATH =3D &quot;${TOPDI=
R}&quot;<br>&gt; BBFILES ?=3D &quot;&quot;<br>&gt;<br>&gt; BBLAYERS ?=3D &q=
uot; \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/yocto-th=
ud/meta-bbb \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/y=
octo-thud/meta-openembedded/meta-networking \<br>&gt; =C2=A0 =C2=A0 /home/u=
ser/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-oe \<br>&g=
t; =C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/yocto-thud/meta-open=
embedded/meta-python \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebon=
e-black/yocto-thud/meta-qt5 \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/be=
aglebone-black/yocto-thud/poky/meta \<br>&gt; =C2=A0 =C2=A0 /home/user/proj=
ects2/beaglebone-black/yocto-thud/poky/meta-poky&quot;<br>&gt;<br>&gt; Ther=
e, I replace defconfig in this layer: /home/user/projects2/beaglebone-black=
/yocto-thud/meta-bbb<br>&gt; with my own defconfig.<br>&gt;<br>&gt; In the =
directory:<br>&gt; /home/user/projects2/beaglebone-black/yocto-thud/meta-bb=
b/recipes-kernel/linux/linux-stable-4.19/beaglebone<br>&gt;<br>&gt; If you =
use only Poky repository, then you need to read the following paragraph (ho=
w to use<br>&gt; your defconfig with Poky):<br>&gt;<br>&gt; [2.3.3. Changin=
g the Configuration] YOCTO Project Linux Development Manual<br>&gt; </span>=
<a href=3D"https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html=
#using-an-in-tree-defconfig-file" target=3D"_blank"><span lang=3D"EN-US">ht=
tps://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an-in-=
tree-defconfig-file</span></a><span lang=3D"EN-US"><br>&gt; 2.3.3. Changing=
 the Configuration<br>&gt;<br>&gt; I hope this will help. Please, keep us p=
osted!<br>&gt;<br>&gt; Zoran<br>&gt; _______<br>&gt;<br>&gt;<br>&gt; On Tue=
, Feb 5, 2019 at 10:54 AM Stanisavljevic &lt;</span><a href=3D"mailto:n.sta=
nisavljevic@polycaptil.fr" target=3D"_blank"><span lang=3D"EN-US">n.stanisa=
vljevic@polycaptil.fr</span></a><span lang=3D"EN-US">&gt; wrote:<br>&gt;&gt=
;<br>&gt;&gt; Hy Zoran<br>&gt;&gt;<br>&gt;&gt; Thank&#39;s to take time to =
answer<br>&gt;&gt;<br>&gt;&gt; I created a kernel recipe with a bbappend fi=
le, and, I added the same defconfig that I used for krogoth version.<br>&gt=
;&gt; The bbappend for kernel recipe concern meta-ti layer.<br>&gt;&gt; I d=
idn&#39;t edited defconfig file in other layers which contain a kernel reci=
pe.<br>&gt;&gt;<br>&gt;&gt; I think it&#39;s a problem which concern the sc=
reen resolution, screen frequency and adc touchscreen.<br>&gt;&gt; Somethin=
g is different between the krogoth and sumo version, but I didn&#39;t find =
what is changed...<br>&gt;&gt;<br>&gt;&gt; Xrandr show that problem is mayb=
e around the screen resolution.<br>&gt;&gt; It&#39;s show the next message =
: &quot;Size 1024x768 not found in available modes&quot;<br>&gt;&gt; Maybe =
it was changed between krogoth and sumo version...but I don&#39;t know wher=
e it is indicated if sources files...<br>&gt;&gt;<br>&gt;&gt; What do you t=
hink ? problem can be around the screen resolution, screen frequency and ad=
c touchscreen ?<br>&gt;&gt;<br>&gt;&gt; Nikola<br>&gt;&gt;<br>&gt;&gt; ----=
-Message d&#39;origine-----<br>&gt;&gt; De : Zoran Stojsavljevic &lt;</span=
><a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank"><span l=
ang=3D"EN-US">zoran.stojsavljevic@gmail.com</span></a><span lang=3D"EN-US">=
&gt;<br>&gt;&gt; Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08<br>&gt;&gt; =
=C3=80 : Stanisavljevic &lt;</span><a href=3D"mailto:n.stanisavljevic@polyc=
aptil.fr" target=3D"_blank"><span lang=3D"EN-US">n.stanisavljevic@polycapti=
l.fr</span></a><span lang=3D"EN-US">&gt;<br>&gt;&gt; Cc : Yocto Project &lt=
;</span><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"><span l=
ang=3D"EN-US">yocto@yoctoproject.org</span></a><span lang=3D"EN-US">&gt;<br=
>&gt;&gt; Objet : Re: [yocto] yocto touchscreen<br>&gt;&gt;<br>&gt;&gt; &gt=
; I built a first version of this os with version krogoth and it works fine=
.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Now I build a second version of this os=
 with version sumo and the<br>&gt;&gt; &gt; touch screen works fine during =
boot process but when kernel is loaded,<br>&gt;&gt; &gt; touchscreen freeze=
 / lock and impossible to use it.<br>&gt;&gt;<br>&gt;&gt; Did you compare K=
rogoth kernel defconfig with Sumo kernel defconfig?<br>&gt;&gt;<br>&gt;&gt;=
 May there are some mismatches in drivers&#39; setup between these two?<br>=
&gt;&gt;<br>&gt;&gt; Zoran<br>&gt;&gt; _______<br>&gt;&gt;<br>&gt;&gt; On M=
on, Feb 4, 2019 at 12:24 PM Stanisavljevic &lt;</span><a href=3D"mailto:n.s=
tanisavljevic@polycaptil.fr" target=3D"_blank"><span lang=3D"EN-US">n.stani=
savljevic@polycaptil.fr</span></a><span lang=3D"EN-US">&gt; wrote:<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; Hy Team,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; I have a problem<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; I buid a custom os for AM335x process=
or and I used yocto to do it.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; I build a first version of this os with version krog=
oth and it work fine.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; Now I build a second version of this os with version sumo an=
d the touchscreen work fine during boot process but when kernel is loaded, =
touchscreen freeze / lock and impossible to use it.<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; The terminal is printed on the touchscreen but the screen is loc=
ked, impossible to write a command or to move the mouse to select, =E2=80=
=A6.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; He=
re is the log of boot to the user session (log got with serial communicatio=
n between PC and board) :<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:5=
7)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Trying to boot from MMC1<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; reading uboot.env<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; re=
ading u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading u-boot.img<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; reading u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; reading u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; U-Boot 2017.05-00001-g=
041a398 (May 02 2018 - 18:36:57 +0200)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; CPU =C2=A0: AM335X-GP rev 2.1<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; Model: TI AM335x EVM-SK<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; DRAM: =C2=A0256 MiB<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; NAND: =C2=A00 MiB=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; MMC: =C2=A0 OMAP SD/MMC: 0, OMAP SD/MMC:=
 1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading uboot.env<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; ERROR: No USB device found<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; at drivers/usb/gadget/ether.c:2709/usb_et=
her_init()<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Net: =C2=A0 CACHE: Misaligned =
operation at range [8df323c0, 8df32464]<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; Warning: ethernet@4a100000 using MAC addre=
ss from ROM<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; eth0: ethernet@4a100000<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; Hit any key to stop autoboot: =C2=A00<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; reading zImage<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
3412752 bytes read in 251 ms (13 MiB/s)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; r=
eading dtb<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; 39733 bytes read in 12 ms (3.2=
 MiB/s)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; ## Flattened Device Tree blob at =
82000000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0Booting using the f=
dt blob at 0x82000000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0Loadin=
g Device Tree to 8df19000, end 8df25b34 ... OK<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting kernel ...<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00000=
0] Booting Linux on physical CPU 0x0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.000000] Initializing cgroup subsys cpu<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Initializing cgroup subsys cpuacct<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Linux version 4.4.=
19-ge581bb1cac (polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC)=
 ) #1 PREEMPT Thu May 24 11:42:17 CEST 2018<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; [ =C2=A0 =C2=A00.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARM=
v7), cr=3D10c5387d<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00000=
0] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Machine model: =
TI AM335x EVM-SK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000]=
 cma: Reserved 48 MiB at 0x8a800000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A00.000000] Memory policy: Data cache writeback<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] CPU: All CPU(s) started in SVC mode=
.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] AM335X ES2.1 (=
sgx neon )<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Built=
 1 zonelists in Zone order, mobility grouping on.=C2=A0 Total pages: 64960<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Kernel command l=
ine: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A00.000000] PID hash table entries: 1024 (order: 0=
, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] De=
ntry cache hash table entries: 32768 (order: 5, 131072 bytes)<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Inode-cache hash table entrie=
s: 16384 (order: 4, 65536 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.000000] Memory: 200444K/262144K available (6495K kernel code, 313K=
 rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K cma-res=
erved, 0K highmem)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00000=
0] Virtual kernel memory layout:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.000000] =C2=A0 =C2=A0 vector =C2=A0: 0xffff0000 - 0xffff1000 =C2=
=A0 ( =C2=A0 4 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00000=
0] =C2=A0 =C2=A0 fixmap =C2=A0: 0xffc00000 - 0xfff00000 =C2=A0 (3072 kB)<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 vmal=
loc : 0xd0800000 - 0xff800000 =C2=A0 ( 752 MB)<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 lowmem =C2=A0: 0xc0000000 - 0x=
d0000000 =C2=A0 ( 256 MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A0=
0.000000] =C2=A0 =C2=A0 pkmap =C2=A0 : 0xbfe00000 - 0xc0000000 =C2=A0 ( =C2=
=A0 2 MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0=
 =C2=A0 modules : 0xbf000000 - 0xbfe00000 =C2=A0 ( =C2=A014 MB)<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 .text =
: 0xc0008000 - 0xc08b0034 =C2=A0 (8865 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 .init : 0xc08b1000 - 0xc08f=
2000 =C2=A0 ( 260 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00=
0000] =C2=A0 =C2=A0 =C2=A0 .data : 0xc08f2000 - 0xc09407f0 =C2=A0 ( 314 kB)=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0.bss : 0xc09407f0 - 0xc0982d58 =C2=A0 ( 266 kB)<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-=
3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.000000] Preemptible hierarchical RCU implementation.<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0Build-time adjust=
ment of leaf fanout to 32.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.000000] NR_IRQS:16 nr_irqs:16 16<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with=
 128 interrupts<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =
OMAP clockevent source: timer2 at 24000000 Hz<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A00.000015] sched_clock: 32 bits at 24MHz, resolution 41n=
s, wraps every 89478484971ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.000036] clocksource: timer1: mask: 0xffffffff max_cycles: 0xffffffff, =
max_idle_ns: 79635851949 ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.000047] OMAP clocksource: timer1 at 24000000 Hz<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A00.000222] clocksource_probe: no matching clockso=
urces found<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000415] Cons=
ole: colour dummy device 80x30<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.000442] WARNING: Your &#39;console=3DttyO0&#39; has been replaced b=
y &#39;ttyS0&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000448=
] This ensures that you still see kernel messages. Please<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000454] update your kernel commandline.<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000473] Calibrating delay=
 loop... 795.44 BogoMIPS (lpj=3D3977216)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ =C2=A0 =C2=A00.089064] pid_max: default: 32768 minimum: 301<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.089193] Mount-cache hash table entrie=
s: 1024 (order: 0, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.089205] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 b=
ytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.089932] Initializi=
ng cgroup subsys io<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.0899=
64] Initializing cgroup subsys memory<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.090005] Initializing cgroup subsys devices<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.090021] Initializing cgroup subsys freeze=
r<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.090036] Initializing c=
group subsys perf_event<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.=
090048] Initializing cgroup subsys pids<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A00.090078] CPU: Testing write buffer coherency: ok<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.090499] Setting up static identity =
map for 0x80008200 - 0x80008258<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.092680] devtmpfs: initialized<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.105440] VFP support v0.3: implementor 41 architecture 3 part=
 30 variant c rev 3<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.1205=
29] omap_hwmod: debugss: _wait_target_disable failed<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A00.175584] clocksource: jiffies: mask: 0xffffffff=
 max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.179852] pinctrl core: initialized pinctr=
l subsystem<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.181216] NET:=
 Registered protocol family 16<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.183420] DMA: preallocated 256 KiB pool for atomic coherent allocati=
ons<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.209061] cpuidle: usi=
ng governor ladder<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.23904=
8] cpuidle: using governor menu<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.243661] OMAP GPIO hardware version 0.1<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A00.254360] hw-breakpoint: debug architecture 0x4 unsupp=
orted.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.297629] edma 4900=
0000.edma: TI EDMA DMA engine driver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.298606] reg-fixed-voltage fixedregulator@2: could not find p=
ctldev for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_g=
pio, deferring probe<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302=
364] omap_i2c 44e0b000.i2c: could not find pctldev for node /ocp/l4_wkup@44=
c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring probe<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302525] media: Linux media interface=
: v0.10<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302588] Linux vi=
deo capture interface: v2.00<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.302638] pps_core: LinuxPPS API ver. 1 registered<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; [ =C2=A0 =C2=A00.302646] pps_core: Software ver. 5.3.6 - Copyr=
ight 2005-2007 Rodolfo Giometti &lt;</span><a href=3D"mailto:giometti@linux=
.it" target=3D"_blank"><span lang=3D"EN-US">giometti@linux.it</span></a><sp=
an lang=3D"EN-US">&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.3=
02676] PTP clock support registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A00.302741] EDAC MC: Ver: 3.0.0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A00.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x4=
00<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.304332] Advanced Linu=
x Sound Architecture Driver Initialized.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ =C2=A0 =C2=A00.305512] clocksource: Switched to clocksource timer1<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.316775] NET: Registered protoc=
ol family 2<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317599] TCP =
established hash table entries: 2048 (order: 1, 8192 bytes)<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317636] TCP bind hash table entries: 20=
48 (order: 1, 8192 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A0=
0.317663] TCP: Hash tables configured (established 2048 bind 2048)<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317748] UDP hash table entries: =
256 (order: 0, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.317767] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317925] NET: Registered protoc=
ol family 1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318352] RPC:=
 Registered named UNIX socket transport module.<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; [ =C2=A0 =C2=A00.318366] RPC: Registered udp transport module.<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318372] RPC: Registered tcp t=
ransport module.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318379]=
 RPC: Registered tcp NFSv4.1 backchannel transport module.<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.319330] hw perfevents: enabled with armv=
7_cortex_a8 PMU driver, 5 counters available<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; [ =C2=A0 =C2=A00.321392] futex hash table entries: 256 (order: -1, 3072=
 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.329780] squashfs=
: version 4.0 (2009/01/31) Phillip Lougher<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; [ =C2=A0 =C2=A00.330717] NFS: Registering the id_resolver key type<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.330798] Key type id_resolver r=
egistered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.330807] Key ty=
pe id_legacy registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.=
330886] ntfs: driver 2.1.32 [Flags: R/O].<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 [ =C2=A0 =C2=A00.334673] Block layer SCSI generic (bsg) driver version 0.4=
 loaded (major 248)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.3347=
06] io scheduler noop registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.334719] io scheduler deadline registered<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; [ =C2=A0 =C2=A00.334877] io scheduler cfq registered (default)<br>=
&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.336555] pinctrl-single 44e1=
0800.pinmux: 142 pins at pa f9e10800 size 568<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A00.339415] backlight supply power not found, using dummy=
 regulator<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.402480] Seria=
l: 8250/16550 driver, 10 ports, IRQ sharing disabled<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A00.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09=
000 (irq =3D 158, base_baud =3D 3000000) is a 8250<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A01.017357] console [ttyS0] enabled<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.022206] 48022000.serial: ttyS1 at MMIO 0=
x48022000 (irq =3D 159, base_baud =3D 3000000) is a 8250<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; [ =C2=A0 =C2=A01.032273] [drm] Initialized drm 1.1.0 200608=
10<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.039564] [drm] Support=
s vblank timestamp caching Rev 2 (21.10.2013).<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A01.046349] [drm] No driver support for vblank timestamp=
 query.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.062121] Console:=
 switching to colour frame buffer device 60x34<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A01.070360] tilcdc 4830e000.lcdc: fb0: =C2=A0frame buffe=
r device<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.105531] [drm] I=
nitialized tilcdc 1.0.0 20121205 on minor 0<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; [ =C2=A0 =C2=A01.118644] loop: module loaded<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; [ =C2=A0 =C2=A01.124253] libphy: Fixed MDIO Bus: probed<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.185550] davinci_mdio 4a101000.mdio: =
davinci mdio revision 1.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A0=
1.191695] davinci_mdio 4a101000.mdio: detected phy mask fffffffe<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.198786] libphy: 4a101000.mdio: pro=
bed<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.202886] davinci_mdio=
 4a101000.mdio: phy[0]: device 4a101000.mdio:00, driver SMSC LAN8710/LAN872=
0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.212890] cpsw 4a100000.=
ethernet: Detected MACID =3D a0:f6:fd:4c:a6:ba<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A01.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID=
 =3D c4:ed:ba:88:2a:92<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.2=
29382] mousedev: PS/2 mouse device common for all mice<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; [ =C2=A0 =C2=A01.235845] i2c /dev entries driver<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.240508] cpuidle: enable-method prope=
rty &#39;ti,am3352&#39; found operations<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ =C2=A0 =C2=A01.248197] omap_hsmmc 48060000.mmc: Got CD GPIO<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.275713] pinctrl-single 44e10800.pinmu=
x: bad data for mux pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A01.282895] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.317159]=
 ledtrig-cpu: registered to indicate activity on CPUs<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; [ =C2=A0 =C2=A01.326069] NET: Registered protocol family 10<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.332092] sit: IPv6 over IPv=
4 tunneling driver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.33771=
5] NET: Registered protocol family 17<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A01.342510] Key type dns_resolver registered<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; [ =C2=A0 =C2=A01.347095] omap_voltage_late_init: Voltage dri=
ver support not added<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.40=
7145] tps65910-rtc tps65910-rtc: rtc core: registered tps65910-rtc as rtc0<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.415278] omap_i2c 44e0b00=
0.i2c: bus 0 rev0.11 at 400 kHz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.421665] omap_hsmmc 48060000.mmc: Got CD GPIO<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A01.426813] vmmc: supplied by vbat<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.466341] pinctrl-single 44e10800.pinmux:=
 bad data for mux pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A01.474737] pinctrl-single 44e10800.pinmux: no pins entries for pin=
mux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.513247] mm=
c0: host does not support reading read-only switch, assuming write-enable<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.523414] mmc0: new high sp=
eed SDHC card at address 0001<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.529635] mmcblk0: mmc0:0001 AS 3.72 GiB<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A01.535996] =C2=A0mmcblk0: p1 p2 p3<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; [ =C2=A0 =C2=A01.595932] vdd_mpu: supplied by vbat<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.602167] input: gpio_buttons@0 as /=
devices/platform/gpio_buttons@0/input/input0<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; [ =C2=A0 =C2=A01.618291] tps65910-rtc tps65910-rtc: setting system cloc=
k to 2019-02-01 20:07:49 UTC (1549051669)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 [ =C2=A0 =C2=A01.639394] lis3_reg: disabling<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A01.655732] ALSA device list:<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; [ =C2=A0 =C2=A01.658720] =C2=A0 No soundcards found.<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.678290] EXT4-fs (mmcblk0p3): couldn&#39=
;t mount as ext3 due to feature incompatibilities<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; [ =C2=A0 =C2=A01.696920] EXT4-fs (mmcblk0p3): couldn&#39;t mount a=
s ext2 due to feature incompatibilities<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A02.183999] EXT4-fs (mmcblk0p3): recovery complete<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.196864] EXT4-fs (mmcblk0p3): mounted=
 filesystem with ordered data mode. Opts: (null)<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; [ =C2=A0 =C2=A02.205084] VFS: Mounted root (ext4 filesystem) on dev=
ice 179:3.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.225670] devtm=
pfs: mounted<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.235781] Fre=
eing unused kernel memory: 260K (c08b1000 - c08f2000)<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; [ =C2=A0 =C2=A02.242162] This architecture does not have kerne=
l memory protection.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; INIT: version 2.88 b=
ooting<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting udev<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; [ =C2=A0 =C2=A03.090091] udevd[78]: starting version 3.2.5<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.106175] random: udevd: uni=
nitialized urandom read (16 bytes read, 26 bits of entropy available)<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.118667] random: udevd: uninit=
ialized urandom read (16 bytes read, 26 bits of entropy available)<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.128014] random: udevd: uninitial=
ized urandom read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.137335] random: udevd: uninitialize=
d urandom read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.218433] udevd[79]: starting eudev-3.2.=
5<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.325886] random: udevd:=
 uninitialized urandom read (16 bytes read, 29 bits of entropy available)<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.346155] random: udevd: un=
initialized urandom read (16 bytes read, 29 bits of entropy available)<br>&=
gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A04.820708] EXT4-fs (mmcblk0p3):=
 re-mounted. Opts: data=3Dordered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A05.548283] random: dd: uninitialized urandom read (512 bytes read,=
 43 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; INIT: Ente=
ring runlevel: 5<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Configuring network inte=
rfaces... [ =C2=A0 =C2=A05.820546] net eth0: initializing cpsw version 1.12=
 (0)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.825987] net eth0: i=
nitialized cpsw ale version 1.4<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A05.831150] net eth0: ALE Table size 1024<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A05.838581] net eth0: phy found : id is : 0x7c0f1<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.851838] IPv6: ADDRCONF(NETDEV_U=
P): eth0: link is not ready<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A09.896392] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow =
control rx/tx<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A09.904635] IP=
v6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; chown: unrecognized option &#39;--reference=3D/etc/resolv.conf=
&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; BusyBox v1.27.2 (2018-11-05 21:16:0=
9 UTC) multi-call binary.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; Usage: chown [-Rh]... USER[:[GRP]] FILE...<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; chmod: unrecognized option &#39;--reference=3D/etc/res=
olv.conf&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; BusyBox v1.27.2 (2018-11-05=
 21:16:09 UTC) multi-call binary.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; Usage: chmod [-R] MODE[,MODE]... FILE...<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting=
 system message bus: [ =C2=A0 14.887099] random: dbus-daemon: uninitialized=
 urandom read (12 bytes read, 62 bits of entropy available)<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 14.912318] random: dbus-daemon: uninitialized u=
random read (12 bytes read, 62 bits of entropy available)<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; dbus.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting OpenBSD S=
ecure Shell server: sshd<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 15.3939=
71] random: sshd: uninitialized urandom read (32 bytes read, 65 bits of ent=
ropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; Starting Xserver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting =
DHCP server:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; .<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; starting DNS forwarder and DHCP server: dnsmasq...<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; X.Org X Server 1.19.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; R=
elease Date: 2017-12-20<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; X Protocol Versio=
n 11, Revision 0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Build Operating System: =
Linux 4.15.0-38-generic x86_64<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Current Op=
erating System: Linux polycaptil-machine-am335x-evmsk<br>&gt;&gt; &gt; 4.4.=
19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Kernel command line: console=3DttyO0,115200 root=3D/d=
ev/mmcblk0p3 rw<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Build Date: 05 November 2=
018 =C2=A009:33:21PM<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; Current version of pixman: 0.34.0<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 Before reporting problems, check </span>=
<a href=3D"http://wiki.x.org" target=3D"_blank"><span lang=3D"EN-US">http:/=
/wiki.x.org</span></a><span lang=3D"EN-US"><br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 to make sure that you have the latest versio=
n.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Markers: (--) probed, (**) from config=
 file, (=3D=3D) default setting,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (++) from command line, (!!) notice, (II) informationa=
l,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 (WW) warni=
ng, (EE) error, (NI) not implemented, (??) unknown.<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; (=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Fri Fe=
b =C2=A01 20:08:02 2019<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; (=3D=3D) Using co=
nfig file: &quot;/etc/X11/xorg.conf&quot;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 (=3D=3D) Using system config directory &quot;/usr/share/X11/xorg.conf.d&qu=
ot;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; nl80211: &#39;nl80211&#39; generic netlink not foun=
d<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Failed to initialize driver &#39;nl8021=
1&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; wlan0: interface state UNINITIALIZ=
ED-&gt;DISABLED<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; wlan0: AP-DISABLED<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; hostapd_free_hapd_data: Interface wlan0 wasn&#3=
9;t started<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting ntpd: done<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; Starting syslogd/klogd: done<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; Starting crond: OK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; Poky (Yocto Project Reference Distro) 2.5<br>&gt;&=
gt; &gt; polycaptil-machine-am335x-evmsk /dev/ttyS0<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; polycaptil-machine-am335x-evms=
k login: D-BUS per-session daemon<br>&gt;&gt; &gt; address is:<br>&gt;&gt; =
&gt; unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e95535c=
54a7<br>&gt;&gt; &gt; 25<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Size 1024x768 no=
t found in available modes<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Error: No cali=
bratable devices found.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: Cant fi=
nd a keycode for keysym 269025056<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbo=
x: ignoring key shortcut XF86Calendar=3D!$contacts<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: Cant find a keycode f=
or keysym 2809<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: ignoring key sho=
rtcut telephone=3D!$dates<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; matchbox: Cant find a keycode for keysym 269025050<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; matchbox: ignoring key shortcut XF86Start=3D!m=
atchbox-remote -desktop<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; dbus-daemon[358]: Activating service name=3D&#39;org.a11y.=
atspi.Registry&#39;<br>&gt;&gt; &gt; requested by &#39;:1.0&#39; (uid=3D0 p=
id=3D354 comm=3D&quot;matchbox-terminal &quot;)<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; dbus-daemon[358]: Successfully activated service &#39;org.a11y.atspi=
.Registry&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; SpiRegistry daemon is runn=
ing with well-known name -<br>&gt;&gt; &gt; org.a11y.atspi.Registry<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 30.662697] random: nonblocking pool is =
initialized<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; Poky (Yocto Project Reference Distro) 2.5<br>&gt;&gt; &gt; polycaptil-=
machine-am335x-evmsk /dev/ttyS0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; Thank=E2=80=99s to take time to read my message.<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; N.Stanisavljevic<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; --<br>&gt;&gt; &gt; ______________________________________________=
_<br>&gt;&gt; &gt; yocto mailing list<br>&gt;&gt; &gt; </span><a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank"><span lang=3D"EN-US">yocto@y=
octoproject.org</span></a><span lang=3D"EN-US"><br>&gt;&gt; &gt; </span><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"><s=
pan lang=3D"EN-US">https://lists.yoctoproject.org/listinfo/yocto</span></a>=
<span lang=3D"EN-US"><br>&gt;&gt;</span><u></u><u></u></p></div></div></div=
></blockquote></div></div></div></blockquote></div></div></div></blockquote=
></div></div></div></blockquote></div>

--000000000000b5b79a0586b2e06b--
