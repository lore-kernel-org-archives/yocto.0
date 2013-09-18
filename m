Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07C09E013E8
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 07:35:44 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id j7so2933992qaq.12
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 07:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HL550QbXKOqOIpk7vf8LYG+7EJPVbBEG63vzW4g8hYw=;
	b=VpsxoBeeXAdA/I6ze291wmAipZ1xPiooXxRRfz3MKni0eEf+ZYZTAmvR4HEekcn2bD
	TZu89RmlEnyZ1l1rOhKvkeNaUcqsPbO5uB2gy+NiT4CsOeXBWL9oSP/wRZRBxfTDOUfG
	vpvcxXcc10q7SwW0830+/esKMXzHcDqjvt2vBp8NXZv4lvlarAAxvXqKdw+t2dA2GMEn
	du8FasM86uW/gKQXbc2Xv63TUGgjW84KjyZWqWYExCXZZvGWhLXxe+bM3d3YXPfBLfx7
	3PoUQ4FW9uZDqMTn1Y0+AGBgtVCEiZwwTzF+u2b7CbyWaE9davLxKEZHQ0Y3e2rp7HY1
	gPMw==
MIME-Version: 1.0
X-Received: by 10.49.130.132 with SMTP id oe4mr3343628qeb.86.1379514943163;
	Wed, 18 Sep 2013 07:35:43 -0700 (PDT)
Received: by 10.140.87.206 with HTTP; Wed, 18 Sep 2013 07:35:43 -0700 (PDT)
Date: Wed, 18 Sep 2013 08:35:43 -0600
Message-ID: <CANwz6nzOp-VJgaf-dxhfVYwgrRF2tDA2hRdnJkLosiNQDBXyQQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: yocto armhf & armel on zedboard
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
X-List-Received-Date: Wed, 18 Sep 2013 14:35:45 -0000
Content-Type: multipart/alternative; boundary=047d7bb0448a26524904e6a95a22

--047d7bb0448a26524904e6a95a22
Content-Type: text/plain; charset=ISO-8859-1

Hello
While trying to add additional software I came across a problem.  Ubuntu
uses armhf and the packages I had built with Yocto use armel.
Is there a license issue with building with armhf instead of armel with
Yocto?

I just received my zedboard this past week.  Testing has been going okay so
far.  I built the kernel & devicetree.dtb using Xilinx sdk. The kernel
sources were obtained at git clone
https://github.com/Digilent/linux-digilent.git.

Ubuntu and BusyBox booted okay with
linaro-precise-ubuntu-desktop-20120923-436.tar.gz
rootfs and ramdisk8M.image.gz rootfs.  I also used the BOOT.BIN provided
for BusyBox tests.

I then created 2 rootfs wih Yocto both of which booted okay.
MACHINE=zedboard bitbake core-image-minimal and MACHINE=zedboard bitbake
core-image-sato using the zImage & devicetree.dtb builted Xilinx sdk. The
kernel sources were obtained at git clone
https://github.com/Digilent/linux-digilent.git.

zcat core-image-minimal-zedboard-20130915191921.rootfs.ext2.gz > /dev/sdb2

MACHINE=zedboard bitbake core-image-sato
zcat core-image-sato-zedboard-20130918125052.rootfs.ext2.gz > /dev/sdb2
Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130918"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:3dee534f1e25109e0bdb681de0746c336f4b8840"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
meta-oe           = "master:c383d6230942bb1558cee02764bced09031cb70f"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "master:3dee534f1e25109e0bdb681de0746c336f4b8840"
Any and all help will be appreciated.
Thanks
Ed Vidal vidal.develone@gmail.com

--047d7bb0448a26524904e6a95a22
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<br>While trying to add additional software I came ac=
ross a problem.=A0 Ubuntu
 uses armhf and the packages I had built with Yocto use armel.<br>Is there =
a license issue with building with armhf instead of armel with Yocto?=A0 <b=
r><br>I just received my zedboard this past week.=A0 Testing has been going=
 okay so far.=A0 I built the kernel &amp; devicetree.dtb using Xilinx sdk. =
The kernel sources were obtained at git clone <a href=3D"https://github.com=
/Digilent/linux-digilent.git">https://github.com/Digilent/linux-digilent.gi=
t</a>.<br>
<br>Ubuntu and BusyBox booted okay with linaro-precise-ubuntu-desktop-20120=
923-436.tar.gz <br>rootfs and ramdisk8M.image.gz rootfs.=A0 I also used the=
 BOOT.BIN provided for BusyBox tests.<br><br>I then created 2 rootfs wih Yo=
cto both of which booted okay.<br>
MACHINE=3Dzedboard bitbake core-image-minimal and MACHINE=3Dzedboard bitbak=
e core-image-sato using the zImage &amp; devicetree.dtb builted Xilinx sdk.=
 The kernel sources were obtained at git clone <a href=3D"https://github.co=
m/Digilent/linux-digilent.git">https://github.com/Digilent/linux-digilent.g=
it</a>.<br>
<br>zcat core-image-minimal-zedboard-20130915191921.rootfs.ext2.gz &gt; /de=
v/sdb2<br><br>MACHINE=3Dzedboard bitbake core-image-sato<br>zcat core-image=
-sato-zedboard-20130918125052.rootfs.ext2.gz &gt; /dev/sdb2<br>Build Config=
uration:<br>
BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.19.1&quot;<br>BUILD_SYS=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =
=3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-=
poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot=
;zedboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.4+snapshot-20130918&quot;<br>TUNE_FEATURES=A0=A0=
=A0=A0 =3D &quot; armv7a vfp neon zynq&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:3dee534f1e25109e0b=
db681de0746c336f4b8840&quot;<br>
meta-xilinx=A0=A0=A0=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=A0=A0 <br>meta-=
zc702=A0=A0=A0=A0=A0=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =3D &quot;master:4=
6f4c79d6d55b556a90bb0fd89c2c09acf2aebff&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;master:c383d6230942bb1558cee02764bced09031cb70f&quot=
;<br>
meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:59696d89fd33df6953dcb2dd=
54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;master:3dee534f=
1e25109e0bdb681de0746c336f4b8840&quot;<br>Any and all help will be apprecia=
ted.<br>Thanks<br>Ed Vidal <a href=3D"mailto:vidal.develone@gmail.com">vida=
l.develone@gmail.com</a><br>
=A0<br></div>

--047d7bb0448a26524904e6a95a22--
