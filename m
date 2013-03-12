Return-Path: <swaroop@weisser.at>
Received: from smtp01.udag.de (smtp01.udag.de [62.146.106.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FD17E012F1
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 08:58:41 -0700 (PDT)
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by smtp01.udag.de (Postfix) with ESMTPA id B67C780695
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 16:58:38 +0100 (CET)
Received: by mail-ve0-f181.google.com with SMTP id d10so3589051vea.40
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 08:58:37 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.52.71.235 with SMTP id y11mr5715827vdu.43.1363103917288;
	Tue, 12 Mar 2013 08:58:37 -0700 (PDT)
Received: by 10.58.187.42 with HTTP; Tue, 12 Mar 2013 08:58:37 -0700 (PDT)
In-Reply-To: <CAJTo0LaY_gqduXzAPRZMH2DKttya7raAC1zbx5+C5SX+KQqqqQ@mail.gmail.com>
References: <CABTzgQ5nZSRSxnmUMjUVfT1B6UijNTrU-zc5MRHBNmGPMuhUPA@mail.gmail.com>
	<CAJTo0LaY_gqduXzAPRZMH2DKttya7raAC1zbx5+C5SX+KQqqqQ@mail.gmail.com>
Date: Tue, 12 Mar 2013 16:58:37 +0100
Message-ID: <CABTzgQ7yB=QuGgiF1YJkWq8V=0s4R9aAL3D3wd4JOnBxZ1J1og@mail.gmail.com>
From: Satya Swaroop DAMARLA <swaroop@weisser.at>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Problem with Xserver freezing
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
X-List-Received-Date: Tue, 12 Mar 2013 15:58:42 -0000
Content-Type: multipart/alternative; boundary=20cf3071cd62c868a804d7bc5c38

--20cf3071cd62c868a804d7bc5c38
Content-Type: text/plain; charset=ISO-8859-1

Hi Ross,

I did X -verbose and I got the following output but its freezing
X -verbose
_XSERVTransSocketOpenCOTSServer: Unable to open socket for inet6
_XSERVTransOpen: transport open failed for inet6/skidata-harmony:0
_XSERVTransMakeAllCOTSServerListeners: failed to open listener for inet6

X.Org X Server 1.12.4
Release Date: 2012-08-27
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.5.0-25-generic x86_64
Current Operating System: Linux skidata-harmony 3.1.10-skidata #2 SMP
PREEMPT Tue Mar 12 15:15:03 CET 2013 armv7l
Kernel command line: mem=384M@0M nvmem=128M@384M vmalloc=384M video=tegrafb
console=ttyS0,115200n8 tegraboot=nand
mtdparts=tegra_nand:358400K@29952K(system)
usbcore.old_scheme_first=1 rw root=/dev/mmcblk0p1 r
ootfstype=ext2 rootwait nvsku=000-00000-0000-000 ip=:::::usb0:off
Build Date: 12 March 2013  02:48:34PM

Current version of pixman: 0.29.2
        Before reporting problems, check http://wiki.x.org
        to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
        (++) from command line, (!!) notice, (II) informational,
        (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Tue Mar 12 15:50:15 2013
(==) Using config file: "/etc/X11/xorg.conf"
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
(==) No Layout section.  Using the first Screen section.
(==) No screen section available. Using defaults.
(**) |-->Screen "Default Screen Section" (0)
(**) |   |-->Monitor "<default monitor>"
(==) No device specified for screen "Default Screen Section".
        Using the first device section listed.
(**) |   |-->Device "Tegra"
(==) No monitor specified for screen "Default Screen Section".
        Using a default monitor configuration.
(==) Automatically adding devices
(==) Automatically enabling devices
(WW) The directory "/usr/share/fonts/X11/misc/" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/Type1/" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/100dpi/" does not exist.
        Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/75dpi/" does not exist.
        Entry deleted from font path.
(==) FontPath set to:

(==) ModulePath set to "/usr/lib/xorg/modules"
(II) The server relies on udev to provide the list of input devices.
        If no devices become available, reconfigure udev or disable
AutoAddDevices.
(WW) "dri" will not be loaded unless you've specified it to be loaded
elsewhere.
(WW) "dri2" will not be loaded unless you've specified it to be loaded
elsewhere.
(WW) "glx" will not be loaded unless you've specified it to be loaded
elsewhere.
(II) "extmod" will be loaded. This was enabled by default and also
specified in the config file.
(II) "dbe" will be loaded by default.
(II) "glx" will be loaded even though the default is to disable it.
(II) "dri" will be loaded even though the default is to disable it.
(II) "dri2" will be loaded even though the default is to disable it.
(WW) Warning, couldn't open module extmod
(II) Unloading extmod
(EE) Failed to load module "extmod" (module does not exist, 0)
(WW) Warning, couldn't open module dbe
(II) Unloading dbe
(EE) Failed to load module "dbe" (module does not exist, 0)
(II) Loading /usr/lib/xorg/modules/drivers/tegra_drv.so
(II) Module tegra: vendor="X.Org Foundation"
        compiled for 1.11.99.901, module version = 0.4.0
(II) NVIDIA driver for Tegra
(--) using VT number 2

(WW) Falling back to old probe method for tegra
(WW) VGA arbiter: cannot open kernel arbiter, no multi-card support
(II) TEGRA(0): GPU is a T20/T25
(II) TEGRA(0): Creating default Display subsection in Screen section
        "Default Screen Section" for depth/fbbpp 24/32
(==) TEGRA(0): Depth 24, (--) framebuffer bpp 32
(==) TEGRA(0): RGB weight 888
(==) TEGRA(0): Default visual is TrueColor
(==) TEGRA(0): Using gamma correction (1.0, 1.0, 1.0)
(II) TEGRA(0): Output LVDS-1 has no monitor section
(II) TEGRA(0): Output HDMI-1 has no monitor section
(WW) TEGRA(0): LVDS-1: Error querying display modes: No such device.
(II) TEGRA(0): EDID for output LVDS-1
(II) TEGRA(0): Printing probed modes for output LVDS-1
(II) TEGRA(0): Modeline "800x480"x0.0    0.00  800 800 800 800  480 480 480
480 (0.0 kHz eP)
(II) TEGRA(0): EDID for output HDMI-1
(II) TEGRA(0): Output LVDS-1 connected
(II) TEGRA(0): Output HDMI-1 disconnected
(II) TEGRA(0): Using exact sizes for initial modes
(II) TEGRA(0): Output LVDS-1 using initial mode 800x480
(II) TEGRA(0): Using default gamma of (1.0, 1.0, 1.0) unless otherwise
stated.
(--) TEGRA(0): VideoRAM: 32768 kByte
(--) TEGRA(0): Virtual size is 800x480 (pitch 0)
(**) TEGRA(0):  Driver mode "800x480"
(==) TEGRA(0): DPI set to (96, 96)
(II) Loading /usr/lib/xorg/modules/libfb.so
(II) Module fb: vendor="X.Org Foundation"
        compiled for 1.12.4, module version = 1.0.0
(--) Depth 24 pixmap format is 32 bpp
(==) TEGRA(0): Backing store disabled
(==) TEGRA(0): Silken mouse enabled
(II) TEGRA(0): RandR 1.2 enabled, ignore the following RandR disabled
message.
(==) TEGRA(0): DPMS enabled
(--) RandR disabled
(II) TEGRA(0): Setting screen physical size to 211 x 127
(II) config/udev: Adding input device Logitech Logitech USB Keyboard
(/dev/input/event3)
(**) Logitech Logitech USB Keyboard: Applying InputClass "evdev keyboard
catchall"
(II) Loading /usr/lib/xorg/modules/input/evdev_drv.so
(II) Module evdev: vendor="X.Org Foundation"
        compiled for 1.12.4, module version = 2.7.3
(II) Using input driver 'evdev' for 'Logitech Logitech USB Keyboard'
(**) Logitech Logitech USB Keyboard: always reports core events
(**) evdev: Logitech Logitech USB Keyboard: Device: "/dev/input/event3"
(--) evdev: Logitech Logitech USB Keyboard: Vendor 0x46d Product 0xc315
(--) evdev: Logitech Logitech USB Keyboard: Found keys
(II) evdev: Logitech Logitech USB Keyboard: Configuring as keyboard
(II) XINPUT: Adding extended input device "Logitech Logitech USB Keyboard"
(type: KEYBOARD, id 6)
(II) config/udev: Adding input device tegra-wm8903 Mic Jack
(/dev/input/event1)
(II) No input driver specified, ignoring this device.
(II) This device may have been added with another device file.
(II) config/udev: Adding input device tegra-wm8903 Headphone Jack
(/dev/input/event2)
(II) No input driver specified, ignoring this device.
(II) This device may have been added with another device file.
(II) config/udev: Adding input device TSC2007 Touchscreen
(/dev/input/event0)
(**) TSC2007 Touchscreen: Applying InputClass "evdev touchscreen catchall"
(II) Using input driver 'evdev' for 'TSC2007 Touchscreen'
(**) TSC2007 Touchscreen: always reports core events
(**) evdev: TSC2007 Touchscreen: Device: "/dev/input/event0"
(--) evdev: TSC2007 Touchscreen: Vendor 0 Product 0
(--) evdev: TSC2007 Touchscreen: Found absolute axes
(--) evdev: TSC2007 Touchscreen: Found x and y absolute axes
(--) evdev: TSC2007 Touchscreen: Found absolute touchscreen
(II) evdev: TSC2007 Touchscreen: Configuring as touchscreen
(**) evdev: TSC2007 Touchscreen: YAxisMapping: buttons 4 and 5
(**) evdev: TSC2007 Touchscreen: EmulateWheelButton: 4,
EmulateWheelInertia: 10, EmulateWheelTimeout: 200
(II) XINPUT: Adding extended input device "TSC2007 Touchscreen" (type:
TOUCHSCREEN, id 7)
(II) evdev: TSC2007 Touchscreen: initialized for absolute axes.
(**) TSC2007 Touchscreen: (accel) keeping acceleration scheme 1
(**) TSC2007 Touchscreen: (accel) acceleration profile 0
(**) TSC2007 Touchscreen: (accel) acceleration factor: 2.000
(**) TSC2007 Touchscreen: (accel) acceleration threshold: 4
(II) config/udev: Adding input device TSC2007 Touchscreen
(/dev/input/mouse0)
(II) No input driver specified, ignoring this device.
(II) This device may have been added with another device file.


Also when I use the keyboard with board and try to start
alt+ctrl+terminals, I am not able to start and I can only use one terminal
and do you know what could be the error?

Greets,
Satya





On Fri, Mar 8, 2013 at 9:57 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 7 March 2013 20:49, Satya Swaroop Damarla <swaroop.damarla@gmail.com>
> wrote:
> > I created a X11 image and I found that the init is freezing. Advice
> > regarding configuring Xorg is very much appreciated. If I remove
> > Xinitialization from init then its properly starting. my board is a
> > specialized version of Nvidia Tegra Harmony board.
>
> That X log doesn't contain any information that's useful, you'll have
> to dig around the other logs in /var or alternatively disable X from
> the startup and then start it manually with options like --verbose.
>
> Ross
>

--20cf3071cd62c868a804d7bc5c38
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div><br></div><div style>I did X -verbose and I g=
ot the following output but its freezing=A0</div><div style><div>X -verbose=
</div><div>_XSERVTransSocketOpenCOTSServer: Unable to open socket for inet6=
</div>
<div>_XSERVTransOpen: transport open failed for inet6/skidata-harmony:0</di=
v><div>_XSERVTransMakeAllCOTSServerListeners: failed to open listener for i=
net6</div><div><br></div><div>X.Org X Server 1.12.4</div><div>Release Date:=
 2012-08-27</div>
<div>X Protocol Version 11, Revision 0</div><div>Build Operating System: Li=
nux 3.5.0-25-generic x86_64=A0</div><div>Current Operating System: Linux sk=
idata-harmony 3.1.10-skidata #2 SMP PREEMPT Tue Mar 12 15:15:03 CET 2013 ar=
mv7l</div>
<div>Kernel command line: mem=3D384M@0M nvmem=3D128M@384M vmalloc=3D384M vi=
deo=3Dtegrafb console=3DttyS0,115200n8 tegraboot=3Dnand mtdparts=3Dtegra_na=
nd:358400K@29952K(system) usbcore.old_scheme_first=3D1 rw root=3D/dev/mmcbl=
k0p1 r</div><div>
ootfstype=3Dext2 rootwait nvsku=3D000-00000-0000-000 ip=3D:::::usb0:off</di=
v><div>Build Date: 12 March 2013 =A002:48:34PM</div><div>=A0</div><div>Curr=
ent version of pixman: 0.29.2</div><div>=A0 =A0 =A0 =A0 Before reporting pr=
oblems, check <a href=3D"http://wiki.x.org">http://wiki.x.org</a></div>
<div>=A0 =A0 =A0 =A0 to make sure that you have the latest version.</div><d=
iv>Markers: (--) probed, (**) from config file, (=3D=3D) default setting,</=
div><div>=A0 =A0 =A0 =A0 (++) from command line, (!!) notice, (II) informat=
ional,</div><div>
=A0 =A0 =A0 =A0 (WW) warning, (EE) error, (NI) not implemented, (??) unknow=
n.</div><div>(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Tue =
Mar 12 15:50:15 2013</div><div>(=3D=3D) Using config file: &quot;/etc/X11/x=
org.conf&quot;</div>
<div>(=3D=3D) Using system config directory &quot;/usr/share/X11/xorg.conf.=
d&quot;</div><div>(=3D=3D) No Layout section. =A0Using the first Screen sec=
tion.</div><div>(=3D=3D) No screen section available. Using defaults.</div>=
<div>(**) |--&gt;Screen &quot;Default Screen Section&quot; (0)</div>
<div>(**) | =A0 |--&gt;Monitor &quot;&lt;default monitor&gt;&quot;</div><di=
v>(=3D=3D) No device specified for screen &quot;Default Screen Section&quot=
;.</div><div>=A0 =A0 =A0 =A0 Using the first device section listed.</div><d=
iv>(**) | =A0 |--&gt;Device &quot;Tegra&quot;</div>
<div>(=3D=3D) No monitor specified for screen &quot;Default Screen Section&=
quot;.</div><div>=A0 =A0 =A0 =A0 Using a default monitor configuration.</di=
v><div>(=3D=3D) Automatically adding devices</div><div>(=3D=3D) Automatical=
ly enabling devices</div>
<div>(WW) The directory &quot;/usr/share/fonts/X11/misc/&quot; does not exi=
st.</div><div>=A0 =A0 =A0 =A0 Entry deleted from font path.</div><div>(WW) =
The directory &quot;/usr/share/fonts/X11/TTF/&quot; does not exist.</div><d=
iv>=A0 =A0 =A0 =A0 Entry deleted from font path.</div>
<div>(WW) The directory &quot;/usr/share/fonts/X11/OTF/&quot; does not exis=
t.</div><div>=A0 =A0 =A0 =A0 Entry deleted from font path.</div><div>(WW) T=
he directory &quot;/usr/share/fonts/X11/Type1/&quot; does not exist.</div><=
div>
=A0 =A0 =A0 =A0 Entry deleted from font path.</div><div>(WW) The directory =
&quot;/usr/share/fonts/X11/100dpi/&quot; does not exist.</div><div>=A0 =A0 =
=A0 =A0 Entry deleted from font path.</div><div>(WW) The directory &quot;/u=
sr/share/fonts/X11/75dpi/&quot; does not exist.</div>
<div>=A0 =A0 =A0 =A0 Entry deleted from font path.</div><div>(=3D=3D) FontP=
ath set to:</div><div><br></div><div>(=3D=3D) ModulePath set to &quot;/usr/=
lib/xorg/modules&quot;</div><div>(II) The server relies on udev to provide =
the list of input devices.</div>
<div>=A0 =A0 =A0 =A0 If no devices become available, reconfigure udev or di=
sable AutoAddDevices.</div><div>(WW) &quot;dri&quot; will not be loaded unl=
ess you&#39;ve specified it to be loaded elsewhere.</div><div>(WW) &quot;dr=
i2&quot; will not be loaded unless you&#39;ve specified it to be loaded els=
ewhere.</div>
<div>(WW) &quot;glx&quot; will not be loaded unless you&#39;ve specified it=
 to be loaded elsewhere.</div><div>(II) &quot;extmod&quot; will be loaded. =
This was enabled by default and also specified in the config file.</div>
<div>(II) &quot;dbe&quot; will be loaded by default.</div><div>(II) &quot;g=
lx&quot; will be loaded even though the default is to disable it.</div><div=
>(II) &quot;dri&quot; will be loaded even though the default is to disable =
it.</div>
<div>(II) &quot;dri2&quot; will be loaded even though the default is to dis=
able it.</div><div>(WW) Warning, couldn&#39;t open module extmod</div><div>=
(II) Unloading extmod</div><div>(EE) Failed to load module &quot;extmod&quo=
t; (module does not exist, 0)</div>
<div>(WW) Warning, couldn&#39;t open module dbe</div><div>(II) Unloading db=
e</div><div>(EE) Failed to load module &quot;dbe&quot; (module does not exi=
st, 0)</div><div>(II) Loading /usr/lib/xorg/modules/drivers/tegra_drv.so</d=
iv>
<div>(II) Module tegra: vendor=3D&quot;X.Org Foundation&quot;</div><div>=A0=
 =A0 =A0 =A0 compiled for 1.11.99.901, module version =3D 0.4.0</div><div>(=
II) NVIDIA driver for Tegra</div><div>(--) using VT number 2</div><div><br>=
</div><div>
(WW) Falling back to old probe method for tegra</div><div>(WW) VGA arbiter:=
 cannot open kernel arbiter, no multi-card support</div><div>(II) TEGRA(0):=
 GPU is a T20/T25</div><div>(II) TEGRA(0): Creating default Display subsect=
ion in Screen section</div>
<div>=A0 =A0 =A0 =A0 &quot;Default Screen Section&quot; for depth/fbbpp 24/=
32</div><div>(=3D=3D) TEGRA(0): Depth 24, (--) framebuffer bpp 32</div><div=
>(=3D=3D) TEGRA(0): RGB weight 888</div><div>(=3D=3D) TEGRA(0): Default vis=
ual is TrueColor</div>
<div>(=3D=3D) TEGRA(0): Using gamma correction (1.0, 1.0, 1.0)</div><div>(I=
I) TEGRA(0): Output LVDS-1 has no monitor section</div><div>(II) TEGRA(0): =
Output HDMI-1 has no monitor section</div><div>(WW) TEGRA(0): LVDS-1: Error=
 querying display modes: No such device.</div>
<div>(II) TEGRA(0): EDID for output LVDS-1</div><div>(II) TEGRA(0): Printin=
g probed modes for output LVDS-1</div><div>(II) TEGRA(0): Modeline &quot;80=
0x480&quot;x0.0 =A0 =A00.00 =A0800 800 800 800 =A0480 480 480 480 (0.0 kHz =
eP)</div>
<div>(II) TEGRA(0): EDID for output HDMI-1</div><div>(II) TEGRA(0): Output =
LVDS-1 connected</div><div>(II) TEGRA(0): Output HDMI-1 disconnected</div><=
div>(II) TEGRA(0): Using exact sizes for initial modes</div><div>(II) TEGRA=
(0): Output LVDS-1 using initial mode 800x480</div>
<div>(II) TEGRA(0): Using default gamma of (1.0, 1.0, 1.0) unless otherwise=
 stated.</div><div>(--) TEGRA(0): VideoRAM: 32768 kByte</div><div>(--) TEGR=
A(0): Virtual size is 800x480 (pitch 0)</div><div>(**) TEGRA(0): =A0Driver =
mode &quot;800x480&quot;</div>
<div>(=3D=3D) TEGRA(0): DPI set to (96, 96)</div><div>(II) Loading /usr/lib=
/xorg/modules/libfb.so</div><div>(II) Module fb: vendor=3D&quot;X.Org Found=
ation&quot;</div><div>=A0 =A0 =A0 =A0 compiled for 1.12.4, module version =
=3D 1.0.0</div>
<div>(--) Depth 24 pixmap format is 32 bpp</div><div>(=3D=3D) TEGRA(0): Bac=
king store disabled</div><div>(=3D=3D) TEGRA(0): Silken mouse enabled</div>=
<div>(II) TEGRA(0): RandR 1.2 enabled, ignore the following RandR disabled =
message.</div>
<div>(=3D=3D) TEGRA(0): DPMS enabled</div><div>(--) RandR disabled</div><di=
v>(II) TEGRA(0): Setting screen physical size to 211 x 127</div><div>(II) c=
onfig/udev: Adding input device Logitech Logitech USB Keyboard (/dev/input/=
event3)</div>
<div>(**) Logitech Logitech USB Keyboard: Applying InputClass &quot;evdev k=
eyboard catchall&quot;</div><div>(II) Loading /usr/lib/xorg/modules/input/e=
vdev_drv.so</div><div>(II) Module evdev: vendor=3D&quot;X.Org Foundation&qu=
ot;</div>
<div>=A0 =A0 =A0 =A0 compiled for 1.12.4, module version =3D 2.7.3</div><di=
v>(II) Using input driver &#39;evdev&#39; for &#39;Logitech Logitech USB Ke=
yboard&#39;</div><div>(**) Logitech Logitech USB Keyboard: always reports c=
ore events</div>
<div>(**) evdev: Logitech Logitech USB Keyboard: Device: &quot;/dev/input/e=
vent3&quot;</div><div>(--) evdev: Logitech Logitech USB Keyboard: Vendor 0x=
46d Product 0xc315</div><div>(--) evdev: Logitech Logitech USB Keyboard: Fo=
und keys</div>
<div>(II) evdev: Logitech Logitech USB Keyboard: Configuring as keyboard</d=
iv><div>(II) XINPUT: Adding extended input device &quot;Logitech Logitech U=
SB Keyboard&quot; (type: KEYBOARD, id 6)</div><div>(II) config/udev: Adding=
 input device tegra-wm8903 Mic Jack (/dev/input/event1)</div>
<div>(II) No input driver specified, ignoring this device.</div><div>(II) T=
his device may have been added with another device file.</div><div>(II) con=
fig/udev: Adding input device tegra-wm8903 Headphone Jack (/dev/input/event=
2)</div>
<div>(II) No input driver specified, ignoring this device.</div><div>(II) T=
his device may have been added with another device file.</div><div>(II) con=
fig/udev: Adding input device TSC2007 Touchscreen (/dev/input/event0)</div>
<div>(**) TSC2007 Touchscreen: Applying InputClass &quot;evdev touchscreen =
catchall&quot;</div><div>(II) Using input driver &#39;evdev&#39; for &#39;T=
SC2007 Touchscreen&#39;</div><div>(**) TSC2007 Touchscreen: always reports =
core events</div>
<div>(**) evdev: TSC2007 Touchscreen: Device: &quot;/dev/input/event0&quot;=
</div><div>(--) evdev: TSC2007 Touchscreen: Vendor 0 Product 0</div><div>(-=
-) evdev: TSC2007 Touchscreen: Found absolute axes</div><div>(--) evdev: TS=
C2007 Touchscreen: Found x and y absolute axes</div>
<div>(--) evdev: TSC2007 Touchscreen: Found absolute touchscreen</div><div>=
(II) evdev: TSC2007 Touchscreen: Configuring as touchscreen</div><div>(**) =
evdev: TSC2007 Touchscreen: YAxisMapping: buttons 4 and 5</div><div>(**) ev=
dev: TSC2007 Touchscreen: EmulateWheelButton: 4, EmulateWheelInertia: 10, E=
mulateWheelTimeout: 200</div>
<div>(II) XINPUT: Adding extended input device &quot;TSC2007 Touchscreen&qu=
ot; (type: TOUCHSCREEN, id 7)</div><div>(II) evdev: TSC2007 Touchscreen: in=
itialized for absolute axes.</div><div>(**) TSC2007 Touchscreen: (accel) ke=
eping acceleration scheme 1</div>
<div>(**) TSC2007 Touchscreen: (accel) acceleration profile 0</div><div>(**=
) TSC2007 Touchscreen: (accel) acceleration factor: 2.000</div><div>(**) TS=
C2007 Touchscreen: (accel) acceleration threshold: 4</div><div>(II) config/=
udev: Adding input device TSC2007 Touchscreen (/dev/input/mouse0)</div>
<div>(II) No input driver specified, ignoring this device.</div><div>(II) T=
his device may have been added with another device file.</div><div><br></di=
v><div><br></div><div style>Also when I use the keyboard with board and try=
 to start alt+ctrl+terminals, I am not able to start and I can only use one=
 terminal and do you know what could be the error?</div>
<div style><br></div><div style>Greets,</div><div style>Satya</div></div><d=
iv style><br></div><div style><br></div><div style><br></div></div><div cla=
ss=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Mar 8, 2013 a=
t 9:57 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton=
@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 7 March 2013 20:49, Sat=
ya Swaroop Damarla &lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroop=
.damarla@gmail.com</a>&gt; wrote:<br>

&gt; I created a X11 image and I found that the init is freezing. Advice<br=
>
&gt; regarding configuring Xorg is very much appreciated. If I remove<br>
&gt; Xinitialization from init then its properly starting. my board is a<br=
>
&gt; specialized version of Nvidia Tegra Harmony board.<br>
<br>
</div>That X log doesn&#39;t contain any information that&#39;s useful, you=
&#39;ll have<br>
to dig around the other logs in /var or alternatively disable X from<br>
the startup and then start it manually with options like --verbose.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--20cf3071cd62c868a804d7bc5c38--
