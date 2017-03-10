Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B476EE009C9; Fri, 10 Mar 2017 06:07:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38B4EE009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:07:44 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id DAB6068A01D; Fri, 10 Mar 2017 14:07:43 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id C6ACB68A019;
	Fri, 10 Mar 2017 14:07:42 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4AF406740364;
	Fri, 10 Mar 2017 15:07:41 +0100 (CET)
To: yocto@yoctoproject.org
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
	<20170308171742.GC2586@haswell>
	<SG2PR0301MB20164B4F20AB1A46147436A5D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <ac326133-a849-a36b-e7d8-0245add502a6@mlbassoc.com>
Date: Fri, 10 Mar 2017 15:07:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <SG2PR0301MB20164B4F20AB1A46147436A5D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
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
X-List-Received-Date: Fri, 10 Mar 2017 14:07:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-10 14:25, Steve Plant wrote:
> Hi Khem,
>
>
> I was finally able to SSH into the raspberry pi and found the Xorg.log file, exactly where you said it would be.
>
>
> Looking at it, for some reason Xorg cannot find the module evdev. I have looked for this but cannot find where it is
> supposed to be located.

This probably isn't the final problem you have - missing this module will keep your
keyboard+mouse from working, but you should get more than a black screen.

Have you thought to try master instead of morty?  The X server is working quite well
on master now - there was a problem with xf86-input-libevdev which has now been sorted.

>
>
> I did notice that there was a "libevdev" which had not been included into the build, so I added that by updating the
> Bitbake variables with:
>
>
> IMAGE_INSTALL_append
>     libevdev packagegroup-core-x11-base packagegroup-lxde-base connman
>
>
> Rebuild the "rpi-basic-image" and copied the image to the SD card, booted up the rpi but no change. I have noticed that
> there is also a "python-evdev" package with is not included in the build, but that is part of the "meta-python" layer
> which I have not added. Do I need to add this???
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
> [3087510.347] Current Operating System: Linux raspberrypi2 4.4.48 #1 SMP Sat Feb 25 00:03:23 AEST 2017 armv7l
> [3087510.347] Kernel command line: dma.dmachans=0x7f35 bcm2708_fb.fbwidth=800 bcm2708_fb.fbheight=480
> bcm2709.boardrev=0xa21041 bcm2709.serial=0xf9e8fbc6 smsc95xx.macaddr=B8:27:EB:E8:FB:C6 bcm2708_fb.fbswap=1
> bcm2709.uart_clock=48000000 bcm2709.disk_led_gpio=47 bcm2709.disk_led_active_low=0 vc_mem.mem_base=0x3dc00000
> vc_mem.mem_size=0x3f000000  dwc_otg.lpm_enable=0 console=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait
> [3087510.347] Build Date: 07 March 2017  09:16:40PM
> [3087510.347]
> [3087510.347] Current version of pixman: 0.34.0
> [3087510.347]     Before reporting problems, check http://wiki.x.org
>     to make sure that you have the latest version.
> [3087510.347] Markers: (--) probed, (**) from config file, (==) default setting,
>     (++) from command line, (!!) notice, (II) informational,
>     (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
> [3087510.348] (==) Log file: "/var/log/Xorg.0.log", Time: Fri Mar 10 11:43:14 2017
> [3087510.359] (==) Using config file: "/etc/X11/xorg.conf"
> [3087510.359] (==) Using config directory: "/etc/X11/xorg.conf.d"
> [3087510.359] (==) Using system config directory "/usr/share/X11/xorg.conf.d"
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
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/misc/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/Type1/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not exist.
> [3087510.383]     Entry deleted from font path.
> [3087510.383] (==) FontPath set to:
>
> [3087510.383] (==) ModulePath set to "/usr/lib/xorg/modules"
> [3087510.383] (II) The server relies on udev to provide the list of input devices.
>     If no devices become available, reconfigure udev or disable AutoAddDevices.
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
> [3087510.394] (EE) Failed to load module "modesetting" (module does not exist, 0)
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
> [3087510.421] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card support
> [3087510.421] (II) FBDEV(0): Creating default Display subsection in Screen section
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
> [3087510.831] (II) config/udev: Adding input device SIGMACH1P USB Keykoard (/dev/input/event1)
> [3087510.831] (**) SIGMACH1P USB Keykoard: Applying InputClass "evdev keyboard catchall"
> [3087510.831] (II) LoadModule: "evdev"
> [3087510.832] (WW) Warning, couldn't open module evdev
> [3087510.832] (II) UnloadModule: "evdev"
> [3087510.832] (II) Unloading evdev
> [3087510.832] (EE) Failed to load module "evdev" (module does not exist, 0)
> [3087510.832] (EE) No input driver matching `evdev'
> [3087510.835] (II) config/udev: Adding input device SIGMACH1P USB Keykoard (/dev/input/event2)
> [3087510.835] (**) SIGMACH1P USB Keykoard: Applying InputClass "evdev keyboard catchall"
> [3087510.835] (II) LoadModule: "evdev"
> [3087510.835] (WW) Warning, couldn't open module evdev
> [3087510.836] (II) UnloadModule: "evdev"
> [3087510.836] (II) Unloading evdev
> [3087510.836] (EE) Failed to load module "evdev" (module does not exist, 0)
> [3087510.836] (EE) No input driver matching `evdev'
> [3087510.837] (II) config/udev: Adding input device FT5406 memory based driver (/dev/input/event0)
> [3087510.837] (**) FT5406 memory based driver: Applying InputClass "evdev touchscreen catchall"
> [3087510.837] (II) LoadModule: "evdev"
> [3087510.838] (WW) Warning, couldn't open module evdev
> [3087510.838] (II) UnloadModule: "evdev"
> [3087510.838] (II) Unloading evdev
> [3087510.838] (EE) Failed to load module "evdev" (module does not exist, 0)
> [3087510.838] (EE) No input driver matching `evdev'
> [3087510.839] (II) config/udev: Adding input device FT5406 memory based driver (/dev/input/mouse0)
> [3087510.839] (II) No input driver specified, ignoring this device.
> [3087510.839] (II) This device may have been added with another device file.
>
>
> Regards, Steve.
>
>
> ------------------------------------------------------------------------------------------------------------------------
>
>
>
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

