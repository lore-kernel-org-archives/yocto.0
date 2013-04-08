Return-Path: <aenbacka@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C139E014AD
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 02:51:01 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id bi5so3186834pad.17
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 02:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:x-mailer:thread-index
	:content-language;
	bh=WZHF4IXemowvEpsigEvbRmfze1BArtmwASk0TunKRwk=;
	b=EJsws+/6/ijeuHv6jjiMG/P8MUnOOxxvzqQxBmVY7F1OcvddHAOfP5c1aTO8W9BVv1
	OLrQfwx0TOtP7djIQhx2YYrITWPbKuhwzG6DFYt9y8RMrI9RNYAh/ydn8If2St4hKUd4
	dntMoN4jGPr4RUyHjjMr7lmlkjXuD1X6vTjoh9MXsMTKNHzadGaSkQ8aSAPTmJsxYmNU
	+1jCBo2cdL2h/SgxbFkMM2BMWZoojn6watxtFxe5G19KcDdxxPk85b+7QOc1qGCLnVK8
	6M4431lb59aMmrDvWniLXZMZOxpovfQWCGxqtehp+NVvgnkRxhYKuNIBa1hgv/vq1g2n
	uwAA==
X-Received: by 10.66.159.234 with SMTP id xf10mr31271456pab.203.1365414660746; 
	Mon, 08 Apr 2013 02:51:00 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id ak5sm18842532pac.4.2013.04.08.02.50.56
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 08 Apr 2013 02:50:59 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
In-Reply-To: <CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
Date: Mon, 8 Apr 2013 12:50:45 +0300
Message-ID: <009101ce343e$8db88560$a9299020$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH944JhdSdZ2SxfUz8SRR72F7dePwGwEU34mF80zAA=
Cc: yocto@yoctoproject.org
Subject: Re: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Mon, 08 Apr 2013 09:51:01 -0000
X-Groupsio-MsgNum: 12995
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0092_01CE3457.B325C880"
Content-Language: fi

------=_NextPart_000_0092_01CE3457.B325C880
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ross,

Thanks for your reply, very much appreciated. I am currently using Poky =
master. I have attached the complete Xorg.0.log; it does not contain any =
mentions of evdev, only mouse, which would imply that evdev does not get =
loaded of some reason.=20

//Andreas

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: 8. huhtikuuta 2013 12:18
To: Andreas Enbacka
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto =
(core-image-sato on emenlow)

On 8 April 2013 09:42, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I have experienced some problems with getting the USB mouse and=20
> keyboard detected in the default core-image-sato Yocto image, built=20
> for the Intel Emenlow machine (with emgd graphics). X launches=20
> successfully to the Sato desktop, but I get no response from the mouse =

> or keyboard. When I from terminal execute grep -i mouse=20
> /var/log/Xorg.0.log from terminal, I get the following output:

Attaching the entire X log instead of grepping for phrases that you =
think are relevant would be more useful - in this case the module that X =
should be using for USB input is "evdev", not "mouse".  Check that =
you've got the xorg evdev driver present and that the server is loading =
the module.  It's possible that the permissions are wrong on the input =
nodes in /dev/input.

Oh, and what version of Poky  / oe-core were you using - 1.3 or master?

Ross

------=_NextPart_000_0092_01CE3457.B325C880
Content-Type: application/octet-stream;
	name="Xorg.0.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="Xorg.0.log"

[3901747.965]=20
X.Org X Server 1.9.3
Release Date: 2010-12-13
[3901747.971] X Protocol Version 11, Revision 0
[3901747.974] Build Operating System: Linux 3.5.0-17-generic i686=20
[3901747.974] Current Operating System: Linux emenlow 3.4.28-yocto-standard=
 #1 SMP PREEMPT Mon Mar 4 05:30:53 EST 2013 i686
[3901747.975] Kernel command line: reboot=3Dpci initrd=3D/initrd LABEL=3Dbo=
ot root=3D/dev/ram0 video=3Dvesafb vga=3D0x318 vmalloc=3D256MB BOOT_IMAGE=
=3D/vmlinuz=20
[3901747.977] Build Date: 05 March 2013  07:44:54AM
[3901747.980] =20
[3901747.980] Current version of pixman: 0.29.2
[3901747.980] 	Before reporting problems, check http://wiki.x.org
	to make sure that you have the latest version.
[3901747.981] Markers: (--) probed, (**) from config file, (=3D=3D) default=
 setting,
	(++) from command line, (!!) notice, (II) informational,
	(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
[3901747.988] (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Mon Apr  8 07=
:33:00 2013
[3901747.993] (=3D=3D) Using config file: "/etc/X11/xorg.conf"
[3901747.995] (=3D=3D) Using system config directory "/usr/share/X11/xorg.c=
onf.d"
[3901748.003] (=3D=3D) ServerLayout "Default Layout"
[3901748.003] (**) |-->Screen "Screen0" (0)
[3901748.003] (**) |   |-->Monitor "<default monitor>"
[3901748.004] (**) |   |-->Device "IntelEMGD-0"
[3901748.004] (=3D=3D) No monitor specified for screen "Screen0".
	Using a default monitor configuration.
[3901748.004] (**) Option "DontZap" "0"
[3901748.004] (**) Option "AutoAddDevices" "False"
[3901748.009] (**) Not automatically adding devices
[3901748.009] (=3D=3D) Automatically enabling devices
[3901748.018] (WW) The directory "/usr/share/fonts/X11/misc/" does not exis=
t.
[3901748.018] 	Entry deleted from font path.
[3901748.018] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist=
.
[3901748.018] 	Entry deleted from font path.
[3901748.018] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist=
.
[3901748.018] 	Entry deleted from font path.
[3901748.018] (WW) The directory "/usr/share/fonts/X11/Type1/" does not exi=
st.
[3901748.018] 	Entry deleted from font path.
[3901748.019] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not ex=
ist.
[3901748.019] 	Entry deleted from font path.
[3901748.019] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not exi=
st.
[3901748.019] 	Entry deleted from font path.
[3901748.019] (=3D=3D) FontPath set to:
=09
[3901748.019] (=3D=3D) ModulePath set to "/usr/lib/xorg/modules"
[3901748.019] (=3D=3D) |-->Input Device "<default pointer>"
[3901748.019] (=3D=3D) |-->Input Device "<default keyboard>"
[3901748.019] (=3D=3D) The core pointer device wasn't specified explicitly =
in the layout.
	Using the default mouse configuration.
[3901748.019] (=3D=3D) The core keyboard device wasn't specified explicitly=
 in the layout.
	Using the default keyboard configuration.
[3901748.019] (II) Loader magic: 0x8212080
[3901748.019] (II) Module ABI versions:
[3901748.019] 	X.Org ANSI C Emulation: 0.4
[3901748.019] 	X.Org Video Driver: 8.0
[3901748.019] 	X.Org XInput driver : 11.0
[3901748.019] 	X.Org Server Extension : 4.0
[3901748.033] (--) PCI:*(0:0:2:0) 8086:8108:8100:8086 rev 7, Mem @ 0xfdf000=
00/524288, 0xd0000000/268435456, 0xfdf80000/262144, I/O @ 0x0000ff00/8
[3901748.039] (II) Open ACPI successful (/var/run/acpid.socket)
[3901748.039] (II) LoadModule: "extmod"
[3901748.060] (II) Loading /usr/lib/xorg/modules/extensions/libextmod.so
[3901748.073] (II) Module extmod: vendor=3D"X.Org Foundation"
[3901748.074] 	compiled for 1.9.3, module version =3D 1.0.0
[3901748.074] 	Module class: X.Org Server Extension
[3901748.074] 	ABI class: X.Org Server Extension, version 4.0
[3901748.074] (II) Loading extension MIT-SCREEN-SAVER
[3901748.074] (II) Loading extension XFree86-VidModeExtension
[3901748.074] (II) Loading extension XFree86-DGA
[3901748.074] (II) Loading extension DPMS
[3901748.074] (II) Loading extension XVideo
[3901748.074] (II) Loading extension XVideo-MotionCompensation
[3901748.074] (II) Loading extension X-Resource
[3901748.074] (II) LoadModule: "dbe"
[3901748.075] (II) Loading /usr/lib/xorg/modules/extensions/libdbe.so
[3901748.088] (II) Module dbe: vendor=3D"X.Org Foundation"
[3901748.088] 	compiled for 1.9.3, module version =3D 1.0.0
[3901748.088] 	Module class: X.Org Server Extension
[3901748.089] 	ABI class: X.Org Server Extension, version 4.0
[3901748.089] (II) Loading extension DOUBLE-BUFFER
[3901748.089] (II) LoadModule: "glx"
[3901748.089] (II) Loading /usr/lib/xorg/modules/extensions/libglx.so
[3901748.118] (II) Module glx: vendor=3D"X.Org Foundation"
[3901748.118] 	compiled for 1.9.3, module version =3D 1.0.0
[3901748.118] 	ABI class: X.Org Server Extension, version 4.0
[3901748.120] (=3D=3D) AIGLX enabled
[3901748.120] (II) Loading extension GLX
[3901748.121] (II) LoadModule: "dri"
[3901748.121] (II) Loading /usr/lib/xorg/modules/extensions/libdri.so
[3901748.137] (II) Module dri: vendor=3D"X.Org Foundation"
[3901748.138] 	compiled for 1.9.3, module version =3D 1.0.0
[3901748.138] 	ABI class: X.Org Server Extension, version 4.0
[3901748.138] (II) Loading extension XFree86-DRI
[3901748.138] (II) LoadModule: "dri2"
[3901748.138] (II) Loading /usr/lib/xorg/modules/extensions/libdri2.so
[3901748.146] (II) Module dri2: vendor=3D"X.Org Foundation"
[3901748.146] 	compiled for 1.9.3, module version =3D 1.2.0
[3901748.146] 	ABI class: X.Org Server Extension, version 4.0
[3901748.146] (II) Loading extension DRI2
[3901748.146] (II) LoadModule: "emgd"
[3901748.156] (II) Loading /usr/lib/xorg/modules/drivers/emgd_drv.so
[3901748.189] (II) Module emgd: vendor=3D"Intel(R) Corporation"
[3901748.189] 	compiled for 1.9.0, module version =3D 1.16.3228
[3901748.189] 	Module class: X.Org Video Driver
[3901748.190] 	ABI class: X.Org Video Driver, version 8.0
[3901748.190] (II) LoadModule: "mouse"
[3901748.191] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3901748.203] (II) Module mouse: vendor=3D"X.Org Foundation"
[3901748.203] 	compiled for 1.13.1, module version =3D 1.8.1
[3901748.203] 	Module class: X.Org XInput Driver
[3901748.203] 	ABI class: X.Org XInput driver, version 18.0
[3901748.203] (EE) module ABI major version (18) doesn't match the server's=
 version (11)
[3901748.204] (II) UnloadModule: "mouse"
[3901748.204] (II) Unloading /usr/lib/xorg/modules/input/mouse_drv.so
[3901748.204] (EE) Failed to load module "mouse" (module requirement mismat=
ch, 0)
[3901748.205] (II) LoadModule: "kbd"
[3901748.205] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so
[3901748.208] (II) Module kbd: vendor=3D"X.Org Foundation"
[3901748.208] 	compiled for 1.13.1, module version =3D 1.6.2
[3901748.208] 	Module class: X.Org XInput Driver
[3901748.209] 	ABI class: X.Org XInput driver, version 18.0
[3901748.209] (EE) module ABI major version (18) doesn't match the server's=
 version (11)
[3901748.209] (II) UnloadModule: "kbd"
[3901748.210] (II) Unloading /usr/lib/xorg/modules/input/kbd_drv.so
[3901748.210] (EE) Failed to load module "kbd" (module requirement mismatch=
, 0)
[3901748.210] (II) EMGD: Intel(R) Embedded Media and Graphics Driver versio=
n 1.16.3228 for:
	Intel US15W Class
[3901748.211] (--) using VT number 2

[3901748.217] (=3D=3D) EMGD(0): RGB weight 888
[3901748.217] (=3D=3D) EMGD(0): Default visual is TrueColor
[3901748.217] drmOpenDevice: node name is /dev/dri/card0
[3901748.218] drmOpenDevice: open result is -1, (No such device)
[3901748.218] drmOpenDevice: open result is -1, (No such device)
[3901748.218] drmOpenDevice: Open failed
[3901748.307] drmOpenByBusid: Searching for BusID PCI:00:00:00
[3901748.307] drmOpenDevice: node name is /dev/dri/card0
[3901748.307] drmOpenDevice: open result is 11, (OK)
[3901748.307] drmOpenByBusid: drmOpenMinor returns 11
[3901748.307] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901748.308] drmOpenDevice: node name is /dev/dri/card1
[3901748.308] drmOpenDevice: open result is -1, (No such device)
[3901748.308] drmOpenDevice: open result is -1, (No such device)
[3901748.308] drmOpenDevice: Open failed
[3901748.308] drmOpenByBusid: drmOpenMinor returns -19
[3901748.308] drmOpenDevice: node name is /dev/dri/card2
[3901748.308] drmOpenDevice: open result is -1, (No such device)
[3901748.309] drmOpenDevice: open result is -1, (No such device)
[3901748.309] drmOpenDevice: Open failed
[3901748.309] drmOpenByBusid: drmOpenMinor returns -19
[3901748.309] drmOpenDevice: node name is /dev/dri/card3
[3901748.309] drmOpenDevice: open result is -1, (No such device)
[3901748.309] drmOpenDevice: open result is -1, (No such device)
[3901748.309] drmOpenDevice: Open failed
[3901748.309] drmOpenByBusid: drmOpenMinor returns -19
[3901748.310] drmOpenDevice: node name is /dev/dri/card4
[3901748.310] drmOpenDevice: open result is -1, (No such device)
[3901748.310] drmOpenDevice: open result is -1, (No such device)
[3901748.310] drmOpenDevice: Open failed
[3901748.310] drmOpenByBusid: drmOpenMinor returns -19
[3901748.310] drmOpenDevice: node name is /dev/dri/card5
[3901748.310] drmOpenDevice: open result is -1, (No such device)
[3901748.311] drmOpenDevice: open result is -1, (No such device)
[3901748.311] drmOpenDevice: Open failed
[3901748.311] drmOpenByBusid: drmOpenMinor returns -19
[3901748.311] drmOpenDevice: node name is /dev/dri/card6
[3901748.311] drmOpenDevice: open result is -1, (No such device)
[3901748.311] drmOpenDevice: open result is -1, (No such device)
[3901748.311] drmOpenDevice: Open failed
[3901748.311] drmOpenByBusid: drmOpenMinor returns -19
[3901748.311] drmOpenDevice: node name is /dev/dri/card7
[3901748.312] drmOpenDevice: open result is -1, (No such device)
[3901748.312] drmOpenDevice: open result is -1, (No such device)
[3901748.312] drmOpenDevice: Open failed
[3901748.312] drmOpenByBusid: drmOpenMinor returns -19
[3901748.312] drmOpenDevice: node name is /dev/dri/card8
[3901748.312] drmOpenDevice: open result is -1, (No such device)
[3901748.314] drmOpenDevice: open result is -1, (No such device)
[3901748.315] drmOpenDevice: Open failed
[3901748.315] drmOpenByBusid: drmOpenMinor returns -19
[3901748.315] drmOpenDevice: node name is /dev/dri/card9
[3901748.315] drmOpenDevice: open result is -1, (No such device)
[3901748.315] drmOpenDevice: open result is -1, (No such device)
[3901748.315] drmOpenDevice: Open failed
[3901748.315] drmOpenByBusid: drmOpenMinor returns -19
[3901748.315] drmOpenDevice: node name is /dev/dri/card10
[3901748.315] drmOpenDevice: open result is -1, (No such device)
[3901748.316] drmOpenDevice: open result is -1, (No such device)
[3901748.316] drmOpenDevice: Open failed
[3901748.316] drmOpenByBusid: drmOpenMinor returns -19
[3901748.316] drmOpenDevice: node name is /dev/dri/card11
[3901748.316] drmOpenDevice: open result is -1, (No such device)
[3901748.316] drmOpenDevice: open result is -1, (No such device)
[3901748.316] drmOpenDevice: Open failed
[3901748.316] drmOpenByBusid: drmOpenMinor returns -19
[3901748.317] drmOpenDevice: node name is /dev/dri/card12
[3901748.317] drmOpenDevice: open result is -1, (No such device)
[3901748.317] drmOpenDevice: open result is -1, (No such device)
[3901748.317] drmOpenDevice: Open failed
[3901748.317] drmOpenByBusid: drmOpenMinor returns -19
[3901748.317] drmOpenDevice: node name is /dev/dri/card13
[3901748.317] drmOpenDevice: open result is -1, (No such device)
[3901748.318] drmOpenDevice: open result is -1, (No such device)
[3901748.318] drmOpenDevice: Open failed
[3901748.318] drmOpenByBusid: drmOpenMinor returns -19
[3901748.318] drmOpenDevice: node name is /dev/dri/card14
[3901748.318] drmOpenDevice: open result is -1, (No such device)
[3901748.318] drmOpenDevice: open result is -1, (No such device)
[3901748.318] drmOpenDevice: Open failed
[3901748.318] drmOpenByBusid: drmOpenMinor returns -19
[3901748.323] drmOpenDevice: node name is /dev/dri/card15
[3901748.323] drmOpenDevice: open result is -1, (No such device)
[3901748.323] drmOpenDevice: open result is -1, (No such device)
[3901748.323] drmOpenDevice: Open failed
[3901748.323] drmOpenByBusid: drmOpenMinor returns -19
[3901748.323] drmOpenDevice: node name is /dev/dri/card0
[3901748.323] drmOpenDevice: open result is 11, (OK)
[3901748.324] drmOpenDevice: node name is /dev/dri/card0
[3901748.324] drmOpenDevice: open result is 11, (OK)
[3901748.324] drmGetBusid returned ''
[3901748.324] (II) EMGD(0): Chipset: "Intel SCH US15 Chipset"
[3901748.324] (II) EMGD(0): Detected kernel module from EMGD build 3228
[3901748.324] (II) EMGD(0): Checking for new style options
[3901748.325] (II) EMGD(0): Processing version 7.0 options
[3901748.325] (II) EMGD(0): Using configuration 1
[3901748.325] (II) EMGD(0): Checking for US15 specific configuration.
[3901748.325] (II) EMGD(0): Checking for non-chipset specific configuration=
.
[3901748.325] (II) EMGD(0): Setting port_order to 40000
[3901748.325] (II) EMGD(0): Setting Tuning WA
[3901748.325] (II) EMGD(0): Option processing done!
[3901749.170] (II) EMGD(0): Valid Display Configurations:
[3901749.170] (II) EMGD(0):   DC: 0x00000041
[3901749.170] (II) EMGD(0):   DC: 0x00200042
[3901749.170] (II) EMGD(0):   DC: 0x00200048
[3901749.170] (II) EMGD(0):   DC: 0x00000021
[3901749.170] (II) EMGD(0):   DC: 0x00000000
[3901749.272] (II) EMGD(0): Using Display Configuration 0x00000041
[3901749.272] (=3D=3D) EMGD(0): Depth 24, (--) framebuffer bpp 32
[3901749.272] (=3D=3D) EMGD(0): Using gamma correction (1.0, 1.0, 1.0)
[3901749.275] (II) EMGD(0): 34 modes passed validation checks
[3901749.275] (--) EMGD(0): Virtual size is 800x480 (pitch 0)
[3901749.275] (**) EMGD(0): *Built-in mode "800x480": 33.2 MHz (scaled from=
 0.0 MHz), 31.5 kHz, 60.0 Hz
[3901749.275] (II) EMGD(0): Modeline "800x480"x60.0   33.23  800 863 991 10=
55  480 500 502 524 +vsync (31.5 kHz)
[3901749.275] (**) EMGD(0):  Built-in mode "1366x768": 74.1 MHz (scaled fro=
m 0.0 MHz), 44.5 kHz, 60.0 Hz
[3901749.275] (II) EMGD(0): Modeline "1366x768"x60.0   74.06  1366 1429 155=
7 1663  768 768 769 775 +hsync +vsync (44.5 kHz)
[3901749.276] (**) EMGD(0):  Built-in mode "1280x1024": 108.0 MHz (scaled f=
rom 0.0 MHz), 64.0 kHz, 60.0 Hz
[3901749.276] (II) EMGD(0): Modeline "1280x1024"x60.0  108.00  1280 1327 14=
39 1687  1024 1024 1027 1065 +hsync +vsync (64.0 kHz)
[3901749.276] (**) EMGD(0):  Built-in mode "1280x960": 108.0 MHz (scaled fr=
om 0.0 MHz), 60.0 kHz, 60.0 Hz
[3901749.276] (II) EMGD(0): Modeline "1280x960"x60.0  108.00  1280 1375 148=
7 1799  960 960 963 999 +hsync +vsync (60.0 kHz)
[3901749.276] (**) EMGD(0):  Built-in mode "1280x768": 103.0 MHz (scaled fr=
om 0.0 MHz), 60.2 kHz, 75.0 Hz
[3901749.276] (II) EMGD(0): Modeline "1280x768"x75.0  102.98  1280 1359 149=
5 1711  768 768 771 801 +vsync (60.2 kHz)
[3901749.276] (**) EMGD(0):  Built-in mode "1280x768": 80.1 MHz (scaled fro=
m 0.0 MHz), 47.7 kHz, 60.0 Hz
[3901749.276] (II) EMGD(0): Modeline "1280x768"x60.0   80.14  1280 1343 147=
9 1679  768 768 771 794 +vsync (47.7 kHz)
[3901749.276] (**) EMGD(0):  Built-in mode "1280x720": 110.0 MHz (scaled fr=
om 0.0 MHz), 64.3 kHz, 85.0 Hz
[3901749.276] (II) EMGD(0): Modeline "1280x720"x85.0  110.00  1280 1359 149=
5 1711  720 720 723 755 +vsync (64.3 kHz)
[3901749.277] (**) EMGD(0):  Built-in mode "1280x720": 96.0 MHz (scaled fro=
m 0.0 MHz), 56.6 kHz, 75.0 Hz
[3901749.277] (II) EMGD(0): Modeline "1280x720"x75.0   96.00  1280 1351 148=
7 1695  720 720 723 751 +vsync (56.6 kHz)
[3901749.277] (**) EMGD(0):  Built-in mode "1280x720": 74.5 MHz (scaled fro=
m 0.0 MHz), 44.8 kHz, 60.0 Hz
[3901749.277] (II) EMGD(0): Modeline "1280x720"x60.0   74.48  1280 1335 147=
1 1663  720 720 723 745 +vsync (44.8 kHz)
[3901749.277] (**) EMGD(0):  Built-in mode "1152x864": 108.0 MHz (scaled fr=
om 0.0 MHz), 67.5 kHz, 75.0 Hz
[3901749.277] (II) EMGD(0): Modeline "1152x864"x75.0  108.00  1152 1215 134=
3 1599  864 864 867 899 +hsync +vsync (67.5 kHz)
[3901749.280] (**) EMGD(0):  Built-in mode "1152x864": 100.0 MHz (scaled fr=
om 0.0 MHz), 65.1 kHz, 72.0 Hz
[3901749.280] (II) EMGD(0): Modeline "1152x864"x72.0  100.00  1152 1223 134=
3 1535  864 864 867 900 +vsync (65.1 kHz)
[3901749.280] (**) EMGD(0):  Built-in mode "1152x864": 97.0 MHz (scaled fro=
m 0.0 MHz), 63.2 kHz, 70.0 Hz
[3901749.280] (II) EMGD(0): Modeline "1152x864"x70.0   97.00  1152 1223 134=
3 1535  864 864 867 899 +vsync (63.2 kHz)
[3901749.281] (**) EMGD(0):  Built-in mode "1152x864": 81.6 MHz (scaled fro=
m 0.0 MHz), 53.7 kHz, 60.0 Hz
[3901749.281] (II) EMGD(0): Modeline "1152x864"x60.0   81.62  1152 1215 133=
5 1519  864 864 867 894 +vsync (53.7 kHz)
[3901749.281] (**) EMGD(0):  Built-in mode "1024x768": 94.5 MHz (scaled fro=
m 0.0 MHz), 68.7 kHz, 85.0 Hz
[3901749.281] (II) EMGD(0): Modeline "1024x768"x85.0   94.50  1024 1071 116=
7 1375  768 768 771 807 +hsync +vsync (68.7 kHz)
[3901749.281] (**) EMGD(0):  Built-in mode "1024x768": 78.8 MHz (scaled fro=
m 0.0 MHz), 60.1 kHz, 75.0 Hz
[3901749.281] (II) EMGD(0): Modeline "1024x768"x75.0   78.75  1024 1039 113=
5 1311  768 768 771 799 +hsync +vsync (60.1 kHz)
[3901749.281] (**) EMGD(0):  Built-in mode "1024x768": 75.0 MHz (scaled fro=
m 0.0 MHz), 56.5 kHz, 70.0 Hz
[3901749.281] (II) EMGD(0): Modeline "1024x768"x70.0   75.00  1024 1047 118=
3 1327  768 770 776 805 (56.5 kHz)
[3901749.281] (**) EMGD(0):  Built-in mode "1024x768": 65.0 MHz (scaled fro=
m 0.0 MHz), 48.4 kHz, 60.0 Hz
[3901749.282] (II) EMGD(0): Modeline "1024x768"x60.0   65.00  1024 1047 118=
3 1343  768 770 776 805 (48.4 kHz)
[3901749.282] (**) EMGD(0):  Built-in mode "960x540": 40.8 MHz (scaled from=
 0.0 MHz), 33.6 kHz, 60.0 Hz
[3901749.282] (II) EMGD(0): Modeline "960x540"x60.0   40.78  960 991 1087 1=
215  540 540 543 558 +vsync (33.6 kHz)
[3901749.282] (**) EMGD(0):  Built-in mode "800x600": 84.0 MHz (scaled from=
 0.0 MHz), 77.2 kHz, 120.0 Hz
[3901749.282] (II) EMGD(0): Modeline "800x600"x120.0   83.95  800 855 943 1=
087  600 600 603 642 +vsync (77.2 kHz)
[3901749.282] (**) EMGD(0):  Built-in mode "800x600": 68.2 MHz (scaled from=
 0.0 MHz), 63.7 kHz, 100.0 Hz
[3901749.282] (II) EMGD(0): Modeline "800x600"x100.0   68.18  800 847 935 1=
071  600 600 603 635 +vsync (63.7 kHz)
[3901749.282] (**) EMGD(0):  Built-in mode "800x600": 56.2 MHz (scaled from=
 0.0 MHz), 53.7 kHz, 85.0 Hz
[3901749.282] (II) EMGD(0): Modeline "800x600"x85.0   56.25  800 831 895 10=
47  600 600 603 630 +hsync +vsync (53.7 kHz)
[3901749.299] (**) EMGD(0):  Built-in mode "800x600": 49.5 MHz (scaled from=
 0.0 MHz), 46.9 kHz, 75.0 Hz
[3901749.299] (II) EMGD(0): Modeline "800x600"x75.0   49.50  800 815 895 10=
55  600 600 603 624 +hsync +vsync (46.9 kHz)
[3901749.299] (**) EMGD(0):  Built-in mode "800x600": 50.0 MHz (scaled from=
 0.0 MHz), 48.1 kHz, 72.0 Hz
[3901749.299] (II) EMGD(0): Modeline "800x600"x72.0   50.00  800 855 975 10=
39  600 636 642 665 +hsync +vsync (48.1 kHz)
[3901749.299] (**) EMGD(0):  Built-in mode "800x600": 45.5 MHz (scaled from=
 0.0 MHz), 43.8 kHz, 70.0 Hz
[3901749.299] (II) EMGD(0): Modeline "800x600"x70.0   45.50  800 839 919 10=
39  600 600 603 624 +vsync (43.8 kHz)
[3901749.299] (**) EMGD(0):  Built-in mode "800x600": 40.0 MHz (scaled from=
 0.0 MHz), 37.9 kHz, 60.0 Hz
[3901749.299] (II) EMGD(0): Modeline "800x600"x60.0   40.00  800 839 967 10=
55  600 600 604 627 +hsync +vsync (37.9 kHz)
[3901749.299] (**) EMGD(0):  Built-in mode "720x576": 27.5 MHz (scaled from=
 0.0 MHz), 31.8 kHz, 50.0 Hz
[3901749.300] (II) EMGD(0): Modeline "720x576"x50.0   27.50  720 732 795 86=
4  576 581 587 625 +vsync (31.8 kHz)
[3901749.300] (**) EMGD(0):  Built-in mode "720x480": 27.0 MHz (scaled from=
 0.0 MHz), 31.5 kHz, 60.0 Hz
[3901749.300] (II) EMGD(0): Modeline "720x480"x60.0   27.00  720 735 797 85=
7  480 488 494 524 +vsync (31.5 kHz)
[3901749.300] (**) EMGD(0):  Built-in mode "640x480": 52.4 MHz (scaled from=
 0.0 MHz), 61.9 kHz, 120.0 Hz
[3901749.300] (II) EMGD(0): Modeline "640x480"x120.0   52.41  640 679 743 8=
47  480 480 483 514 +vsync (61.9 kHz)
[3901749.300] (**) EMGD(0):  Built-in mode "640x480": 43.2 MHz (scaled from=
 0.0 MHz), 51.0 kHz, 100.0 Hz
[3901749.300] (II) EMGD(0): Modeline "640x480"x100.0   43.16  640 679 743 8=
47  480 480 483 508 +vsync (51.0 kHz)
[3901749.300] (**) EMGD(0):  Built-in mode "640x480": 36.0 MHz (scaled from=
 0.0 MHz), 43.3 kHz, 85.0 Hz
[3901749.300] (II) EMGD(0): Modeline "640x480"x85.0   36.00  640 695 751 83=
1  480 480 483 508 (43.3 kHz)
[3901749.329] (**) EMGD(0):  Built-in mode "640x480": 31.5 MHz (scaled from=
 0.0 MHz), 37.5 kHz, 75.0 Hz
[3901749.329] (II) EMGD(0): Modeline "640x480"x75.0   31.50  640 655 719 83=
9  480 480 483 499 (37.5 kHz)
[3901749.329] (**) EMGD(0):  Built-in mode "640x480": 31.5 MHz (scaled from=
 0.0 MHz), 37.9 kHz, 72.0 Hz
[3901749.329] (II) EMGD(0): Modeline "640x480"x72.0   31.50  640 663 703 83=
1  480 488 491 519 (37.9 kHz)
[3901749.329] (**) EMGD(0):  Built-in mode "640x480": 28.6 MHz (scaled from=
 0.0 MHz), 35.0 kHz, 70.0 Hz
[3901749.329] (II) EMGD(0): Modeline "640x480"x70.0   28.56  640 663 727 81=
5  480 480 483 499 +vsync (35.0 kHz)
[3901749.329] (**) EMGD(0):  Built-in mode "640x480": 25.2 MHz (scaled from=
 0.0 MHz), 31.5 kHz, 60.0 Hz
[3901749.329] (II) EMGD(0): Modeline "640x480"x60.0   25.18  640 655 751 79=
9  480 489 491 524 (31.5 kHz)
[3901749.347] (=3D=3D) EMGD(0): DPI set to (96, 96)
[3901749.347] (II) Loading sub module "fb"
[3901749.347] (II) LoadModule: "fb"
[3901749.364] (II) Loading /usr/lib/xorg/modules/libfb.so
[3901749.367] (II) Module fb: vendor=3D"X.Org Foundation"
[3901749.367] 	compiled for 1.9.3, module version =3D 1.0.0
[3901749.367] 	ABI class: X.Org ANSI C Emulation, version 0.4
[3901749.367] (II) Loading sub module "ramdac"
[3901749.367] (II) LoadModule: "ramdac"
[3901749.367] (II) Module "ramdac" already built-in
[3901749.408] (II) EMGD(0): General Driver Configuration Options
[3901749.408] (II) EMGD(0):   PCF Version:            7.00
[3901749.408] (II) EMGD(0):   Configuration ID:       1
[3901749.409] (II) EMGD(0): Primary Display Configuration Options
[3901749.409] (II) EMGD(0):   VideoRam (Pixmap Cache): 32768
[3901749.409] (II) EMGD(0):   PORT AND DISPLAY OPTIONS
[3901749.409] (II) EMGD(0):     Port Order:           40000
[3901749.409] (II) EMGD(0):     Display Config:       Single
[3901749.409] (II) EMGD(0):     Display Detect:       On
[3901749.409] (II) EMGD(0):     FB Blend Overlay:     Off
[3901749.409] (II) EMGD(0):     Gang DVO:             Off
[3901749.409] (II) EMGD(0):     Refresh Rate:         0
[3901749.409] (II) EMGD(0):     Clone Width:          0
[3901749.409] (II) EMGD(0):     Clone Height:         0
[3901749.409] (II) EMGD(0):     Clone Refresh:        0
[3901749.409] (II) EMGD(0):   FRAMEBUFFER OPTIONS
[3901749.409] (II) EMGD(0):     Shadow FB:            Off
[3901749.413] (II) EMGD(0):     Tear FB:              On
[3901749.416] (II) EMGD(0):     Resize:               Off
[3901749.417] (II) EMGD(0):    GL TEXTURE STREAM OUTPUT:		Off
[3901749.417] (II) EMGD(0):   FRAMEBUFFER ORIENTATION OPTIONS
[3901749.417] (II) EMGD(0):     Rotation:             0 degrees
[3901749.417] (II) EMGD(0):     Flip:                 Off
[3901749.417] (II) EMGD(0):   HARDWARE ACCELERATION OPTIONS
[3901749.417] (II) EMGD(0):     HW 2D Accel:          On
[3901749.417] (II) EMGD(0):     HW Cursor:            On
[3901749.417] (II) EMGD(0):   XVIDEO OPTIONS
[3901749.417] (II) EMGD(0):     XVideo:               On
[3901749.417] (II) EMGD(0):     XVideoBlend:          On
[3901749.417] (II) EMGD(0):     XVideoMC:             Off
[3901749.417] (II) EMGD(0):     XVideoKey:            0xff00ff00
[3901749.417] (II) EMGD(0):     Overlay Gamma Red:    0x100
[3901749.417] (II) EMGD(0):     Overlay Gamma Green:  0x100
[3901749.417] (II) EMGD(0):     Overlay Gamma Blue:   0x100
[3901749.417] (II) EMGD(0):     Overlay Brightness:   0x8000
[3901749.418] (II) EMGD(0):     Overlay Contrast:     0x8000
[3901749.418] (II) EMGD(0):     Overlay Saturation:   0x8000
[3901749.418] (II) EMGD(0):     DRI:                  Off
[3901749.418] (II) EMGD(0):     DRI2:                 On
[3901749.418] (II) EMGD(0):     EDID:                 On
[3901749.418] (II) EMGD(0):   QUICKBOOT OPTIONS
[3901749.418] (II) EMGD(0):     QuickBoot:            1
[3901749.418] (II) EMGD(0):     Seamless:             Off
[3901749.418] (II) EMGD(0):     Video Input:          0
[3901749.418] (II) EMGD(0):     Splash Screen:        Off
[3901749.418] (II) EMGD(0):     Freeze FB:        Off
[3901749.418] (II) EMGD(0):    INTERRUPT OPTIONS
[3901749.418] (II) EMGD(0):      Polling:             Off
[3901749.418] (II) EMGD(0):   GLOBAL PER PORT OPTIONS
[3901749.418] (II) EMGD(0):   Port 2            (null)
[3901749.432] (II) EMGD(0):      Multi-DVO:      Off
[3901749.432] (II) EMGD(0):      Rotation:       0 degrees
[3901749.432] (II) EMGD(0):      Flip:           Off
[3901749.432] (II) EMGD(0):      Centering:      Off
[3901749.432] (II) EMGD(0):      RenderScale:    Off
[3901749.432] (II) EMGD(0):      EDID:           Off
[3901749.432] (II) EMGD(0):      EDID Avail:     0x5
[3901749.432] (II) EMGD(0):      EDID Not Avail: 0x5
[3901749.432] (II) EMGD(0):      PANEL INFORMATION
[3901749.432] (II) EMGD(0):         FP width:     0
[3901749.432] (II) EMGD(0):         FP height:    0
[3901749.433] (II) EMGD(0):         BKLT Enable:  0
[3901749.433] (II) EMGD(0):         BKLT Method:  0
[3901749.433] (II) EMGD(0):         BKLT T1:      0
[3901749.433] (II) EMGD(0):         BKLT T2:      0
[3901749.433] (II) EMGD(0):         BKLT T3:      0
[3901749.433] (II) EMGD(0):         BKLT T4:      0
[3901749.433] (II) EMGD(0):         BKLT T5:      0
[3901749.433] (II) EMGD(0):         GPIO Pin VDD: 0
[3901749.433] (II) EMGD(0):         GPIO Pin VEE: 0
[3901749.433] (II) EMGD(0):         GPIO Pin BKLT:0
[3901749.433] (II) EMGD(0):         DVO i2c pin:  0
[3901749.433] (II) EMGD(0):         DVO i2c DAB:  0
[3901749.433] (II) EMGD(0):         DVO i2c speed:0
[3901749.433] (II) EMGD(0):         DVO ddc pin:  0
[3901749.433] (II) EMGD(0):         DVO ddc speed:0
[3901749.433] (II) EMGD(0):      Number DTD's:   0
[3901749.433] (II) EMGD(0):      Number Attr's:  0
[3901749.434] (II) EMGD(0):   Port 4            lvds
[3901749.434] (II) EMGD(0):      Multi-DVO:      Off
[3901749.434] (II) EMGD(0):      Rotation:       0 degrees
[3901749.434] (II) EMGD(0):      Flip:           Off
[3901749.434] (II) EMGD(0):      Centering:      Off
[3901749.434] (II) EMGD(0):      RenderScale:    Off
[3901749.434] (II) EMGD(0):      EDID:           Off
[3901749.434] (II) EMGD(0):      EDID Avail:     0x3
[3901749.434] (II) EMGD(0):      EDID Not Avail: 0x1
[3901749.434] (II) EMGD(0):      PANEL INFORMATION
[3901749.434] (II) EMGD(0):         FP width:     0
[3901749.434] (II) EMGD(0):         FP height:    0
[3901749.434] (II) EMGD(0):         BKLT Enable:  0
[3901749.434] (II) EMGD(0):         BKLT Method:  0
[3901749.447] (II) EMGD(0):         BKLT T1:      0
[3901749.448] (II) EMGD(0):         BKLT T2:      0
[3901749.448] (II) EMGD(0):         BKLT T3:      0
[3901749.448] (II) EMGD(0):         BKLT T4:      0
[3901749.448] (II) EMGD(0):         BKLT T5:      0
[3901749.448] (II) EMGD(0):         GPIO Pin VDD: 0
[3901749.448] (II) EMGD(0):         GPIO Pin VEE: 0
[3901749.448] (II) EMGD(0):         GPIO Pin BKLT:0
[3901749.448] (II) EMGD(0):         DVO i2c pin:  0
[3901749.448] (II) EMGD(0):         DVO i2c DAB:  0
[3901749.448] (II) EMGD(0):         DVO i2c speed:0
[3901749.448] (II) EMGD(0):         DVO ddc pin:  0
[3901749.448] (II) EMGD(0):         DVO ddc speed:0
[3901749.448] (II) EMGD(0):      Number DTD's:   0
[3901749.448] (II) EMGD(0):      Number Attr's:  0
[3901749.448] (=3D=3D) Depth 24 pixmap format is 32 bpp
[3901749.463] drmOpenDevice: node name is /dev/dri/card0
[3901749.464] drmOpenDevice: open result is 12, (OK)
[3901749.464] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901749.464] drmOpenDevice: node name is /dev/dri/card0
[3901749.464] drmOpenDevice: open result is 12, (OK)
[3901749.464] drmOpenByBusid: drmOpenMinor returns 12
[3901749.464] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901749.464] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901749.872] drmOpenDevice: node name is /dev/dri/card0
[3901749.872] drmOpenDevice: open result is 12, (OK)
[3901749.872] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901749.872] drmOpenDevice: node name is /dev/dri/card0
[3901749.872] drmOpenDevice: open result is 12, (OK)
[3901749.872] drmOpenByBusid: drmOpenMinor returns 12
[3901749.872] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901749.872] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901749.873] drmOpenDevice: node name is /dev/dri/card0
[3901749.873] drmOpenDevice: open result is 12, (OK)
[3901749.873] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901749.873] drmOpenDevice: node name is /dev/dri/card0
[3901749.873] drmOpenDevice: open result is 12, (OK)
[3901749.873] drmOpenByBusid: drmOpenMinor returns 12
[3901749.873] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901749.874] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901749.875] drmOpenDevice: node name is /dev/dri/card0
[3901749.875] drmOpenDevice: open result is 12, (OK)
[3901749.875] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901749.875] drmOpenDevice: node name is /dev/dri/card0
[3901749.875] drmOpenDevice: open result is 12, (OK)
[3901749.875] drmOpenByBusid: drmOpenMinor returns 12
[3901749.875] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901749.881] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901750.895] drmOpenDevice: node name is /dev/dri/card0
[3901750.895] drmOpenDevice: open result is 13, (OK)
[3901750.896] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901750.896] drmOpenDevice: node name is /dev/dri/card0
[3901750.896] drmOpenDevice: open result is 13, (OK)
[3901750.896] drmOpenByBusid: drmOpenMinor returns 13
[3901750.896] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901750.896] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901750.896] drmOpenDevice: node name is /dev/dri/card0
[3901750.940] drmOpenDevice: open result is 13, (OK)
[3901750.940] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901750.940] drmOpenDevice: node name is /dev/dri/card0
[3901750.940] drmOpenDevice: open result is 13, (OK)
[3901750.940] drmOpenByBusid: drmOpenMinor returns 13
[3901750.940] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901750.940] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901750.976] drmOpenDevice: node name is /dev/dri/card0
[3901750.976] drmOpenDevice: open result is 13, (OK)
[3901750.976] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901750.976] drmOpenDevice: node name is /dev/dri/card0
[3901750.976] drmOpenDevice: open result is 13, (OK)
[3901750.976] drmOpenByBusid: drmOpenMinor returns 13
[3901751.013] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901751.013] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901751.271] (II) EMGD(0): [DRI2] Setup complete
[3901751.271] (II) EMGD(0): [DRI2]   DRI driver: emgd
[3901751.271] (II) EMGD(0): DRI2 initialization complete.
[3901751.306] (II) UXA(0): Driver registered support for the following oper=
ations:
[3901751.306] (II)         solid
[3901751.306] (II)         copy
[3901751.306] (II)         composite (RENDER acceleration)
[3901751.306] (II) EMGD(0): [hal to drm] Communication With DRM Failed

[3901751.306] (II) EMGD(0): Video acceleration initialization complete
[3901751.306] (=3D=3D) EMGD(0): Backing store disabled
[3901751.356] drmOpenDevice: node name is /dev/dri/card0
[3901751.357] drmOpenDevice: open result is 14, (OK)
[3901751.357] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901751.357] drmOpenDevice: node name is /dev/dri/card0
[3901751.357] drmOpenDevice: open result is 14, (OK)
[3901751.357] drmOpenByBusid: drmOpenMinor returns 14
[3901751.357] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901751.357] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901751.367] drmOpenDevice: node name is /dev/dri/card0
[3901751.367] drmOpenDevice: open result is 14, (OK)
[3901751.368] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901751.368] drmOpenDevice: node name is /dev/dri/card0
[3901751.368] drmOpenDevice: open result is 14, (OK)
[3901751.368] drmOpenByBusid: drmOpenMinor returns 14
[3901751.368] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901751.368] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901751.491] (II) EMGD(0): Hardware Cursor Initialization complete.
[3901751.491] (=3D=3D) EMGD(0): Silken mouse enabled
[3901751.491] (=3D=3D) EMGD(0): DPMS enabled
[3901751.505] (=3D=3D) RandR enabled
[3901751.505] (II) Initializing built-in extension Generic Event Extension
[3901751.505] (II) Initializing built-in extension SHAPE
[3901751.505] (II) Initializing built-in extension MIT-SHM
[3901751.505] (II) Initializing built-in extension XInputExtension
[3901751.505] (II) Initializing built-in extension XTEST
[3901751.505] (II) Initializing built-in extension BIG-REQUESTS
[3901751.505] (II) Initializing built-in extension SYNC
[3901751.506] (II) Initializing built-in extension XKEYBOARD
[3901751.506] (II) Initializing built-in extension XC-MISC
[3901751.506] (II) Initializing built-in extension XFIXES
[3901751.506] (II) Initializing built-in extension RENDER
[3901751.506] (II) Initializing built-in extension RANDR
[3901751.506] (II) Initializing built-in extension COMPOSITE
[3901751.506] (II) Initializing built-in extension DAMAGE
[3901752.039] drmOpenDevice: node name is /dev/dri/card0
[3901752.039] drmOpenDevice: open result is 14, (OK)
[3901752.040] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901752.040] drmOpenDevice: node name is /dev/dri/card0
[3901752.040] drmOpenDevice: open result is 14, (OK)
[3901752.040] drmOpenByBusid: drmOpenMinor returns 14
[3901752.040] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901752.040] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901752.040] drmOpenDevice: node name is /dev/dri/card0
[3901752.040] drmOpenDevice: open result is 14, (OK)
[3901752.041] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901752.041] drmOpenDevice: node name is /dev/dri/card0
[3901752.042] drmOpenDevice: open result is 14, (OK)
[3901752.042] drmOpenByBusid: drmOpenMinor returns 14
[3901752.042] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901752.042] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901752.084] drmOpenDevice: node name is /dev/dri/card0
[3901752.084] drmOpenDevice: open result is 14, (OK)
[3901752.084] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901752.084] drmOpenDevice: node name is /dev/dri/card0
[3901752.084] drmOpenDevice: open result is 14, (OK)
[3901752.084] drmOpenByBusid: drmOpenMinor returns 14
[3901752.085] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901752.085] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901752.179] drmOpenDevice: node name is /dev/dri/card0
[3901752.180] drmOpenDevice: open result is 15, (OK)
[3901752.180] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901752.180] drmOpenDevice: node name is /dev/dri/card0
[3901752.180] drmOpenDevice: open result is 15, (OK)
[3901752.180] drmOpenByBusid: drmOpenMinor returns 15
[3901752.180] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901752.180] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901752.180] drmOpenDevice: node name is /dev/dri/card0
[3901752.181] drmOpenDevice: open result is 15, (OK)
[3901752.181] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901752.181] drmOpenDevice: node name is /dev/dri/card0
[3901752.181] drmOpenDevice: open result is 15, (OK)
[3901752.181] drmOpenByBusid: drmOpenMinor returns 15
[3901752.181] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901752.181] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901752.190] drmOpenDevice: node name is /dev/dri/card0
[3901752.190] drmOpenDevice: open result is 15, (OK)
[3901752.190] drmOpenByBusid: Searching for BusID PCI:00:02:00
[3901752.190] drmOpenDevice: node name is /dev/dri/card0
[3901752.190] drmOpenDevice: open result is 15, (OK)
[3901752.190] drmOpenByBusid: drmOpenMinor returns 15
[3901752.190] drmOpenByBusid: Interface 1.4 failed, trying 1.1
[3901752.190] drmOpenByBusid: drmGetBusid reports pci:0000:00:02.0
[3901752.342] (II) AIGLX: enabled GLX_MESA_copy_sub_buffer
[3901752.342] (II) AIGLX: enabled GLX_INTEL_swap_event
[3901752.342] (II) AIGLX: enabled GLX_SGI_make_current_read
[3901752.342] (II) AIGLX: GLX_EXT_texture_from_pixmap backed by buffer obje=
cts
[3901752.355] (II) AIGLX: Loaded and initialized /usr/lib/dri/emgd_dri.so
[3901752.356] (II) GLX: Initialized DRI2 GL provider for screen 0
[3901753.105] (II) LoadModule: "mouse"
[3901753.106] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3901753.106] (II) Module mouse: vendor=3D"X.Org Foundation"
[3901753.107] 	compiled for 1.13.1, module version =3D 1.8.1
[3901753.107] 	Module class: X.Org XInput Driver
[3901753.107] 	ABI class: X.Org XInput driver, version 18.0
[3901753.107] (EE) module ABI major version (18) doesn't match the server's=
 version (11)
[3901753.112] (II) UnloadModule: "mouse"
[3901753.112] (II) Unloading /usr/lib/xorg/modules/input/mouse_drv.so
[3901753.112] (EE) Failed to load module "mouse" (module requirement mismat=
ch, 0)
[3901753.113] (EE) No input driver matching `mouse'
[3901753.113] (II) LoadModule: "kbd"
[3901753.114] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so
[3901753.114] (II) Module kbd: vendor=3D"X.Org Foundation"
[3901753.114] 	compiled for 1.13.1, module version =3D 1.6.2
[3901753.114] 	Module class: X.Org XInput Driver
[3901753.114] 	ABI class: X.Org XInput driver, version 18.0
[3901753.114] (EE) module ABI major version (18) doesn't match the server's=
 version (11)
[3901753.120] (II) UnloadModule: "kbd"
[3901753.120] (II) Unloading /usr/lib/xorg/modules/input/kbd_drv.so
[3901753.120] (EE) Failed to load module "kbd" (module requirement mismatch=
, 0)
[3901753.120] (EE) No input driver matching `kbd'
[3901753.458] (II) config/udev: Adding input device DIALOGUE INC PenMount U=
SB (/dev/input/mouse0)
[3901753.458] (II) AutoAddDevices is off - not adding device.

------=_NextPart_000_0092_01CE3457.B325C880--
