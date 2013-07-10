Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2634AE013CB
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 17:38:44 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id h15so4388512eak.14
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 17:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=izEOP/GsnWOZRHdE8+OWwpP1NZ6pFWJ7hUAUZ5C09Lw=;
	b=BNGqPLsMF0jJIw1xMrAeqb+IXz0ZOobMbQ8LQjGb5hlHDz3m+F5l3TvvOsngQLrd34
	vtOgK3EPiFQwEiYT+d9gK6FB7vbiG/fEfGQLb6tLWpbDGIyRnRQe1w7xPGwenp7ehKnS
	yS8PNX3I2IeRpv33WGG7Ozu3if+QvIBqItJ4Mj9iCuEzGlp2Mj/lzYcArC36EysIFhXg
	rfo7ds+Y8WiogF6qHDzb/icRRo4Mr2gAr2IF/16WoTbdTwodGjO1XgKUIdmwoJzr4uTv
	V6Hyd948OqMouoqL0yUHrgmrF8bYXzwFl1ob26A51uXRyNykYcIZ/W9bFR57cY9DTIm+
	4KoA==
MIME-Version: 1.0
X-Received: by 10.14.100.2 with SMTP id y2mr33311831eef.75.1373416722955; Tue,
	09 Jul 2013 17:38:42 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Tue, 9 Jul 2013 17:38:42 -0700 (PDT)
Date: Tue, 9 Jul 2013 18:38:42 -0600
Message-ID: <CANwz6nyMFGQXZ3w5wPrpJTb+aEQNXO_eqp_5aRvB_dyXmCj2Dw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: poky and gnuradio
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
X-List-Received-Date: Wed, 10 Jul 2013 00:38:47 -0000
Content-Type: multipart/alternative; boundary=001a11c2b850e6a20b04e11d7fb1

--001a11c2b850e6a20b04e11d7fb1
Content-Type: text/plain; charset=ISO-8859-1

Hello,
What is the best method to you the dylan branch of meta-oe with an gnuradio
from meta-oe           =
"(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9"?

Any and all help will be appreciated.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
meta-oe           = "dylan:13ae5105ee30410136beeae66ec41ee4a8a2e2b0"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"

The above build gets the following errors.

ERROR: Fetcher failure for URL: '
http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz'.
Checksum mismatch!
ERROR: Function failed: Fetcher failure for URL: '
http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/vidal/POKY/build070913_dylan/poky/build/tmp/work/all-poky-linux/uhd-firmware/1_003.005.002-r0/temp/log.do_fetch.28656
ERROR: Task 3499
(/home/vidal/POKY/build070913_dylan/poky/meta-oe/meta-oe/recipes-connectivity/uhd/
uhd-firmware_003.005.002.bb, do_fetch) failed with exit code '1'

I went back to a meta-oe branch that I had built for the beagleboard,
beaglebone, and pandaboard.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
meta-oe           = "(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"

Thanks

--001a11c2b850e6a20b04e11d7fb1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br>What is the best method to you the dylan br=
anch of meta-oe with an gnuradio from meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 =3D &quot;(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9&quot;?<br><b=
r>Any and all help will be appreciated. <br>
<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.=
0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<b=
r>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.4.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a =
vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<=
br>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;dylan:64273e53f2789d2ea8393fc80909ac7086f168a7&quot;<br>me=
ta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;dylan:13ae5105ee30410136beeae=
66ec41ee4a8a2e2b0&quot;<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;mast=
er:59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;dylan:64273e53f2789d2ea8393fc80909ac7086f=
168a7&quot;<br><br>The above build gets the following errors.<br><br>ERROR:=
 Fetcher failure for URL: &#39;<a href=3D"http://files.ettus.com/binaries/u=
hd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.t=
ar.gz">http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-=
release/uhd-images_003.005.002-release.tar.gz</a>&#39;. Checksum mismatch!<=
br>
ERROR: Function failed: Fetcher failure for URL: &#39;<a href=3D"http://fil=
es.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-image=
s_003.005.002-release.tar.gz">http://files.ettus.com/binaries/uhd_stable/re=
leases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz</a>&#3=
9;. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/vidal/POKY/build070913_dylan/pok=
y/build/tmp/work/all-poky-linux/uhd-firmware/1_003.005.002-r0/temp/log.do_f=
etch.28656<br>ERROR: Task 3499 (/home/vidal/POKY/build070913_dylan/poky/met=
a-oe/meta-oe/recipes-connectivity/uhd/<a href=3D"http://uhd-firmware_003.00=
5.002.bb">uhd-firmware_003.005.002.bb</a>, do_fetch) failed with exit code =
&#39;1&#39;<br>
<br>I went back to a meta-oe branch that I had built for the beagleboard, b=
eaglebone, and pandaboard.=A0 <br><br>Build Configuration:<br>BB_VERSION=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4.=
1&quot;<br>
TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;dylan:64273e5=
3f2789d2ea8393fc80909ac7086f168a7&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9&quot;<=
br>
meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:59696d89fd33df6953dcb2dd=
54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;dylan:64273e53f=
2789d2ea8393fc80909ac7086f168a7&quot;<br><br></div>Thanks<br></div>

--001a11c2b850e6a20b04e11d7fb1--
