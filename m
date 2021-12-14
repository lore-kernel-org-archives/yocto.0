Return-Path: <arthur.forey@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0650FC433EF
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 07:43:00 +0000 (UTC)
Subject: #dunfell #qt5 #raspberrypi #sdk #linux
To: yocto@lists.yoctoproject.org
From: arthur.forey@gmail.com
X-Originating-Location: Dijon, Bourgogne-Franche-Comte, FR (90.62.157.81)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Dec 2021 23:42:57 -0800
Message-ID: <wqvt.1639467777800228037.tUBD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oSlTpcTIMYImEsAZ2wa2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 07:43:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55574

--oSlTpcTIMYImEsAZ2wa2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everybody,

I come today to try to solve my problem. I am building a bsp and sdk for a =
raspberry pi (MACHINE =3D raspberrypi4-64) in the form of a compute module.=
 I'm trying to compile this app: https://github.com/YvesBas/Tadarida-D/tree=
/master/sources for the raspberry pi).

I know that in the Libs directory, the libraries are compiled for an x86_64=
 architecture. This is why I try to integrate them into the sources without=
 this directory. I am also modifying the .pro to match with the correct lib=
s. The integration of these two libs are present in the image of the raspbe=
rry pi, but in the sdk I only have the libsndfile1, so the libfftw3.h / .so=
 is missing.

Here are elements for the creation of the bsp and the sdk:
Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"1.46.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "universal"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"aarch64-poky-linux"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "raspberrypi4-64"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "3.1.12"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "aarch64 cortex=
a72 crc crypto"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
""
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "dunfell:cf5a00721f7=
21d5077c73d1f4e812e5c79833fba"
meta-oe
meta-python
meta-networking
meta-multimedia=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "dunfell:69f94af4d91215e7=
d4e225bab54bf3bcfee42f1c"
meta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D "dunfell:b4d24d70aca75791902df5cd59a4f4a54aa4a125"
meta-raspberrypi=C2=A0=C2=A0=C2=A0=C2=A0 =3D "dunfell:934064a01903b2ba9a82b=
e93b3f0efdb4543a0e8"

In conf/local.conf :
IMAGE_INSTALL_append =3D " libfftw libfftwl libfftwf fftw-dev libsndfile1"

When I do bitbake meta-toolchain-qt5, I don't have libfftw3.h / .so .

What can i do ?

Thanks a lot.

Arthur

--oSlTpcTIMYImEsAZ2wa2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span lang=3D"fr"><span></span></span>
<div class=3D"DVHrxd">
<div id=3D"ow46" data-show-delay-ms=3D"250" data-append-to-body=3D"true" da=
ta-propagate-tooltip-mouseover-events=3D"true" data-anchor-corner=3D"bottom=
-left" data-enable-skip-handler=3D"false" data-popup-corner=3D"top-left">
<div>&nbsp;</div>
</div>
</div>
<div class=3D"FFpbKc">
<div>
<div data-show-delay-ms=3D"250" data-append-to-body=3D"true" data-propagate=
-tooltip-mouseover-events=3D"true" data-anchor-corner=3D"bottom-left" data-=
enable-skip-handler=3D"false" data-popup-corner=3D"top-left">
<div>&nbsp;</div>
</div>
</div>
</div>
<div>&nbsp;</div>
<div class=3D"r375lc">
<div class=3D"aJIq1d" data-language-code=3D"en" data-language-name=3D"Angla=
is" data-text=3D"" data-crosslingual-hint=3D"null" data-location=3D"1" data=
-enable-toggle-playback-speed=3D"true">
<div data-show-delay-ms=3D"250" data-append-to-body=3D"true" data-propagate=
-tooltip-mouseover-events=3D"true" data-anchor-corner=3D"bottom-left" data-=
enable-skip-handler=3D"false" data-popup-corner=3D"top-left">
<div>&nbsp;</div>
</div>
</div>
</div>
<div class=3D"eyKpYb" data-language=3D"en" data-original-language=3D"fr" da=
ta-result-index=3D"0">
<div class=3D"J0lOec"><span class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ=
4b" data-language-for-alternatives=3D"en" data-language-to-translate-into=
=3D"fr" data-phrase-index=3D"0" data-number-of-phrases=3D"1"><span>Hello ev=
erybody,<br /><br />I come today to try to solve my problem. I am building =
a bsp and sdk for a raspberry pi (MACHINE =3D raspberrypi4-64) in the form =
of a compute module. I'm trying to compile this app: https://github.com/Yve=
sBas/Tadarida-D/tree/master/sources for the raspberry pi).<br /><br />I kno=
w that in the Libs directory, the libraries are compiled for an x86_64 arch=
itecture. This is why I try to integrate them into the sources without this=
 directory. I am also modifying the .pro to match with the correct libs. Th=
e integration of these two libs are present in the image of the raspberry p=
i, but in the sdk I only have the libsndfile1, so the libfftw3.h / .so is m=
issing.<br /><br />Here are elements for the creation of the bsp and the sd=
k:<br />Build Configuration:<br />BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.46.0"<br />BUILD_SYS&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br />NA=
TIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "universal"<br />TARGET_SYS=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "aarch64-p=
oky-linux"<br />MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; =3D "raspberrypi4-64"<br />DISTRO&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "=
poky"<br />DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "3.1.12"<=
br />TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "aarch64 c=
ortexa72 crc crypto"<br />TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; =3D ""<br />meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />meta-poky=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />me=
ta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "dunfell:cf5a00721f721=
d5077c73d1f4e812e5c79833fba"<br />meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />meta-python&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />meta-networking&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; <br />meta-multimedia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"dunfell:69f94af4d91215e7d4e225bab54bf3bcfee42f1c"<br />meta-qt5&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "dunfell:=
b4d24d70aca75791902df5cd59a4f4a54aa4a125"<br />meta-raspberrypi&nbsp;&nbsp;=
&nbsp;&nbsp; =3D "dunfell:934064a01903b2ba9a82be93b3f0efdb4543a0e8"<br /><b=
r />In conf/local.conf :<br />IMAGE_INSTALL_append =3D " libfftw libfftwl l=
ibfftwf fftw-dev libsndfile1"<br /><br />When I do bitbake meta-toolchain-q=
t5, I don't have </span></span></span><span class=3D"VIiyi" lang=3D"en"><sp=
an class=3D"JLqJ4b" data-language-for-alternatives=3D"en" data-language-to-=
translate-into=3D"fr" data-phrase-index=3D"0" data-number-of-phrases=3D"1">=
<span><span class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ4b" data-languag=
e-for-alternatives=3D"en" data-language-to-translate-into=3D"fr" data-phras=
e-index=3D"0" data-number-of-phrases=3D"1"><span>libfftw3.h / .so .<br /><b=
r />What can i do ? <br /><br />Thanks a lot.<br /><br />Arthur</span></spa=
n></span><br /></span></span></span></div>
</div>

--oSlTpcTIMYImEsAZ2wa2--

