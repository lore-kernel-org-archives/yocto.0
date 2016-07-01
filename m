Return-Path: <allan.chandler@dti.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2018EE00F16; Thu, 30 Jun 2016 22:31:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.213 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 367 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Jun 2016 22:31:23 PDT
Received: from 10pmail.ess.barracuda.com (10pmail.ess.barracuda.com
	[64.235.154.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCC50E00E77
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 22:31:23 -0700 (PDT)
Received: from mx.dti.com.au (202-74-169-146.cep.zetta.net.au
	[202.74.169.146]) by mx1401.ess.rzc.cudaops.com (version=TLSv1
	cipher=AES128-SHA bits=128 verify=NO);
	Fri, 01 Jul 2016 05:31:20 +0000
Received: from MX01.dti.lan ([::1]) by mx01.dti.lan ([::1]) with mapi id
	14.03.0158.001; Fri, 1 Jul 2016 13:24:49 +0800
From: Allan Chandler <allan.chandler@dti.com.au>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Xorg failing with SEGV after Krogoth update
Thread-Index: AdHTWOKMYa6lkVhRT+yFhpdiUtCqKA==
Date: Fri, 1 Jul 2016 05:24:49 +0000
Message-ID: <FD3EC9758442224FA81FA20FD6F1AE8C64431B8C@mx01.dti.lan>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.0.130]
MIME-Version: 1.0
X-BESS-ID: 1467351048-321457-8170-10054-2
X-BESS-VER: 2016.8-r1606211823
X-BESS-Apparent-Source-IP: 202.74.169.146
X-BESS-BRTS-Status: 1
Subject: Xorg failing with SEGV after Krogoth update
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
X-List-Received-Date: Fri, 01 Jul 2016 05:31:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_FD3EC9758442224FA81FA20FD6F1AE8C64431B8Cmx01dtilan_"

--_000_FD3EC9758442224FA81FA20FD6F1AE8C64431B8Cmx01dtilan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We recently did (attempted? ) an upgrade of our Yocto embedded build system=
 from Fido to Krogoth and, other than one rather massive issue, it all went=
 well.

The massive issue is the fact that  X11 is apparently not starting correctl=
y. The embedded device boots okay since we can see in via a serial console =
as well as connecting via SSH.

We've narrowed the actual issue down to the Xorg executable, after followin=
g the process the the rc5.d Xserver satrtup scripts and xinit - basically, =
Xorg is dumping core with the following output:

    X.Org X Server 1.18.0
    Release Date: 2015-11-09
    X Protocol Version 11, Revision 0
    Build Operating System: Linux 3.19.0-25-generic x86_64
    Current Operating System: Linux imx6 3.14.28+g2b0ab6d #1 SMP PREEMPT Th=
u Jun 30 12:20:09 AWST 2016 armv7l
    Kernel command line: console=3Dttymxc0,115200 consoleblank=3D0 root=3D/=
dev/mmcblk3p2 rootwait
    Build Date: 30 June 2016  01:38:24PM

    Current version of pixman: 0.32.8
            Before reporting problems, check http://wiki.x.org
            to make sure that you have the latest version.
    Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
            (++) from command line, (!!) notice, (II) informational,
            (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
    (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Jul  1 00:12:43 201=
6
    (=3D=3D) Using config file: "/etc/X11/xorg.conf"
    (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
    (=3D=3D) No Layout section.  Using the first Screen section.
    (=3D=3D) No screen section available. Using defaults.
    (**) |-->Screen "Default Screen Section" (0)
    (**) |   |-->Monitor "<default monitor>"
    (=3D=3D) No device specified for screen "Default Screen Section".
            Using the first device section listed.
    (**) |   |-->Device "i.MX Accelerated Framebuffer Device"
    (=3D=3D) No monitor specified for screen "Default Screen Section".
            Using a default monitor configuration.
    (**) Option "BlankTime" "0"
    (**) Option "StandbyTime" "0"
    (**) Option "SuspendTime" "0"
    (**) Option "OffTime" "0"
    (=3D=3D) Automatically adding devices
    (=3D=3D) Automatically enabling devices
    (=3D=3D) Automatically adding GPU devices
    (=3D=3D) Max clients allowed: 256, resource mask: 0x1fffff
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
    (=3D=3D) FontPath set to:

    (=3D=3D) ModulePath set to "/usr/lib/xorg/modules"
    (II) The server relies on udev to provide the list of input devices.
            If no devices become available, reconfigure udev or disable Aut=
oAddDevices.
    (II) Loader magic: 0x1c3a20
    (II) Module ABI versions:
            X.Org ANSI C Emulation: 0.4
            X.Org Video Driver: 20.0
            X.Org XInput driver : 22.1
            X.Org Server Extension : 9.0
    (II) xfree86: Adding drm device (/dev/dri/card0)
    (II) no primary bus or device found
            falling back to /sys/devices/platform/Vivante GCCore/drm/card0
    (II) LoadModule: "glx"
    (II) Loading /usr/lib/xorg/modules/extensions/libglx.so
    (II) Module glx: vendor=3D"X.Org Foundation"
            compiled for 1.18.0, module version =3D 1.0.0
            ABI class: X.Org Server Extension, version 9.0
    (=3D=3D) AIGLX enabled
    (II) LoadModule: "vivante"
    (II) Loading /usr/lib/xorg/modules/drivers/vivante_drv.so
    (II) Module vivante: vendor=3D"X.Org Foundation"
            compiled for 1.18.0, module version =3D 1.0.0
            Module class: X.Org Video Driver
            ABI class: X.Org Video Driver, version 20.0
    (II) VIVANTE: driver for vivante fb: VivanteGC500, VivanteGC2100,
            VivanteGCCORE
    (--) using VT number 3

    (WW) Falling back to old probe method for vivante
    (II) Loading sub module "fbdevhw"
    (II) LoadModule: "fbdevhw"
    (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
    (II) Module fbdevhw: vendor=3D"X.Org Foundation"
            compiled for 1.18.0, module version =3D 0.0.2
            ABI class: X.Org Video Driver, version 20.0
    (II) VIVANTE(0): using default device
    (II) VIVANTE(0): Device preferred mode 'fb0':U:1024x768p-60
    (II) VIVANTE(0): Creating default Display subsection in Screen section
            "Default Screen Section" for depth/fbbpp 16/16
    (=3D=3D) VIVANTE(0): Depth 16, (=3D=3D) framebuffer bpp 16
    (=3D=3D) VIVANTE(0): RGB weight 565
    (=3D=3D) VIVANTE(0): Default visual is TrueColor
    (=3D=3D) VIVANTE(0): Using gamma correction (1.0, 1.0, 1.0)
    (**) VIVANTE(0): Option "fbdev" "/dev/fb0"
    (II) VIVANTE(0): checking modes against framebuffer device...
    (II) VIVANTE(0): checking modes against monitor...
    (II) VIVANTE(0): Use built in mode (bpp 16)
    (--) VIVANTE(0): Virtual size is 0x0 (pitch 0)
    (=3D=3D) VIVANTE(0): DPI set to (96, 96)
    (II) Loading sub module "fb"
    (II) LoadModule: "fb"
    (II) Loading /usr/lib/xorg/modules/libfb.so
    (II) Module fb: vendor=3D"X.Org Foundation"
            compiled for 1.18.0, module version =3D 1.0.0
            ABI class: X.Org ANSI C Emulation, version 0.4
    (II) Loading sub module "exa"
    (II) LoadModule: "exa"
    (II) Loading /usr/lib/xorg/modules/libexa.so
    (II) Module exa: vendor=3D"X.Org Foundation"
            compiled for 1.18.0, module version =3D 2.6.0
            ABI class: X.Org Video Driver, version 20.0
    (II) VIVANTE(0): printing discovered frame buffer 'fb0' supported modes=
:
    (II) VIVANTE(0): Modeline "U:1024x768p-60"x0.0   65.00  1024 1064 1124 =
1344  768 775 785 806 -hsync -vsync -csync (48.4 kHz eP)
    (II) VIVANTE(0): Output DISP4 BG has no monitor section
    (II) VIVANTE(0): Printing probed modes for output DISP4 BG
    (II) VIVANTE(0): Modeline "U:1024x768p-60"x60.0   65.00  1024 1064 1124=
 1344  768 775 785 806 -hsync -vsync -csync (48.4 kHz eP)
    (II) VIVANTE(0): Output DISP4 BG connected
    (II) VIVANTE(0): Using exact sizes for initial modes
    (II) VIVANTE(0): Output DISP4 BG using initial mode U:1024x768p-60 +0+0
    (II) VIVANTE(0): imxDisplayPreInit: virtual set 1024 x 768, display wid=
th 0
    (II) VIVANTE(0): FBDevPreInit: adjust display width 1024
    (**) VIVANTE(0): PreInit done
    (II) VIVANTE(0): Init mode for fb device
    (II) VIVANTE(0): hardware: DISP4 BG (video memory: 8164kB)
    (II) VIVANTE(0): FB Start =3D 0x75da6000  FB Base =3D 0x75da6000  FB Of=
fset =3D (nil) FB PhyBase 0x3c500000
    (II) VIVANTE(0): reserve 4177920 bytes for on screen frame buffer; tota=
l fb memory size 8359936 bytes; offset of shadow buffer 4177920
    (II) VIVANTE(0): hardware: DISP4 BG (video memory: 8164kB)
    (WW) VIVANTE(0): FBIOPAN_DISPLAY: Invalid argument
    (II) VIVANTE(0): test Initializing EXA
    (EE)
    (EE) Backtrace:
    (EE)
    (EE) Segmentation fault at address 0xc
    (EE)
    Fatal server error:
    (EE) Caught signal 11 (Segmentation fault). Server aborting
    (EE)
    (EE)
    Please consult the The X.Org Foundation support
             at http://wiki.x.org
     for help.
    (EE) Please also check the log file at "/var/log/Xorg.0.log" for additi=
onal information.
    (EE)
    (EE) Server terminated with error (1). Closing log file.
    Aborted

You can see in the final dozen lines or so that it gets a SIGSEGV. I've sea=
rched for a solution online but the only close one I've discovered (https:/=
/community.nxp.com/thread/327339) is for a different error.

For what it's worth, the working Fido variant is much the same (though with=
 different version numbers for components, primarily Xorg 1.16.3) but it ca=
rries on after the "test Initializing EXA" line:

    [2750328.650] (II) VIVANTE(0): test Initializing EXA
    [2750328.650] (II) VIVANTE(0): (driver build from: f2cae50cf6c3c924be2e=
06c43c819cb23ca1bf5c)
    [2750328.654] (II) EXA(0): Driver allocated offscreen pixmaps
    [2750328.654] (II) EXA(0): Driver registered support for the following =
operations:
    [2750328.654] (II)         Solid
    [2750328.654] (II)         Copy
    [2750328.654] (II)         Composite (RENDER acceleration)
    [2750328.654] (II)         UploadToScreen
    [2750328.670] (II) VIVANTE(0): Init SHM pixmap support
    [2750328.670] (=3D=3D) VIVANTE(0): Backing store enabled
    [2750328.673] (=3D=3D) VIVANTE(0): DPMS enabled
    [2750328.673] (II) VIVANTE(0): RandR 1.2 enabled, ignore the following =
RandR disabled message.
    [2750328.674] drmOpenDevice: node name is /dev/dri/card0
    [2750328.674] drmOpenDevice: open result is 11, (OK)
    [2750328.674] drmOpenDevice: node name is /dev/dri/card0
    [2750328.674] drmOpenDevice: open result is 11, (OK)
    [2750328.674] drmOpenByBusid: Searching for BusID platform:Vivante GCCo=
re:00
    [2750328.674] drmOpenDevice: node name is /dev/dri/card0
    [2750328.674] drmOpenDevice: open result is 11, (OK)
    [2750328.674] drmOpenByBusid: drmOpenMinor returns 11
    [2750328.674] drmOpenByBusid: drmGetBusid reports platform:Vivante GCCo=
re:00
    [2750328.674] (II) [drm] DRM interface version 1.4
    [2750328.674] (II) [drm] DRM open master succeeded.
    [2750328.674] (II) VIVANTE(0): [drm] Using the DRM lock SAREA also for =
drawables.
    [2750328.674] (II) VIVANTE(0): [drm] framebuffer handle =3D 0x44700000
    [2750328.674] (II) VIVANTE(0): [drm] added 1 reserved context for kerne=
l
    [2750328.674] (II) VIVANTE(0): X context handle =3D 0x1
    [2750328.675] (II) VIVANTE(0): [drm] installed DRM signal handler
    [2750328.675] (II) VIVANTE(0): [DRI] installation complete
    [2750328.675] (--) RandR disabled
    [2750328.702] (II) AIGLX: Screen 0 is not DRI2 capable
    [2750328.702] (EE) AIGLX: reverting to software rendering
    [2750328.751] (II) AIGLX: Loaded and initialized swrast
    [2750328.751] (II) GLX: Initialized DRISWRAST GL provider for screen 0
    [2750328.753] (II) VIVANTE(0): Setting screen physical size to 270 x 20=
3

I'd appreciate any pointers on how best to debug/resolve this issue since I=
 cannot appear to get any more detailed information out of `Xorg` itself. O=
r, alternatively, if anyone has seen this same (or very similar) problem, h=
ow was it solved?

Cheers,
Al.


Allan Chandler | Software Engineer

DTI Group Ltd | Transit Security & Surveillance

31 Affleck Road, Perth Airport, WA 6105, AU

P | F | allan.chandler@dti.com.au



Visit our website www.dti.com.au<http://www.dti.com.au>

The information contained in this email is confidential. If you receive thi=
s email in error, please inform DTI Group Ltd via the above contact details=
. If you are not the intended recipient, you may not use or disclose the in=
formation contained in this email or attachments.

--_000_FD3EC9758442224FA81FA20FD6F1AE8C64431B8Cmx01dtilan_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Calibri}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
span.EmailStyle17
	{font-family:"Calibri","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}
div.WordSection1
	{}
-->
</style>
</head>
<body lang=3D"EN-AU" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">We recently did (attempted? ) an upgrade of our Yoct=
o embedded build system from Fido to Krogoth and, other than one rather mas=
sive issue, it all went well.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">The massive issue is the fact that &nbsp;X11 is appa=
rently not starting correctly. The embedded device boots okay since we can =
see in via a serial console as well as connecting via SSH.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">We've narrowed the actual issue down to the Xorg exe=
cutable, after following the process the the rc5.d Xserver satrtup scripts =
and xinit - basically, Xorg is dumping core with the following output:</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; X.Org X Server 1.18.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Release Date: 2015-11-09</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; X Protocol Version 11, Revision 0=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Build Operating System: Linux 3.1=
9.0-25-generic x86_64</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Current Operating System: Linux i=
mx6 3.14.28&#43;g2b0ab6d #1 SMP PREEMPT Thu Jun 30 12:20:09 AWST 2016 armv7=
l</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Kernel command line: console=3Dtt=
ymxc0,115200 consoleblank=3D0 root=3D/dev/mmcblk3p2 rootwait</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Build Date: 30 June 2016&nbsp; 01=
:38:24PM</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;Current version of pixman: 0=
.32.8</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Before reporting problems, check http://wiki.x.org</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; to make sure that you have the latest version.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Markers: (--) probed, (**) from c=
onfig file, (=3D=3D) default setting,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; (&#43;&#43;) from command line, (!!) notice, (II) informatio=
nal,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; (WW) warning, (EE) error, (NI) not implemented, (??) unknown=
.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) Log file: &quot;/var/log=
/Xorg.0.log&quot;, Time: Fri Jul&nbsp; 1 00:12:43 2016</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) Using config file: &quot=
;/etc/X11/xorg.conf&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) Using system config dire=
ctory &quot;/usr/share/X11/xorg.conf.d&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) No Layout section.&nbsp;=
 Using the first Screen section.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) No screen section availa=
ble. Using defaults.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) |--&gt;Screen &quot;Default =
Screen Section&quot; (0)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) |&nbsp;&nbsp; |--&gt;Monitor=
 &quot;&lt;default monitor&gt;&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) No device specified for =
screen &quot;Default Screen Section&quot;.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Using the first device section listed.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) |&nbsp;&nbsp; |--&gt;Device =
&quot;i.MX Accelerated Framebuffer Device&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) No monitor specified for=
 screen &quot;Default Screen Section&quot;.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Using a default monitor configuration.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) Option &quot;BlankTime&quot;=
 &quot;0&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) Option &quot;StandbyTime&quo=
t; &quot;0&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) Option &quot;SuspendTime&quo=
t; &quot;0&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) Option &quot;OffTime&quot; &=
quot;0&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) Automatically adding dev=
ices</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) Automatically enabling d=
evices</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) Automatically adding GPU=
 devices</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) Max clients allowed: 256=
, resource mask: 0x1fffff</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (WW) The directory &quot;/usr/sha=
re/fonts/X11/misc/&quot; does not exist.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Entry deleted from font path.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (WW) The directory &quot;/usr/sha=
re/fonts/X11/TTF/&quot; does not exist.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Entry deleted from font path.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (WW) The directory &quot;/usr/sha=
re/fonts/X11/OTF/&quot; does not exist.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Entry deleted from font path.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (WW) The directory &quot;/usr/sha=
re/fonts/X11/Type1/&quot; does not exist.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Entry deleted from font path.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (WW) The directory &quot;/usr/sha=
re/fonts/X11/100dpi/&quot; does not exist.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Entry deleted from font path.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (WW) The directory &quot;/usr/sha=
re/fonts/X11/75dpi/&quot; does not exist.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Entry deleted from font path.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) FontPath set to:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;(=3D=3D) ModulePath set to &=
quot;/usr/lib/xorg/modules&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) The server relies on udev to=
 provide the list of input devices.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; If no devices become available, reconfigure udev or disable =
AutoAddDevices.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loader magic: 0x1c3a20</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Module ABI versions:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; X.Org ANSI C Emulation: 0.4</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; X.Org Video Driver: 20.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; X.Org XInput driver : 22.1</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; X.Org Server Extension : 9.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) xfree86: Adding drm device (=
/dev/dri/card0)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) no primary bus or device fou=
nd</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; falling back to /sys/devices/platform/Vivante GCCore/drm/car=
d0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) LoadModule: &quot;glx&quot;<=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading /usr/lib/xorg/module=
s/extensions/libglx.so</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Module glx: vendor=3D&quot;X=
.Org Foundation&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; compiled for 1.18.0, module version =3D 1.0.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ABI class: X.Org Server Extension, version 9.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) AIGLX enabled</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) LoadModule: &quot;vivante&qu=
ot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading /usr/lib/xorg/module=
s/drivers/vivante_drv.so</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Module vivante: vendor=3D&qu=
ot;X.Org Foundation&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; compiled for 1.18.0, module version =3D 1.0.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Module class: X.Org Video Driver</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ABI class: X.Org Video Driver, version 20.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE: driver for vivante =
fb: VivanteGC500, VivanteGC2100,</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; VivanteGCCORE</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (--) using VT number 3</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;(WW) Falling back to old pro=
be method for vivante</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading sub module &quot;fbd=
evhw&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) LoadModule: &quot;fbdevhw&qu=
ot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading /usr/lib/xorg/module=
s/libfbdevhw.so</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Module fbdevhw: vendor=3D&qu=
ot;X.Org Foundation&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; compiled for 1.18.0, module version =3D 0.0.2</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ABI class: X.Org Video Driver, version 20.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): using default de=
vice</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Device preferred=
 mode 'fb0':U:1024x768p-60</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Creating default=
 Display subsection in Screen section</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &quot;Default Screen Section&quot; for depth/fbbpp 16/16</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) VIVANTE(0): Depth 16, (=
=3D=3D) framebuffer bpp 16</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) VIVANTE(0): RGB weight 5=
65</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) VIVANTE(0): Default visu=
al is TrueColor</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) VIVANTE(0): Using gamma =
correction (1.0, 1.0, 1.0)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) VIVANTE(0): Option &quot;fbd=
ev&quot; &quot;/dev/fb0&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): checking modes a=
gainst framebuffer device...</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): checking modes a=
gainst monitor...</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Use built in mod=
e (bpp 16)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (--) VIVANTE(0): Virtual size is =
0x0 (pitch 0)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (=3D=3D) VIVANTE(0): DPI set to (=
96, 96)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading sub module &quot;fb&=
quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) LoadModule: &quot;fb&quot;</=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading /usr/lib/xorg/module=
s/libfb.so</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Module fb: vendor=3D&quot;X.=
Org Foundation&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; compiled for 1.18.0, module version =3D 1.0.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ABI class: X.Org ANSI C Emulation, version 0.4</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading sub module &quot;exa=
&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) LoadModule: &quot;exa&quot;<=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Loading /usr/lib/xorg/module=
s/libexa.so</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) Module exa: vendor=3D&quot;X=
.Org Foundation&quot;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; compiled for 1.18.0, module version =3D 2.6.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ABI class: X.Org Video Driver, version 20.0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): printing discove=
red frame buffer 'fb0' supported modes:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Modeline &quot;U=
:1024x768p-60&quot;x0.0 &nbsp;&nbsp;65.00&nbsp; 1024 1064 1124 1344&nbsp; 7=
68 775 785 806 -hsync -vsync -csync (48.4 kHz eP)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Output DISP4 BG =
has no monitor section</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Printing probed =
modes for output DISP4 BG</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Modeline &quot;U=
:1024x768p-60&quot;x60.0 &nbsp;&nbsp;65.00&nbsp; 1024 1064 1124 1344&nbsp; =
768 775 785 806 -hsync -vsync -csync (48.4 kHz eP)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Output DISP4 BG =
connected</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Using exact size=
s for initial modes</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Output DISP4 BG =
using initial mode U:1024x768p-60 &#43;0&#43;0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): imxDisplayPreIni=
t: virtual set 1024 x 768, display width 0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): FBDevPreInit: ad=
just display width 1024</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (**) VIVANTE(0): PreInit done</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): Init mode for fb=
 device</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): hardware: DISP4 =
BG (video memory: 8164kB)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): FB Start =3D 0x7=
5da6000&nbsp; FB Base =3D 0x75da6000&nbsp; FB Offset =3D (nil) FB PhyBase 0=
x3c500000</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): reserve 4177920 =
bytes for on screen frame buffer; total fb memory size 8359936 bytes; offse=
t of shadow buffer 4177920</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): hardware: DISP4 =
BG (video memory: 8164kB)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (WW) VIVANTE(0): FBIOPAN_DISPLAY:=
 Invalid argument</p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; (II) VIVANTE(0): test Initiali=
zing EXA</b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; (EE)</b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; (EE) Backtrace:</b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; (EE)</b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; (EE) Segmentation fault at add=
ress 0xc</b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; (EE)</b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; Fatal server error:</b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp; (EE) Caught signal 11 (Segment=
ation fault). Server aborting</b></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (EE)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (EE)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Please consult the The X.Org Foun=
dation support</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; at http://wiki.x.org</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; for help.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (EE) Please also check the log fi=
le at &quot;/var/log/Xorg.0.log&quot; for additional information.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (EE)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (EE) Server terminated with error=
 (1). Closing log file.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; Aborted</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">You can see in the final dozen lines or so that it g=
ets a SIGSEGV. I've searched for a solution online but the only close one I=
've discovered (https://community.nxp.com/thread/327339) is for a different=
 error.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">For what it's worth, the working Fido variant is muc=
h the same (though with different version numbers for components, primarily=
 Xorg 1.16.3) but it carries on after the &quot;test Initializing EXA&quot;=
 line:</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.650] (II) VIVANTE(0): te=
st Initializing EXA</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.650] (II) VIVANTE(0): (d=
river build from: f2cae50cf6c3c924be2e06c43c819cb23ca1bf5c)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.654] (II) EXA(0): Driver=
 allocated offscreen pixmaps</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.654] (II) EXA(0): Driver=
 registered support for the following operations:</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.654] (II)&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Solid</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.654] (II)&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copy</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.654] (II)&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Composite (RENDER acceleration)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.654] (II)&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UploadToScreen</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.670] (II) VIVANTE(0): In=
it SHM pixmap support</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.670] (=3D=3D) VIVANTE(0)=
: Backing store enabled</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.673] (=3D=3D) VIVANTE(0)=
: DPMS enabled</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.673] (II) VIVANTE(0): Ra=
ndR 1.2 enabled, ignore the following RandR disabled message.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenDevice: node=
 name is /dev/dri/card0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenDevice: open=
 result is 11, (OK)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenDevice: node=
 name is /dev/dri/card0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenDevice: open=
 result is 11, (OK)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenByBusid: Sea=
rching for BusID platform:Vivante GCCore:00</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenDevice: node=
 name is /dev/dri/card0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenDevice: open=
 result is 11, (OK)</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenByBusid: drm=
OpenMinor returns 11</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] drmOpenByBusid: drm=
GetBusid reports platform:Vivante GCCore:00</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] (II) [drm] DRM inte=
rface version 1.4</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] (II) [drm] DRM open=
 master succeeded.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] (II) VIVANTE(0): [d=
rm] Using the DRM lock SAREA also for drawables.</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] (II) VIVANTE(0): [d=
rm] framebuffer handle =3D 0x44700000</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] (II) VIVANTE(0): [d=
rm] added 1 reserved context for kernel</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.674] (II) VIVANTE(0): X =
context handle =3D 0x1</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.675] (II) VIVANTE(0): [d=
rm] installed DRM signal handler</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.675] (II) VIVANTE(0): [D=
RI] installation complete</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.675] (--) RandR disabled=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.702] (II) AIGLX: Screen =
0 is not DRI2 capable</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.702] (EE) AIGLX: reverti=
ng to software rendering</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.751] (II) AIGLX: Loaded =
and initialized swrast</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.751] (II) GLX: Initializ=
ed DRISWRAST GL provider for screen 0</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; [2750328.753] (II) VIVANTE(0): Se=
tting screen physical size to 270 x 203</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I'd appreciate any pointers on how best to debug/res=
olve this issue since I cannot appear to get any more detailed information =
out of `Xorg` itself. Or, alternatively, if anyone has seen this same (or v=
ery similar) problem, how was it solved?</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Cheers,</p>
<p class=3D"MsoNormal">Al.</p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<p style=3D"font-size:10pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;; color:#595959"><b>Allan Chandler</b> | Software Engineer
</p>
<p style=3D"font-size:10pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;; color:#595959"><b>DTI Group Ltd</b> |
<b><span style=3D"font-size:7.5pt; font-family:&quot;Tahoma&quot;,&quot;san=
s-serif&quot;; color:#E36C0A">Transit Security &amp; Surveillance</span></b=
></p>
<p style=3D"font-size:7.5pt; font-family:&quot;Tahoma&quot;,&quot;sans-seri=
f&quot;; color:#595959">31 Affleck Road, Perth Airport, WA 6105, AU</p>
<p style=3D"font-size:7.5pt; font-family:&quot;Tahoma&quot;,&quot;sans-seri=
f&quot;; color:#595959">P | F | allan.chandler@dti.com.au
</p>
<p style=3D"font-size:7.5pt; font-family:&quot;Tahoma&quot;,&quot;sans-seri=
f&quot;; color:#595959"><br>
<br>
</p>
<p style=3D"font-size:7.5pt; font-family:&quot;Tahoma&quot;,&quot;sans-seri=
f&quot;; color:#595959">Visit our website
<a href=3D"http://www.dti.com.au">www.dti.com.au</a> </p>
<p style=3D"font-size:7.5pt; font-family:&quot;Tahoma&quot;,&quot;sans-seri=
f&quot;; color:#595959">The information contained in this email is confiden=
tial. If you receive this email in error, please inform DTI Group Ltd via t=
he above contact details. If you are not the intended
 recipient, you may not use or disclose the information contained in this e=
mail or attachments.</p>
</body>
</html>

--_000_FD3EC9758442224FA81FA20FD6F1AE8C64431B8Cmx01dtilan_--
