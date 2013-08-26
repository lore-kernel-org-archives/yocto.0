Return-Path: <sudhangathan@gmail.com>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97759E00282
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 05:38:29 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id e10so1015409qcy.33
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 05:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=zZ0cS5jCzn6brKuVA5wqrNhGn+g48RCZAM2dNk4IvyE=;
	b=hxImoYY9m/dUaK+MPIGk/MEc3NShl/ooUFY+DRhnrog6FWm3TzxGRCCOuOF6GfX6EC
	3U1xELEcYC4cb5Q7HoF6Yeeflxx2kTCjDWj0OLC9BLunOsiE5NZdlGPfwRfqrbJ96Pon
	oh0dswzXKw8Ux8TNZmuDIxI6k910HSjgv7Bhrh1E/5k+UmBUwhXZEf1cHu1yV+t9ZgMi
	v6dP+rcgqgol2jvXdyCcmjBAZ5XBWsEVtSNIvNnD8gldWSgI/OTmeQWjpWys68Ur/M2p
	vJ0thWvWvq82PVSRLyCDohRpOETirvSIAl6rkrUA9w+9vxt7LFX7wkcCet63pnb9ZYyM
	Xk3w==
X-Received: by 10.224.147.72 with SMTP id k8mr15676813qav.61.1377520708155;
	Mon, 26 Aug 2013 05:38:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.135.194 with HTTP; Mon, 26 Aug 2013 05:38:08 -0700 (PDT)
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Mon, 26 Aug 2013 18:08:08 +0530
Message-ID: <CAGX3a9_a-3CU4owOJS+NfnEhMg=QkZ8JKqnG9=xLAhd6_qea4w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Packaging 2.6.39 kernel also includes 3.5 kernel..! Why.?
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
X-List-Received-Date: Mon, 26 Aug 2013 12:38:29 -0000
Content-Type: multipart/alternative; boundary=089e0149cc8e7b1bc804e4d9084b

--089e0149cc8e7b1bc804e4d9084b
Content-Type: text/plain; charset=ISO-8859-1

I have asked this question in the Gumstix-Users mailing list before, but
got no reply..
So just checking out here..!

Why does Yocto include 3.5.0/ kernel folder too in the lib/modules/
directory, while I have enabled 2.6.39 kernel recipe..?? I just extracted
the file gumstix-console-image-overo-20130821225106.rootfs.tar.bz2 i  Now
see there are two folders in the lib/modules/ directory namely "3.5.0/" and
"2.6.39/" .

Should it be like that.. Or is there a confusion internally..??
Can I have an explanation please...?? How should I correct.?

When booting, on the console i don't see anything more than "Done booting
the kernel..." The serial port set in the uboot env is ttyO2.. This is
correct for 2.6.39 kernel..! Isn't it..?


This is the configuration:================

OE Build Configuration:
BB_VERSION        = "1.15.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "overo"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2.1"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):846b7c388738f382e83576e77b705aa547c1dd9b"
meta-gnome
meta-oe
meta-xfce         = "(nobranch):e77646bc2cf905fd671fc5c19ab6fd17f9b94b3f"
meta-gumstix      = "(nobranch):9293374e7a6dba72ac3b7350659f9a1877739b39"
meta-dese_iisc    = "(nobranch):846b7c388738f382e83576e77b705aa547c1dd9b"

========This is my overo.inc file:==========

desen555@desen555-UStudio:~/yocto/poky$ cat
meta-dese_iisc/conf/machine/overo.inc
require conf/machine/include/omap3.inc

EXTRA_IMAGEDEPENDS = "u-boot-sakoman"

PREFERRED_PROVIDER_virtual/bootloader = "u-boot-sakoman"
UBOOT_MACHINE = "omap3_overo_config"
#PREFERRED_VERSION_pn-u-boot = "2011.12"

#PREFERRED_PROVIDER_virtual/kernel = "linux-omap3"
PREFERRED_PROVIDER_ntp = "ntp"
#PREFERRED_PROVIDER_virtual/kernel = "linux-sakoman"
PREFERRED_PROVIDER_virtual/kernel = "linux-omap-pm"

PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
XSERVER = "xserver-xorg \
           xf86-input-evdev \
           xf86-input-mouse \
           xf86-video-omapfb \
           xf86-input-keyboard"

PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
PREFERRED_PROVIDER_jpeg-native = "libjpeg-turbo-native"

SERIAL_CONSOLE = "115200 ttyO2"

IMAGE_FSTYPES += "tar.bz2"

MKUBIFS_ARGS = "-m 2048 -e 129024 -c 4044"
UBINIZE_ARGS = "-m 2048 -p 128KiB -s 512"

UBI_VOLNAME = "rootfs"

MACHINE_EXTRA_RDEPENDS = "omap3-writeprom"
MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"

MACHINE_FEATURES = "kernel26 alsa apm ext3 screen usbgadget usbhost vfat
wifi"
====================================================================
---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------

--089e0149cc8e7b1bc804e4d9084b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-family:arial,sans-serif;font-size:13px"=
>I have asked this question in the Gumstix-Users mailing list before, but g=
ot no reply..=A0</div><div style=3D"font-family:arial,sans-serif;font-size:=
13px">

So just checking out here..!</div><div style=3D"font-family:arial,sans-seri=
f;font-size:13px"><br></div><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">Why does Yocto include 3.5.0/ kernel folder too in the lib/mod=
ules/ directory, while I have enabled 2.6.39 kernel recipe..?? I just extra=
cted the file gumstix-console-image-overo-</span><span style=3D"font-family=
:arial,sans-serif;font-size:13px">20130821225106.rootfs.tar.bz2 i =A0Now se=
e there are two folders in the lib/modules/ directory namely &quot;3.5.0/&q=
uot; and &quot;2.6.39/&quot; .</span><div style=3D"font-family:arial,sans-s=
erif;font-size:13px">

<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Should=
 it be like that.. Or is there a confusion internally..??</div><div style=
=3D"font-family:arial,sans-serif;font-size:13px">Can I have an explanation =
please...?? How should I correct.?</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">When booting, on the c=
onsole i don&#39;t see anything more than &quot;Done booting the kernel...&=
quot; The serial port set in the uboot env is ttyO2.. This is correct for 2=
.6.39 kernel..! Isn&#39;t it..?</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div style=
=3D"font-family:arial,sans-serif;font-size:13px">This is the configuration:=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><br><div><div>OE=
 Build Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.15.2&=
quot;</div><div>TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;</div><div>TARGE=
T_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;</div>

<div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;overo&quot;</div><div>DISTRO =A0=
 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =A0 =A0=
=3D &quot;1.2.1&quot;</div><div>TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp =
neon cortexa8&quot;</div><div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&=
quot;</div>

<div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0=
=3D &quot;(nobranch):846b7c388738f382e83576e77b705aa547c1dd9b&quot;</div><d=
iv>meta-gnome =A0 =A0 =A0 =A0</div><div>meta-oe =A0 =A0 =A0 =A0 =A0=A0</div=
><div>meta-xfce =A0 =A0 =A0 =A0 =3D &quot;(nobranch):e77646bc2cf905fd671fc5=
c19ab6fd17f9b94b3f&quot;</div>

<div>meta-gumstix =A0 =A0 =A0=3D &quot;(nobranch):9293374e7a6dba72ac3b73506=
59f9a1877739b39&quot;</div><div>meta-dese_iisc =A0 =A0=3D &quot;(nobranch):=
846b7c388738f382e83576e77b705aa547c1dd9b&quot;</div></div><div><br></div><d=
iv>=3D=3D=3D=3D=3D=3D=3D=3DThis is my overo.inc file:=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</div>

<div><br></div><div><div>desen555@desen555-UStudio:~/yocto/poky$ cat meta-d=
ese_iisc/conf/machine/overo.inc</div><div>require conf/machine/include/omap=
3.inc</div><div><br></div><div>EXTRA_IMAGEDEPENDS =3D &quot;u-boot-sakoman&=
quot;</div>

<div><br></div><div>PREFERRED_PROVIDER_virtual/bootloader =3D &quot;u-boot-=
sakoman&quot;</div><div>UBOOT_MACHINE =3D &quot;omap3_overo_config&quot;</d=
iv><div>#PREFERRED_VERSION_pn-u-boot =3D &quot;2011.12&quot;</div><div><br>=
</div>

<div>#PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-omap3&quot;</div><d=
iv>PREFERRED_PROVIDER_ntp =3D &quot;ntp&quot;</div><div>#PREFERRED_PROVIDER=
_virtual/kernel =3D &quot;linux-sakoman&quot;</div><div>PREFERRED_PROVIDER_=
virtual/kernel =3D &quot;linux-omap-pm&quot; =A0</div>

<div><br></div><div>PREFERRED_PROVIDER_virtual/xserver =3D &quot;xserver-xo=
rg&quot;</div><div>XSERVER =3D &quot;xserver-xorg \</div><div>=A0 =A0 =A0 =
=A0 =A0 =A0xf86-input-evdev \</div><div>=A0 =A0 =A0 =A0 =A0 =A0xf86-input-m=
ouse \</div><div>=A0 =A0 =A0 =A0 =A0 =A0xf86-video-omapfb \</div>

<div>=A0 =A0 =A0 =A0 =A0 =A0xf86-input-keyboard&quot;</div><div><br></div><=
div>PREFERRED_PROVIDER_jpeg =3D &quot;libjpeg-turbo&quot;</div><div>PREFERR=
ED_PROVIDER_jpeg-native =3D &quot;libjpeg-turbo-native&quot;</div><div><br>=
</div><div>
SERIAL_CONSOLE =3D &quot;115200 ttyO2&quot;</div>
<div><br></div><div>IMAGE_FSTYPES +=3D &quot;tar.bz2&quot;</div><div><br></=
div><div>MKUBIFS_ARGS =3D &quot;-m 2048 -e 129024 -c 4044&quot;</div><div>U=
BINIZE_ARGS =3D &quot;-m 2048 -p 128KiB -s 512&quot;</div><div><br></div><d=
iv>

UBI_VOLNAME =3D &quot;rootfs&quot;</div><div><br></div><div>MACHINE_EXTRA_R=
DEPENDS =3D &quot;omap3-writeprom&quot;</div><div>MACHINE_EXTRA_RRECOMMENDS=
 =3D &quot; kernel-modules&quot;</div><div><br></div><div>MACHINE_FEATURES =
=3D &quot;kernel26 alsa apm ext3 screen usbgadget usbhost vfat wifi&quot;</=
div>

</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></d=
iv><div>---------------------------------<br>Sudhangathan BS<br>Ph:(+91) 97=
31-905-205<br>---------------------------------</div>
</div>

--089e0149cc8e7b1bc804e4d9084b--
