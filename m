Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF0B8E0052B
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 15:06:46 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id a11so3306954qen.8
	for <yocto@yoctoproject.org>; Sat, 02 Nov 2013 15:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=kkBQ8iVww2na3oPWkidP0al9muVDdcNWIZsyZItSywI=;
	b=VtrB6wNX+VvpyHfsFbVNJZxXcll0lBww1dbhQW94lkT227V3oo9VnBQturX9rYmbY2
	Do+4M2p0/bMnqL5CCVTE5i4VdOu+lSAND+rtdxKiQAOBXZ98I/4MRnMZVZYQEXEW+7aL
	sW51LEyB9dh2/KmOMK3dpLDTzIUanti0JRnMW99KsTYFfxEuUfiFCEscx3JBLcKcpuUx
	laFTaCBcPEbdLpMUEJKVfToMJy+4MzPFOjXP7Go6LByKxa+ZOUjoT6fhSw8F/NQPqclh
	4oXr7rpMu3j3Rl8qrvgqQRQ/r9NFTUIjKsezTz45G0B/ljtzOKZr5wHFhibZw42nA++3
	HnEQ==
MIME-Version: 1.0
X-Received: by 10.224.51.10 with SMTP id b10mr2521212qag.7.1383430005543; Sat,
	02 Nov 2013 15:06:45 -0700 (PDT)
Received: by 10.140.37.81 with HTTP; Sat, 2 Nov 2013 15:06:45 -0700 (PDT)
Date: Sat, 2 Nov 2013 16:06:45 -0600
Message-ID: <CANwz6nxBDf7imFP0Z=5cmDCKDBqhuh4uxPNxw_8rBVNw_hTY2w@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: dora 1.5 builds for beagleboard no lsusb, /dev/fb0, networking, or sato display on monitor.
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
X-List-Received-Date: Sat, 02 Nov 2013 22:06:47 -0000
Content-Type: multipart/alternative; boundary=047d7bdcad500d5e8c04ea38e69d

--047d7bdcad500d5e8c04ea38e69d
Content-Type: text/plain; charset=ISO-8859-1

Hello All,
This is a continued effort with adding a "udev entry for a camera" &
"uImage instead  of zImage" posting in Oct 13.
2 of my with dora 1.5 are showing same problem
lsusb --verbose
unable to initialize libusb: -99

Error opening /dev/fb0: No such file or directory during boot.
These builds have no networking or sato display.
The kernel 3.10.11 works with a dylan 1,4 but no /dev/video0
This was what I ended up with in my uEnv.txt to boot the zImage instead of
uImage
dvimode=hd720 omapfb.vram=0:8M,1:4M,2:4M
loaduimage=run mmcargs;mmc rescan ; fatload mmc 0:1 0x80300000 zImage
vram=16M
mpurate=1000
mmcboot=echo Booting from mmc ...;  bootz 0x80300000
Now I do not have manually run mmcboot
The new file that was introduce with dora 1.5 *.dtb.  Does this just need
to be in the same place as MLO u-boot.img or u-boot.bin, uEnv.txt and
zImage.  Is anything needed in the bootargs or other env variables?
A question had been asked by Diego Sueiro about a module uvcvideo which in
not in any of the kernels that I have been working with 3.2.28 (an angstrom
build), 3.4.43 (dylan 1.4.1)  or 3.10.11 (dora 1.5.0).
If anyone know which kernel my have the code and what would be the
configuration options that would be welcomed.

Any and all help will be appreciated.
Thanks

commit faf8f8660fae26a14578738b642fdeb08bcb9d54
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Oct 11 23:12:32 2013 +0100

BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "wkg_dora:faf8f8660fae26a14578738b642fdeb08bcb9d54"
meta-oe           = "wkg-dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8"
meta-yocto-bsp    = "wkg_dora:faf8f8660fae26a14578738b642fdeb08bcb9d54"

commit 75bed4086eb83f1d24c31392f3dd54aa5c3679b1
Author: Maxin B. John <maxin.john@enea.com>
Date:   Thu Oct 31 15:01:25 2013 +0000
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "wkg_dora:75bed4086eb83f1d24c31392f3dd54aa5c3679b1"
meta-oe           = "wkg-dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8"
meta-yocto-bsp    = "wkg_dora:75bed4086eb83f1d24c31392f3dd54aa5c3679b1"

--047d7bdcad500d5e8c04ea38e69d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello All,<br></div>This is a continued eff=
ort with adding a &quot;udev entry for a camera&quot; &amp; &quot;uImage in=
stead=A0 of zImage&quot; posting in Oct 13.<br>2 of my with dora 1.5 are sh=
owing same problem<br>
lsusb --verbose<br>unable to initialize libusb: -99<br><br>Error opening /d=
ev/fb0: No such file or directory during boot.<br>These builds have no netw=
orking or sato display.<br>The kernel 3.10.11 works with a dylan 1,4 but no=
 /dev/video0<br>
This was what I ended up with in my uEnv.txt to boot the zImage instead of =
uImage<br>dvimode=3Dhd720 omapfb.vram=3D0:8M,1:4M,2:4M<br>loaduimage=3Drun =
mmcargs;mmc rescan ; fatload mmc 0:1 0x80300000 zImage<br>vram=3D16M<br>mpu=
rate=3D1000<br>
mmcboot=3Decho Booting from mmc ...;=A0 bootz 0x80300000<br>Now I do not ha=
ve manually run mmcboot<br>The new file that was introduce with dora 1.5 *.=
dtb.=A0 Does this just need to be in the same place as MLO u-boot.img or u-=
boot.bin, uEnv.txt and zImage.=A0 Is anything needed in the bootargs or oth=
er env variables?<br>
</div>A question had been asked by Diego Sueiro about a module uvcvideo whi=
ch in not in any of the kernels that I have been working with 3.2.28 (an an=
gstrom build), 3.4.43 (dylan 1.4.1)=A0 or 3.10.11 (dora 1.5.0).<br></div>
<div>If anyone know which kernel my have the code and what would be the con=
figuration options that would be welcomed.=A0 <br>=A0<br></div>Any and all =
help will be appreciated. <br><div><div>Thanks <br><br>commit faf8f8660fae2=
6a14578738b642fdeb08bcb9d54<br>
Author: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation=
.org">richard.purdie@linuxfoundation.org</a>&gt;<br>Date:=A0=A0 Fri Oct 11 =
23:12:32 2013 +0100<br><br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.20.0=
&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br=
>
NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.5&=
quot;<br>
TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;wkg_dora:faf8=
f8660fae26a14578738b642fdeb08bcb9d54&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;wkg-dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8&quot;=
<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;wkg_dora:faf8f8660fae26a14578738b642fdeb0=
8bcb9d54&quot;<br><br>commit 75bed4086eb83f1d24c31392f3dd54aa5c3679b1<br>Au=
thor: Maxin B. John &lt;<a href=3D"mailto:maxin.john@enea.com">maxin.john@e=
nea.com</a>&gt;<br>
Date:=A0=A0 Thu Oct 31 15:01:25 2013 +0000<br>BB_VERSION=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;1.20.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x=
86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TAR=
GET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.5&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vf=
p neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br=
>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;wkg_dora:75bed4086eb83f1d24c31392f3dd54aa5c3679b1&quot;<br=
>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;wkg-dora:513e7ca20ddd0a5c3=
b649bf292a67c3e0473d3a8&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;wkg_dora=
:75bed4086eb83f1d24c31392f3dd54aa5c3679b1&quot;<br>
<br></div></div></div>

--047d7bdcad500d5e8c04ea38e69d--
