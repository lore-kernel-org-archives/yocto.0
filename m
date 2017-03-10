Return-Path: <steove@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87C47E009B9; Fri, 10 Mar 2017 05:26:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (steove[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.34.91 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 05:26:34 PST
Received: from COL004-OMC2S17.hotmail.com (col004-omc2s17.hotmail.com
	[65.55.34.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A34EE009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:26:34 -0800 (PST)
Received: from APC01-SG2-obe.outbound.protection.outlook.com ([65.55.34.72])
	by COL004-OMC2S17.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 10 Mar 2017 05:25:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=h0ffrLRErrYBXq4LDnXa04wwcJ1GeIMtawCC+jy4WAQ=;
	b=UZZhUm5Ipz3of/IXZDGgZI/eCRjJKmOsdhCu4D1ZDKcBOtshb0jEdQfcFzHfJ3vV6LTjbEXh4vcSN2NuJwDoqsbVUAFEq+6xXpKRoT2wyY2ENma7LCgET+cZXPOV493NRbvIHAZGwcejXWm9pEHugoDdt159LiNqfEcCpDsa9kukMB16ZJM0fn0Z67bWur8hkDY0Y4cKz0/+U3Ybhl/JAsMbLT03kOJGXn9sQQKkAteGKoGiHK+duSQv9jnAOuVHE4MYAnvpZ4fY6L9X06BajNVMGhR/7LwhnKoGEDKSALfZlDiVBjBhac+pvba/S49CAZ+r2GXB1GvM0uuhH/Tojw==
Received: from HK2APC01FT039.eop-APC01.prod.protection.outlook.com
	(10.152.248.51) by HK2APC01HT079.eop-APC01.prod.protection.outlook.com
	(10.152.249.145) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7;
	Fri, 10 Mar 2017 13:25:29 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com (10.152.248.52) by
	HK2APC01FT039.mail.protection.outlook.com (10.152.249.7) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.7 via Frontend Transport; Fri, 10 Mar 2017 13:25:29 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) by
	SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) with mapi id
	15.01.0961.018; Fri, 10 Mar 2017 13:25:29 +0000
From: Steve Plant <steove@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Raspberry Pi2 Fails to boot into LXDE.
Thread-Index: AQHSmAS6lDZ5/Vwgn0y/oXWyad/Mn6GLL8AAgALe3to=
Date: Fri, 10 Mar 2017 13:25:28 +0000
Message-ID: <SG2PR0301MB20164B4F20AB1A46147436A5D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>,
	<20170308171742.GC2586@haswell>
In-Reply-To: <20170308171742.GC2586@haswell>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:E260246868EF446BEA6AC2E6E727AD3420587E85A3D3F36ABEF657C3BACAAC33;
	UpperCasedChecksum:5E584074997815803AC0A4DCE0A0F6AAA7D34D3269762AFB26948F3DED24123E;
	SizeAsReceived:7859; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [aZP9hf4PZ7h+4qC4QrF8pjVsYTYdQcyJ]
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HK2APC01HT079;
	5:LDutrZ3cTN8fUwOJu043wp1GBR9+w8DpS5SsU+tjvtVA7njVny0FchAAtVB3PcIGMWHcHxV9xMVdP9iW90qu3lIbKNweFz1JcvNIIUe3PXhSG2PhcGakDecZoEd2ogzJpmeT1qmECRCoCy6/VBttKsrxIghHfLvKRN7OCAYSHIs=;
	24:KGYgH4k7SIikpCmmJELEZgNZGPbv2F80n4dMTIhh9SWjxuC40Uk/0hhgKOY8gFUQfKDsi/74/ckYVPYK/Jw1QPogTECM4ASKRJCxpBLcvlA=;
	7:rqzjgmzocWfinIdLUrYfllBq28RIpUUacvdptn6Dyo+wRSPKkChL4LtlD9A5AstTwLpu7y1rSUaa3J47jd9PyS73pfsTrbGUIVlX7BkTpKar3ETNsJDHf4HY+n80sAMQGoc6m18It33C/Ovqd9EY2VnmaagcBVh/aUkDxjORb8PyvdiVSVvf4yll4JgU3fVS9WRV3i2RHTwPJ+fWzXAjquHLhrz7LnePqs6M1yLQzviUsIvH5MydsJgqaakV4HV/AupjbAnCzb3c47ME3K1LDAPPYC7FcPEs6lsnc01UAD15JaoP3b3LJ1wLTwod+Ssy
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900016);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2APC01HT079;
	H:SG2PR0301MB2016.apcprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 9705f971-8b07-4e26-2fb8-08d467b8ebb7
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1603101448)(1601125254)(1701031045);
	SRVR:HK2APC01HT079; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(432015087)(444000031); SRVR:HK2APC01HT079; BCL:0; PCL:0;
	RULEID:; SRVR:HK2APC01HT079; 
x-forefront-prvs: 02426D11FE
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2017 13:25:28.9408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT079
X-OriginalArrivalTime: 10 Mar 2017 13:25:33.0604 (UTC)
	FILETIME=[CBDA6E40:01D299A1]
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
X-List-Received-Date: Fri, 10 Mar 2017 13:26:38 -0000
Content-Language: en-NZ
Content-Type: multipart/alternative;
	boundary="_000_SG2PR0301MB20164B4F20AB1A46147436A5D1200SG2PR0301MB2016_"

--_000_SG2PR0301MB20164B4F20AB1A46147436A5D1200SG2PR0301MB2016_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Khem,


I was finally able to SSH into the raspberry pi and found the Xorg.log file=
, exactly where you said it would be.


Looking at it, for some reason Xorg cannot find the module evdev. I have lo=
oked for this but cannot find where it is supposed to be located.


I did notice that there was a "libevdev" which had not been included into t=
he build, so I added that by updating the Bitbake variables with:


IMAGE_INSTALL_append
libevdev packagegroup-core-x11-base packagegroup-lxde-base connman


Rebuild the "rpi-basic-image" and copied the image to the SD card, booted u=
p the rpi but no change. I have noticed that there is also a "python-evdev"=
 package with is not included in the build, but that is part of the "meta-p=
ython" layer which I have not added. Do I need to add this???



Here is the Xorg.log file


[3087510.347]
X.Org X Server 1.18.4
Release Date: 2016-07-19
[3087510.347] X Protocol Version 11, Revision 0
[3087510.347] Build Operating System: Linux 3.16.0-4-amd64 x86_64
[3087510.347] Current Operating System: Linux raspberrypi2 4.4.48 #1 SMP Sa=
t Feb 25 00:03:23 AEST 2017 armv7l
[3087510.347] Kernel command line: dma.dmachans=3D0x7f35 bcm2708_fb.fbwidth=
=3D800 bcm2708_fb.fbheight=3D480 bcm2709.boardrev=3D0xa21041 bcm2709.serial=
=3D0xf9e8fbc6 smsc95xx.macaddr=3DB8:27:EB:E8:FB:C6 bcm2708_fb.fbswap=3D1 bc=
m2709.uart_clock=3D48000000 bcm2709.disk_led_gpio=3D47 bcm2709.disk_led_act=
ive_low=3D0 vc_mem.mem_base=3D0x3dc00000 vc_mem.mem_size=3D0x3f000000  dwc_=
otg.lpm_enable=3D0 console=3DttyAMA0,115200 root=3D/dev/mmcblk0p2 rootfstyp=
e=3Dext4 rootwait
[3087510.347] Build Date: 07 March 2017  09:16:40PM
[3087510.347]
[3087510.347] Current version of pixman: 0.34.0
[3087510.347]     Before reporting problems, check http://wiki.x.org
    to make sure that you have the latest version.
[3087510.347] Markers: (--) probed, (**) from config file, (=3D=3D) default=
 setting,
    (++) from command line, (!!) notice, (II) informational,
    (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
[3087510.348] (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Mar 10 11=
:43:14 2017
[3087510.359] (=3D=3D) Using config file: "/etc/X11/xorg.conf"
[3087510.359] (=3D=3D) Using config directory: "/etc/X11/xorg.conf.d"
[3087510.359] (=3D=3D) Using system config directory "/usr/share/X11/xorg.c=
onf.d"
[3087510.372] (=3D=3D) No Layout section.  Using the first Screen section.
[3087510.372] (=3D=3D) No screen section available. Using defaults.
[3087510.372] (**) |-->Screen "Default Screen Section" (0)
[3087510.372] (**) |   |-->Monitor "<default monitor>"
[3087510.379] (=3D=3D) No monitor specified for screen "Default Screen Sect=
ion".
    Using a default monitor configuration.
[3087510.380] (=3D=3D) Automatically adding devices
[3087510.380] (=3D=3D) Automatically enabling devices
[3087510.380] (=3D=3D) Automatically adding GPU devices
[3087510.380] (=3D=3D) Max clients allowed: 256, resource mask: 0x1fffff
[3087510.383] (WW) The directory "/usr/share/fonts/X11/misc/" does not exis=
t.
[3087510.383]     Entry deleted from font path.
[3087510.383] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist=
.
[3087510.383]     Entry deleted from font path.
[3087510.383] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist=
.
[3087510.383]     Entry deleted from font path.
[3087510.383] (WW) The directory "/usr/share/fonts/X11/Type1/" does not exi=
st.
[3087510.383]     Entry deleted from font path.
[3087510.383] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not ex=
ist.
[3087510.383]     Entry deleted from font path.
[3087510.383] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not exi=
st.
[3087510.383]     Entry deleted from font path.
[3087510.383] (=3D=3D) FontPath set to:

[3087510.383] (=3D=3D) ModulePath set to "/usr/lib/xorg/modules"
[3087510.383] (II) The server relies on udev to provide the list of input d=
evices.
    If no devices become available, reconfigure udev or disable AutoAddDevi=
ces.
[3087510.383] (II) Loader magic: 0x1c3b80
[3087510.383] (II) Module ABI versions:
[3087510.384]     X.Org ANSI C Emulation: 0.4
[3087510.384]     X.Org Video Driver: 20.0
[3087510.384]     X.Org XInput driver : 22.1
[3087510.384]     X.Org Server Extension : 9.0
[3087510.384] (II) no primary bus or device found
[3087510.384] (II) LoadModule: "glx"
[3087510.393] (WW) Warning, couldn't open module glx
[3087510.393] (II) UnloadModule: "glx"
[3087510.393] (II) Unloading glx
[3087510.393] (EE) Failed to load module "glx" (module does not exist, 0)
[3087510.394] (=3D=3D) Matched modesetting as autoconfigured driver 0
[3087510.394] (=3D=3D) Matched fbdev as autoconfigured driver 1
[3087510.394] (=3D=3D) Assigned the driver to the xf86ConfigLayout
[3087510.394] (II) LoadModule: "modesetting"
[3087510.394] (WW) Warning, couldn't open module modesetting
[3087510.394] (II) UnloadModule: "modesetting"
[3087510.394] (II) Unloading modesetting
[3087510.394] (EE) Failed to load module "modesetting" (module does not exi=
st, 0)
[3087510.394] (II) LoadModule: "fbdev"
[3087510.395] (II) Loading /usr/lib/xorg/modules/drivers/fbdev_drv.so
[3087510.400] (II) Module fbdev: vendor=3D"X.Org Foundation"
[3087510.400]     compiled for 1.18.4, module version =3D 0.4.4
[3087510.400]     Module class: X.Org Video Driver
[3087510.400]     ABI class: X.Org Video Driver, version 20.0
[3087510.400] (II) FBDEV: driver for framebuffer: fbdev
[3087510.400] (--) using VT number 1

[3087510.408] (WW) Falling back to old probe method for fbdev
[3087510.408] (II) Loading sub module "fbdevhw"
[3087510.408] (II) LoadModule: "fbdevhw"
[3087510.409] (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
[3087510.420] (II) Module fbdevhw: vendor=3D"X.Org Foundation"
[3087510.420]     compiled for 1.18.4, module version =3D 0.0.2
[3087510.420]     ABI class: X.Org Video Driver, version 20.0
[3087510.421] (II) FBDEV(0): using default device
[3087510.421] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card s=
upport
[3087510.421] (II) FBDEV(0): Creating default Display subsection in Screen =
section
    "Default Screen Section" for depth/fbbpp 24/32
[3087510.421] (=3D=3D) FBDEV(0): Depth 24, (=3D=3D) framebuffer bpp 32
[3087510.421] (=3D=3D) FBDEV(0): RGB weight 888
[3087510.421] (=3D=3D) FBDEV(0): Default visual is TrueColor
[3087510.421] (=3D=3D) FBDEV(0): Using gamma correction (1.0, 1.0, 1.0)
[3087510.421] (II) FBDEV(0): hardware: BCM2708 FB (video memory: 1500kB)
[3087510.421] (II) FBDEV(0): checking modes against framebuffer device...
[3087510.421] (II) FBDEV(0): checking modes against monitor...
[3087510.421] (--) FBDEV(0): Virtual size is 800x480 (pitch 800)
[3087510.421] (**) FBDEV(0):  Built-in mode "current"
[3087510.421] (=3D=3D) FBDEV(0): DPI set to (96, 96)
[3087510.422] (II) Loading sub module "fb"
[3087510.422] (II) LoadModule: "fb"
[3087510.422] (II) Loading /usr/lib/xorg/modules/libfb.so
[3087510.459] (II) Module fb: vendor=3D"X.Org Foundation"
[3087510.459]     compiled for 1.18.4, module version =3D 1.0.0
[3087510.459]     ABI class: X.Org ANSI C Emulation, version 0.4
[3087510.459] (**) FBDEV(0): using shadow framebuffer
[3087510.459] (II) Loading sub module "shadow"
[3087510.459] (II) LoadModule: "shadow"
[3087510.459] (II) Loading /usr/lib/xorg/modules/libshadow.so
[3087510.482] (II) Module shadow: vendor=3D"X.Org Foundation"
[3087510.482]     compiled for 1.18.4, module version =3D 1.1.0
[3087510.482]     ABI class: X.Org ANSI C Emulation, version 0.4
[3087510.482] (=3D=3D) Depth 24 pixmap format is 32 bpp
[3087510.505] (=3D=3D) FBDEV(0): Backing store enabled
[3087510.506] (=3D=3D) FBDEV(0): DPMS enabled
[3087510.507] (=3D=3D) RandR enabled
[3087510.831] (II) config/udev: Adding input device SIGMACH1P USB Keykoard =
(/dev/input/event1)
[3087510.831] (**) SIGMACH1P USB Keykoard: Applying InputClass "evdev keybo=
ard catchall"
[3087510.831] (II) LoadModule: "evdev"
[3087510.832] (WW) Warning, couldn't open module evdev
[3087510.832] (II) UnloadModule: "evdev"
[3087510.832] (II) Unloading evdev
[3087510.832] (EE) Failed to load module "evdev" (module does not exist, 0)
[3087510.832] (EE) No input driver matching `evdev'
[3087510.835] (II) config/udev: Adding input device SIGMACH1P USB Keykoard =
(/dev/input/event2)
[3087510.835] (**) SIGMACH1P USB Keykoard: Applying InputClass "evdev keybo=
ard catchall"
[3087510.835] (II) LoadModule: "evdev"
[3087510.835] (WW) Warning, couldn't open module evdev
[3087510.836] (II) UnloadModule: "evdev"
[3087510.836] (II) Unloading evdev
[3087510.836] (EE) Failed to load module "evdev" (module does not exist, 0)
[3087510.836] (EE) No input driver matching `evdev'
[3087510.837] (II) config/udev: Adding input device FT5406 memory based dri=
ver (/dev/input/event0)
[3087510.837] (**) FT5406 memory based driver: Applying InputClass "evdev t=
ouchscreen catchall"
[3087510.837] (II) LoadModule: "evdev"
[3087510.838] (WW) Warning, couldn't open module evdev
[3087510.838] (II) UnloadModule: "evdev"
[3087510.838] (II) Unloading evdev
[3087510.838] (EE) Failed to load module "evdev" (module does not exist, 0)
[3087510.838] (EE) No input driver matching `evdev'
[3087510.839] (II) config/udev: Adding input device FT5406 memory based dri=
ver (/dev/input/mouse0)
[3087510.839] (II) No input driver specified, ignoring this device.
[3087510.839] (II) This device may have been added with another device file=
.



Regards, Steve.


________________________________



--_000_SG2PR0301MB20164B4F20AB1A46147436A5D1200SG2PR0301MB2016_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi Khem,</p>
<p><br>
</p>
<p>I was finally able to SSH into the raspberry pi and found the Xorg.log f=
ile, exactly where you said it would be.</p>
<p><br>
</p>
<p>Looking at it, for some reason Xorg cannot find the module evdev. I have=
 looked for this but cannot find where it is supposed to be located.
<br>
</p>
<p><br>
</p>
<p>I did notice that there was a &quot;libevdev&quot; which had not been in=
cluded into the build, so I added that by updating the Bitbake variables wi=
th:</p>
<p><br>
</p>
<p></p>
<dl><dt><span class=3D"js-config-var-name js-config-var-managed-name">IMAGE=
_INSTALL_append</span>
<span data-original-title=3D"Specifies additional packages to install into =
an image. If your build creates more than one image, the packages will be i=
nstalled in all of them" class=3D"glyphicon glyphicon-question-sign get-hel=
p" title=3D"">
</span></dt><dd class=3D"variable-list"><span id=3D"image_install" class=3D=
"lead ">libevdev packagegroup-core-x11-base packagegroup-lxde-base connman<=
/span></dd></dl>
<p></p>
<p><br>
</p>
<p>Rebuild the &quot;rpi-basic-image&quot; and copied the image to the SD c=
ard, booted up the rpi but no change. I have noticed that there is also a &=
quot;<span>python-evdev&quot;</span> package with is not included in the bu=
ild, but that is part of the &quot;meta-python&quot; layer which
 I have not added. Do I need to add this???</p>
<p><br>
</p>
<p><br>
</p>
<p>Here is the Xorg.log file<br>
</p>
<p><br>
</p>
<p></p>
<div>[3087510.347] <br>
X.Org X Server 1.18.4<br>
Release Date: 2016-07-19<br>
[3087510.347] X Protocol Version 11, Revision 0<br>
[3087510.347] Build Operating System: Linux 3.16.0-4-amd64 x86_64 <br>
[3087510.347] Current Operating System: Linux raspberrypi2 4.4.48 #1 SMP Sa=
t Feb 25 00:03:23 AEST 2017 armv7l<br>
[3087510.347] Kernel command line: dma.dmachans=3D0x7f35 bcm2708_fb.fbwidth=
=3D800 bcm2708_fb.fbheight=3D480 bcm2709.boardrev=3D0xa21041 bcm2709.serial=
=3D0xf9e8fbc6 smsc95xx.macaddr=3DB8:27:EB:E8:FB:C6 bcm2708_fb.fbswap=3D1 bc=
m2709.uart_clock=3D48000000 bcm2709.disk_led_gpio=3D47
 bcm2709.disk_led_active_low=3D0 vc_mem.mem_base=3D0x3dc00000 vc_mem.mem_si=
ze=3D0x3f000000&nbsp; dwc_otg.lpm_enable=3D0 console=3DttyAMA0,115200 root=
=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait<br>
[3087510.347] Build Date: 07 March 2017&nbsp; 09:16:40PM<br>
[3087510.347] &nbsp;<br>
[3087510.347] Current version of pixman: 0.34.0<br>
[3087510.347] &nbsp;&nbsp; &nbsp;Before reporting problems, check http://wi=
ki.x.org<br>
&nbsp;&nbsp; &nbsp;to make sure that you have the latest version.<br>
[3087510.347] Markers: (--) probed, (**) from config file, (=3D=3D) default=
 setting,<br>
&nbsp;&nbsp; &nbsp;(&#43;&#43;) from command line, (!!) notice, (II) inform=
ational,<br>
&nbsp;&nbsp; &nbsp;(WW) warning, (EE) error, (NI) not implemented, (??) unk=
nown.<br>
[3087510.348] (=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Fri=
 Mar 10 11:43:14 2017<br>
[3087510.359] (=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br=
>
[3087510.359] (=3D=3D) Using config directory: &quot;/etc/X11/xorg.conf.d&q=
uot;<br>
[3087510.359] (=3D=3D) Using system config directory &quot;/usr/share/X11/x=
org.conf.d&quot;<br>
[3087510.372] (=3D=3D) No Layout section.&nbsp; Using the first Screen sect=
ion.<br>
[3087510.372] (=3D=3D) No screen section available. Using defaults.<br>
[3087510.372] (**) |--&gt;Screen &quot;Default Screen Section&quot; (0)<br>
[3087510.372] (**) |&nbsp;&nbsp; |--&gt;Monitor &quot;&lt;default monitor&g=
t;&quot;<br>
[3087510.379] (=3D=3D) No monitor specified for screen &quot;Default Screen=
 Section&quot;.<br>
&nbsp;&nbsp; &nbsp;Using a default monitor configuration.<br>
[3087510.380] (=3D=3D) Automatically adding devices<br>
[3087510.380] (=3D=3D) Automatically enabling devices<br>
[3087510.380] (=3D=3D) Automatically adding GPU devices<br>
[3087510.380] (=3D=3D) Max clients allowed: 256, resource mask: 0x1fffff<br=
>
[3087510.383] (WW) The directory &quot;/usr/share/fonts/X11/misc/&quot; doe=
s not exist.<br>
[3087510.383] &nbsp;&nbsp; &nbsp;Entry deleted from font path.<br>
[3087510.383] (WW) The directory &quot;/usr/share/fonts/X11/TTF/&quot; does=
 not exist.<br>
[3087510.383] &nbsp;&nbsp; &nbsp;Entry deleted from font path.<br>
[3087510.383] (WW) The directory &quot;/usr/share/fonts/X11/OTF/&quot; does=
 not exist.<br>
[3087510.383] &nbsp;&nbsp; &nbsp;Entry deleted from font path.<br>
[3087510.383] (WW) The directory &quot;/usr/share/fonts/X11/Type1/&quot; do=
es not exist.<br>
[3087510.383] &nbsp;&nbsp; &nbsp;Entry deleted from font path.<br>
[3087510.383] (WW) The directory &quot;/usr/share/fonts/X11/100dpi/&quot; d=
oes not exist.<br>
[3087510.383] &nbsp;&nbsp; &nbsp;Entry deleted from font path.<br>
[3087510.383] (WW) The directory &quot;/usr/share/fonts/X11/75dpi/&quot; do=
es not exist.<br>
[3087510.383] &nbsp;&nbsp; &nbsp;Entry deleted from font path.<br>
[3087510.383] (=3D=3D) FontPath set to:<br>
&nbsp;&nbsp; &nbsp;<br>
[3087510.383] (=3D=3D) ModulePath set to &quot;/usr/lib/xorg/modules&quot;<=
br>
[3087510.383] (II) The server relies on udev to provide the list of input d=
evices.<br>
&nbsp;&nbsp; &nbsp;If no devices become available, reconfigure udev or disa=
ble AutoAddDevices.<br>
[3087510.383] (II) Loader magic: 0x1c3b80<br>
[3087510.383] (II) Module ABI versions:<br>
[3087510.384] &nbsp;&nbsp; &nbsp;X.Org ANSI C Emulation: 0.4<br>
[3087510.384] &nbsp;&nbsp; &nbsp;X.Org Video Driver: 20.0<br>
[3087510.384] &nbsp;&nbsp; &nbsp;X.Org XInput driver : 22.1<br>
[3087510.384] &nbsp;&nbsp; &nbsp;X.Org Server Extension : 9.0<br>
[3087510.384] (II) no primary bus or device found<br>
[3087510.384] (II) LoadModule: &quot;glx&quot;<br>
[3087510.393] (WW) Warning, couldn't open module glx<br>
[3087510.393] (II) UnloadModule: &quot;glx&quot;<br>
[3087510.393] (II) Unloading glx<br>
[3087510.393] (EE) Failed to load module &quot;glx&quot; (module does not e=
xist, 0)<br>
[3087510.394] (=3D=3D) Matched modesetting as autoconfigured driver 0<br>
[3087510.394] (=3D=3D) Matched fbdev as autoconfigured driver 1<br>
[3087510.394] (=3D=3D) Assigned the driver to the xf86ConfigLayout<br>
[3087510.394] (II) LoadModule: &quot;modesetting&quot;<br>
[3087510.394] (WW) Warning, couldn't open module modesetting<br>
[3087510.394] (II) UnloadModule: &quot;modesetting&quot;<br>
[3087510.394] (II) Unloading modesetting<br>
[3087510.394] (EE) Failed to load module &quot;modesetting&quot; (module do=
es not exist, 0)<br>
[3087510.394] (II) LoadModule: &quot;fbdev&quot;<br>
[3087510.395] (II) Loading /usr/lib/xorg/modules/drivers/fbdev_drv.so<br>
[3087510.400] (II) Module fbdev: vendor=3D&quot;X.Org Foundation&quot;<br>
[3087510.400] &nbsp;&nbsp; &nbsp;compiled for 1.18.4, module version =3D 0.=
4.4<br>
[3087510.400] &nbsp;&nbsp; &nbsp;Module class: X.Org Video Driver<br>
[3087510.400] &nbsp;&nbsp; &nbsp;ABI class: X.Org Video Driver, version 20.=
0<br>
[3087510.400] (II) FBDEV: driver for framebuffer: fbdev<br>
[3087510.400] (--) using VT number 1<br>
<br>
[3087510.408] (WW) Falling back to old probe method for fbdev<br>
[3087510.408] (II) Loading sub module &quot;fbdevhw&quot;<br>
[3087510.408] (II) LoadModule: &quot;fbdevhw&quot;<br>
[3087510.409] (II) Loading /usr/lib/xorg/modules/libfbdevhw.so<br>
[3087510.420] (II) Module fbdevhw: vendor=3D&quot;X.Org Foundation&quot;<br=
>
[3087510.420] &nbsp;&nbsp; &nbsp;compiled for 1.18.4, module version =3D 0.=
0.2<br>
[3087510.420] &nbsp;&nbsp; &nbsp;ABI class: X.Org Video Driver, version 20.=
0<br>
[3087510.421] (II) FBDEV(0): using default device<br>
[3087510.421] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card s=
upport<br>
[3087510.421] (II) FBDEV(0): Creating default Display subsection in Screen =
section<br>
&nbsp;&nbsp; &nbsp;&quot;Default Screen Section&quot; for depth/fbbpp 24/32=
<br>
[3087510.421] (=3D=3D) FBDEV(0): Depth 24, (=3D=3D) framebuffer bpp 32<br>
[3087510.421] (=3D=3D) FBDEV(0): RGB weight 888<br>
[3087510.421] (=3D=3D) FBDEV(0): Default visual is TrueColor<br>
[3087510.421] (=3D=3D) FBDEV(0): Using gamma correction (1.0, 1.0, 1.0)<br>
[3087510.421] (II) FBDEV(0): hardware: BCM2708 FB (video memory: 1500kB)<br=
>
[3087510.421] (II) FBDEV(0): checking modes against framebuffer device...<b=
r>
[3087510.421] (II) FBDEV(0): checking modes against monitor...<br>
[3087510.421] (--) FBDEV(0): Virtual size is 800x480 (pitch 800)<br>
[3087510.421] (**) FBDEV(0):&nbsp; Built-in mode &quot;current&quot;<br>
[3087510.421] (=3D=3D) FBDEV(0): DPI set to (96, 96)<br>
[3087510.422] (II) Loading sub module &quot;fb&quot;<br>
[3087510.422] (II) LoadModule: &quot;fb&quot;<br>
[3087510.422] (II) Loading /usr/lib/xorg/modules/libfb.so<br>
[3087510.459] (II) Module fb: vendor=3D&quot;X.Org Foundation&quot;<br>
[3087510.459] &nbsp;&nbsp; &nbsp;compiled for 1.18.4, module version =3D 1.=
0.0<br>
[3087510.459] &nbsp;&nbsp; &nbsp;ABI class: X.Org ANSI C Emulation, version=
 0.4<br>
[3087510.459] (**) FBDEV(0): using shadow framebuffer<br>
[3087510.459] (II) Loading sub module &quot;shadow&quot;<br>
[3087510.459] (II) LoadModule: &quot;shadow&quot;<br>
[3087510.459] (II) Loading /usr/lib/xorg/modules/libshadow.so<br>
[3087510.482] (II) Module shadow: vendor=3D&quot;X.Org Foundation&quot;<br>
[3087510.482] &nbsp;&nbsp; &nbsp;compiled for 1.18.4, module version =3D 1.=
1.0<br>
[3087510.482] &nbsp;&nbsp; &nbsp;ABI class: X.Org ANSI C Emulation, version=
 0.4<br>
[3087510.482] (=3D=3D) Depth 24 pixmap format is 32 bpp<br>
[3087510.505] (=3D=3D) FBDEV(0): Backing store enabled<br>
[3087510.506] (=3D=3D) FBDEV(0): DPMS enabled<br>
[3087510.507] (=3D=3D) RandR enabled<br>
[3087510.831] (II) config/udev: Adding input device SIGMACH1P USB Keykoard =
(/dev/input/event1)<br>
[3087510.831] (**) SIGMACH1P USB Keykoard: Applying InputClass &quot;evdev =
keyboard catchall&quot;<br>
[3087510.831] (II) LoadModule: &quot;evdev&quot;<br>
[3087510.832] (WW) Warning, couldn't open module evdev<br>
[3087510.832] (II) UnloadModule: &quot;evdev&quot;<br>
[3087510.832] (II) Unloading evdev<br>
[3087510.832] (EE) Failed to load module &quot;evdev&quot; (module does not=
 exist, 0)<br>
[3087510.832] (EE) No input driver matching `evdev'<br>
[3087510.835] (II) config/udev: Adding input device SIGMACH1P USB Keykoard =
(/dev/input/event2)<br>
[3087510.835] (**) SIGMACH1P USB Keykoard: Applying InputClass &quot;evdev =
keyboard catchall&quot;<br>
[3087510.835] (II) LoadModule: &quot;evdev&quot;<br>
[3087510.835] (WW) Warning, couldn't open module evdev<br>
[3087510.836] (II) UnloadModule: &quot;evdev&quot;<br>
[3087510.836] (II) Unloading evdev<br>
[3087510.836] (EE) Failed to load module &quot;evdev&quot; (module does not=
 exist, 0)<br>
[3087510.836] (EE) No input driver matching `evdev'<br>
[3087510.837] (II) config/udev: Adding input device FT5406 memory based dri=
ver (/dev/input/event0)<br>
[3087510.837] (**) FT5406 memory based driver: Applying InputClass &quot;ev=
dev touchscreen catchall&quot;<br>
[3087510.837] (II) LoadModule: &quot;evdev&quot;<br>
[3087510.838] (WW) Warning, couldn't open module evdev<br>
[3087510.838] (II) UnloadModule: &quot;evdev&quot;<br>
[3087510.838] (II) Unloading evdev<br>
[3087510.838] (EE) Failed to load module &quot;evdev&quot; (module does not=
 exist, 0)<br>
[3087510.838] (EE) No input driver matching `evdev'<br>
[3087510.839] (II) config/udev: Adding input device FT5406 memory based dri=
ver (/dev/input/mouse0)<br>
[3087510.839] (II) No input driver specified, ignoring this device.<br>
[3087510.839] (II) This device may have been added with another device file=
.<br>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">Regards, Steve. </div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div class=3D"PlainText">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
<br>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;"></span></font></div>
</div>
</body>
</html>

--_000_SG2PR0301MB20164B4F20AB1A46147436A5D1200SG2PR0301MB2016_--
