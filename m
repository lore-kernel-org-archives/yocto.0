Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25496E009DA; Fri, 10 Mar 2017 07:21:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0297E00939
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 07:21:13 -0800 (PST)
Received: by mail-ua0-f173.google.com with SMTP id f54so111938054uaa.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 07:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7Q1dQdsApBTDB+08jFmQ8epAeRVycDDY5BVkMyZWjL4=;
	b=Psi7oDmFxHsdjwPL4becXwiZZpo0FV6s0YdtBKRfQaIiTZ54jl+UZ9aAZ1qyepbb4D
	ka7PC/bD4GxvqeS/z8XjraKPePQOzk8ntgE7GbgGd2cxFpCXobFqcJOcyeO3RA/Tu5ZL
	6NmDp7ILCPSSOQyzqy51UDSMoJab+Be6VARd2lbrv3ENhknw+kqK1X6Y5apopHmSNwx0
	5R0prlpZSlqPaQv1rSr2nOdmYfpmYiccPrtCxyJltPMNzsYRAF4OCaXG+nZwPgnyPpXG
	BTkzeO1iDJviv5ecOIr9tHoBF4wNHzMu595bwaPWK9K6voVBkVvgB897od7PQNqaye5u
	SK1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7Q1dQdsApBTDB+08jFmQ8epAeRVycDDY5BVkMyZWjL4=;
	b=K9jsKEVyruN/GAVtNwjQ7Sn3NsDIuZQab9lVJrhp3t9XnvyNu0xV5jvsHblbFLEeEt
	aLKJlfS3+J27h2wQk+lNOzZR8tjJCbNuVnqvBvrbO3jbam/bq7QE8pnGfVaRmmkqH/3M
	uzLXGEBK+5MTYuUUlY6lh1wCkFxlGvbKJ1VGC70aIygghkyDMqKBRF+Ilsjs/WwgglRW
	yV765cXkvx8dagCsTdLTvt8OEuWYWCkC2De14lAQO5R76JawoC3UN8jv2uU7R7CSzGku
	ffB6c1nRC3bIE3/MPu9S5Iep8n53IullAiIK8kP2JPhA5CtMpwNhqokKIbZGcaGh6LPT
	l6Ag==
X-Gm-Message-State: AMke39kB+lcWHQekOBySlcgfUVkQmBv28LR4diVwQJ5xr/pLMkx8VUGkvUVNXd2ZoWFxM7S3qvpb8SPIsfAooQ==
X-Received: by 10.31.204.197 with SMTP id c188mr9609593vkg.31.1489159272222;
	Fri, 10 Mar 2017 07:21:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.37 with HTTP; Fri, 10 Mar 2017 07:20:41 -0800 (PST)
In-Reply-To: <SG2PR0301MB20164B4F20AB1A46147436A5D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
	<20170308171742.GC2586@haswell>
	<SG2PR0301MB20164B4F20AB1A46147436A5D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 10 Mar 2017 07:20:41 -0800
Message-ID: <CAMKF1soATSdGaEDrL8EFG_9jzMB33PvBesVTCvZkTrw7s418nQ@mail.gmail.com>
To: Steve Plant <steove@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi2 Fails to boot into LXDE.
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
X-List-Received-Date: Fri, 10 Mar 2017 15:21:16 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 10, 2017 at 5:25 AM, Steve Plant <steove@hotmail.com> wrote:
> Hi Khem,
>
>
> I was finally able to SSH into the raspberry pi and found the Xorg.log file,
> exactly where you said it would be.
>
>
> Looking at it, for some reason Xorg cannot find the module evdev. I have
> looked for this but cannot find where it is supposed to be located.
>
>
> I did notice that there was a "libevdev" which had not been included into
> the build, so I added that by updating the Bitbake variables with:
>
>
> IMAGE_INSTALL_append libevdev packagegroup-core-x11-base
> packagegroup-lxde-base connman
>
>
> Rebuild the "rpi-basic-image" and copied the image to the SD card, booted up
> the rpi but no change. I have noticed that there is also a "python-evdev"
> package with is not included in the build, but that is part of the
> "meta-python" layer which I have not added. Do I need to add this???
>
>
>
> Here is the Xorg.log file
>
>
> [3087510.347]
> X.Org X Server 1.18.4
> Release Date: 2016-07-19
> [3087510.347] X Protocol Version 11, Revision 0
> [3087510.347] Build Operating System: Linux 3.16.0-4-amd64 x86_64
> [3087510.347] Current Operating System: Linux raspberrypi2 4.4.48 #1 SMP Sat
> Feb 25 00:03:23 AEST 2017 armv7l
> [3087510.347] Kernel command line: dma.dmachans=0x7f35
> bcm2708_fb.fbwidth=800 bcm2708_fb.fbheight=480 bcm2709.boardrev=0xa21041
> bcm2709.serial=0xf9e8fbc6 smsc95xx.macaddr=B8:27:EB:E8:FB:C6
> bcm2708_fb.fbswap=1 bcm2709.uart_clock=48000000 bcm2709.disk_led_gpio=47
> bcm2709.disk_led_active_low=0 vc_mem.mem_base=0x3dc00000
> vc_mem.mem_size=0x3f000000  dwc_otg.lpm_enable=0 console=ttyAMA0,115200
> root=/dev/mmcblk0p2 rootfstype=ext4 rootwait
> [3087510.347] Build Date: 07 March 2017  09:16:40PM
> [3087510.347]
> [3087510.347] Current version of pixman: 0.34.0
> [3087510.347]     Before reporting problems, check http://wiki.x.org
>     to make sure that you have the latest version.
> [3087510.347] Markers: (--) probed, (**) from config file, (==) default
> setting,
>     (++) from command line, (!!) notice, (II) informational,
>     (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
> [3087510.348] (==) Log file: "/var/log/Xorg.0.log", Time: Fri Mar 10
> 11:43:14 2017
> [3087510.359] (==) Using config file: "/etc/X11/xorg.conf"
> [3087510.359] (==) Using config directory: "/etc/X11/xorg.conf.d"
> [3087510.359] (==) Using system config directory
> "/usr/share/X11/xorg.conf.d"
> [3087510.372] (==) No Layout section.  Using the first Screen section.
> [3087510.372] (==) No screen section available. Using defaults.
> [3087510.372] (**) |-->Screen "Default Screen Section" (0)
> [3087510.372] (**) |   |-->Monitor "<default monitor>"
> [3087510.379] (==) No monitor specified for screen "Default Screen Section".
>     Using a default monitor configuration.
> [3087510.380] (==) Automatically adding devices
> [3087510.380] (==) Automatically enabling devices
> [3087510.380] (==) Automatically adding GPU devices
> [3087510.380] (==) Max clients allowed: 256, resource mask: 0x1fffff
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/misc/" does not
> exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/Type1/" does not
> exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not
> exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not
> exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (==) FontPath set to:
>
> [3087510.383] (==) ModulePath set to "/usr/lib/xorg/modules"
> [3087510.383] (II) The server relies on udev to provide the list of input
> devices.
>     If no devices become available, reconfigure udev or disable
> AutoAddDevices.
> [3087510.383] (II) Loader magic: 0x1c3b80
> [3087510.383] (II) Module ABI versions:
> [3087510.384]     X.Org ANSI C Emulation: 0.4
> [3087510.384]     X.Org Video Driver: 20.0
> [3087510.384]     X.Org XInput driver : 22.1
> [3087510.384]     X.Org Server Extension : 9.0
> [3087510.384] (II) no primary bus or device found
> [3087510.384] (II) LoadModule: "glx"
> [3087510.393] (WW) Warning, couldn't open module glx
> [3087510.393] (II) UnloadModule: "glx"
> [3087510.393] (II) Unloading glx
> [3087510.393] (EE) Failed to load module "glx" (module does not exist, 0)
> [3087510.394] (==) Matched modesetting as autoconfigured driver 0
> [3087510.394] (==) Matched fbdev as autoconfigured driver 1
> [3087510.394] (==) Assigned the driver to the xf86ConfigLayout
> [3087510.394] (II) LoadModule: "modesetting"
> [3087510.394] (WW) Warning, couldn't open module modesetting
> [3087510.394] (II) UnloadModule: "modesetting"
> [3087510.394] (II) Unloading modesetting
> [3087510.394] (EE) Failed to load module "modesetting" (module does not
> exist, 0)
> [3087510.394] (II) LoadModule: "fbdev"
> [3087510.395] (II) Loading /usr/lib/xorg/modules/drivers/fbdev_drv.so
> [3087510.400] (II) Module fbdev: vendor="X.Org Foundation"
> [3087510.400]     compiled for 1.18.4, module version = 0.4.4
> [3087510.400]     Module class: X.Org Video Driver
> [3087510.400]     ABI class: X.Org Video Driver, version 20.0
> [3087510.400] (II) FBDEV: driver for framebuffer: fbdev
> [3087510.400] (--) using VT number 1
>
> [3087510.408] (WW) Falling back to old probe method for fbdev
> [3087510.408] (II) Loading sub module "fbdevhw"
> [3087510.408] (II) LoadModule: "fbdevhw"
> [3087510.409] (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
> [3087510.420] (II) Module fbdevhw: vendor="X.Org Foundation"
> [3087510.420]     compiled for 1.18.4, module version = 0.0.2
> [3087510.420]     ABI class: X.Org Video Driver, version 20.0
> [3087510.421] (II) FBDEV(0): using default device
> [3087510.421] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card
> support
> [3087510.421] (II) FBDEV(0): Creating default Display subsection in Screen
> section
>     "Default Screen Section" for depth/fbbpp 24/32
> [3087510.421] (==) FBDEV(0): Depth 24, (==) framebuffer bpp 32
> [3087510.421] (==) FBDEV(0): RGB weight 888
> [3087510.421] (==) FBDEV(0): Default visual is TrueColor
> [3087510.421] (==) FBDEV(0): Using gamma correction (1.0, 1.0, 1.0)
> [3087510.421] (II) FBDEV(0): hardware: BCM2708 FB (video memory: 1500kB)
> [3087510.421] (II) FBDEV(0): checking modes against framebuffer device...
> [3087510.421] (II) FBDEV(0): checking modes against monitor...
> [3087510.421] (--) FBDEV(0): Virtual size is 800x480 (pitch 800)
> [3087510.421] (**) FBDEV(0):  Built-in mode "current"
> [3087510.421] (==) FBDEV(0): DPI set to (96, 96)
> [3087510.422] (II) Loading sub module "fb"
> [3087510.422] (II) LoadModule: "fb"
> [3087510.422] (II) Loading /usr/lib/xorg/modules/libfb.so
> [3087510.459] (II) Module fb: vendor="X.Org Foundation"
> [3087510.459]     compiled for 1.18.4, module version = 1.0.0
> [3087510.459]     ABI class: X.Org ANSI C Emulation, version 0.4
> [3087510.459] (**) FBDEV(0): using shadow framebuffer
> [3087510.459] (II) Loading sub module "shadow"
> [3087510.459] (II) LoadModule: "shadow"
> [3087510.459] (II) Loading /usr/lib/xorg/modules/libshadow.so
> [3087510.482] (II) Module shadow: vendor="X.Org Foundation"
> [3087510.482]     compiled for 1.18.4, module version = 1.1.0
> [3087510.482]     ABI class: X.Org ANSI C Emulation, version 0.4
> [3087510.482] (==) Depth 24 pixmap format is 32 bpp
> [3087510.505] (==) FBDEV(0): Backing store enabled
> [3087510.506] (==) FBDEV(0): DPMS enabled
> [3087510.507] (==) RandR enabled
> [3087510.831] (II) config/udev: Adding input device SIGMACH1P USB Keykoard
> (/dev/input/event1)
> [3087510.831] (**) SIGMACH1P USB Keykoard: Applying InputClass "evdev
> keyboard catchall"
> [3087510.831] (II) LoadModule: "evdev"
> [3087510.832] (WW) Warning, couldn't open module evdev
> [3087510.832] (II) UnloadModule: "evdev"
> [3087510.832] (II) Unloading evdev
> [3087510.832] (EE) Failed to load module "evdev" (module does not exist, 0)
> [3087510.832] (EE) No input driver matching `evdev'
> [3087510.835] (II) config/udev: Adding input device SIGMACH1P USB Keykoard
> (/dev/input/event2)
> [3087510.835] (**) SIGMACH1P USB Keykoard: Applying InputClass "evdev
> keyboard catchall"
> [3087510.835] (II) LoadModule: "evdev"
> [3087510.835] (WW) Warning, couldn't open module evdev
> [3087510.836] (II) UnloadModule: "evdev"
> [3087510.836] (II) Unloading evdev
> [3087510.836] (EE) Failed to load module "evdev" (module does not exist, 0)
> [3087510.836] (EE) No input driver matching `evdev'
> [3087510.837] (II) config/udev: Adding input device FT5406 memory based
> driver (/dev/input/event0)
> [3087510.837] (**) FT5406 memory based driver: Applying InputClass "evdev
> touchscreen catchall"
> [3087510.837] (II) LoadModule: "evdev"
> [3087510.838] (WW) Warning, couldn't open module evdev
> [3087510.838] (II) UnloadModule: "evdev"
> [3087510.838] (II) Unloading evdev
> [3087510.838] (EE) Failed to load module "evdev" (module does not exist, 0)
> [3087510.838] (EE) No input driver matching `evdev'
> [3087510.839] (II) config/udev: Adding input device FT5406 memory based
> driver (/dev/input/mouse0)
> [3087510.839] (II) No input driver specified, ignoring this device.
> [3087510.839] (II) This device may have been added with another device file.
>
>


you have xorg modules missing. evdev, glx and modesetting are reported
missing. Do you have x11 and OpenGL enabled in distro features ?


> Regards, Steve.
>
>
> ________________________________
>
>

