Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f68.google.com (mail-qa0-f68.google.com
	[209.85.216.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 357ECE00475;
	Thu,  6 Feb 2014 07:34:49 -0800 (PST)
Received: by mail-qa0-f68.google.com with SMTP id ii20so752251qab.7
	for <multiple recipients>; Thu, 06 Feb 2014 07:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6+uBZsNcj4KZV1BwntbA/8vUOBomCGRLIbqquqOlzTk=;
	b=0l6cJZUyW2K1lSpgr6P+mAmQwcW9sSqr7+Ty9FpyAWPRoHa5oCFgsV3G3oZwNv6vFV
	+rV12a9lPwTmaOOJhz6KC8i3B5X1OybMu29FOSVvPwyrkNzKjR2HvTz01pqTBKVsXlsV
	Qs1t9h3tjUaG1dV6+eh72QN2pEaPg5b3h8i6LX9tfU/XfJkTFT+XaalldniX+xqTxpbr
	py4afU6zBJOlTeqNZdcLD8oQukr39cFnh5KIV8IbUYaEgtrIj7emYKJf0zebGW515APH
	A0rPUVFNrJhcnBfQgiktw5MpONbqTydpuDSEiY6em3LWKjbU8vrl4WtjfYJby//NNZx0
	yBWQ==
MIME-Version: 1.0
X-Received: by 10.140.87.197 with SMTP id r63mr12505959qgd.101.1391700126547; 
	Thu, 06 Feb 2014 07:22:06 -0800 (PST)
Received: by 10.140.93.182 with HTTP; Thu, 6 Feb 2014 07:22:06 -0800 (PST)
Date: Thu, 6 Feb 2014 08:22:06 -0700
Message-ID: <CANwz6nx3WLC6b7jjFnNDCc6hXJtvRbPK5yw0pZ+sVJ8foX5HRQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: meta-oe x264
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
X-List-Received-Date: Thu, 06 Feb 2014 15:34:50 -0000
Content-Type: multipart/alternative; boundary=001a11c120eaad436c04f1be6f6f

--001a11c120eaad436c04f1be6f6f
Content-Type: text/plain; charset=ISO-8859-1

Hello All,
In Dec 13 I used meta-oe on a dylan branch and x264 was included as part of
meta-oe/meta-oe/recipes-multimedia/x264.
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.2"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
meta-oe
meta-multimedia   = "dylan:44754206632dd5b0725aeb43e99e4ff9e0245dca"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "dylan:cf9571203be0af5fc654952d3f00e0a7e0fb1174"

I am working with the dora branch and this is now not included.
Does anyone know the reason that x264 was removed from the dora branch or
has is just not been added.  My custom-image includes it and it built okay.
Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dora:c3cccbea7abd4af3d603b2be42b0c7291ff21946"
meta-topic        = "master:9af0ecd7e756b367e0ec80263319247b6c2d69c3"
meta-oe
meta-multimedia
meta-gnome        = "dora:191499a2b54d04855284347ce5a067f998646be4"
meta-yocto-bsp    = "dora:c3cccbea7abd4af3d603b2be42b0c7291ff21946"

If I can provide any additional information just let me know.
Any and all help is appreciated.
Thanks

--001a11c120eaad436c04f1be6f6f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,<br></div><div>In Dec 13 I used meta-oe on =
a dylan branch and x264 was included as part of meta-oe/meta-oe/recipes-mul=
timedia/x264.<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;1.18.0&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;zedboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;poky&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4.2&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =
=3D &quot; armv7a vfp neon zynq&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br=
>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;dylan:4e399f08d596197859214fdb3b=
06403b87bf8789&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-multimedia=A0=A0 =3D &quot;d=
ylan:44754206632dd5b0725aeb43e99e4ff9e0245dca&quot;<br>meta-xilinx=A0=A0=A0=
=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=A0=A0 <br>meta-zc702=A0=A0=A0=A0=A0=
=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =3D &quot;dylan:cf9571203be0af5fc65495=
2d3f00e0a7e0fb1174&quot;<br>
<br></div><div>I am working with the dora branch and this is now not includ=
ed.=A0 <br></div><div>Does anyone know the reason that x264 was removed fro=
m the dora branch or has is just not been added.=A0 My custom-image include=
s it and it built okay. <br>
Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.20.0&qu=
ot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NA=
TIVELSBSTRING=A0=A0 =3D &quot;Ubuntu-12.04&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;zedboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.5.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;a=
rmv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&=
quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;dora:c3cccbea7abd4af3d603b2be42b0c7291ff21946&quo=
t;<br>
meta-topic=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:9af0ecd7e756b367e0ec802633=
19247b6c2d69c3&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-mult=
imedia=A0=A0 <br>meta-gnome=A0=A0=A0=A0=A0=A0=A0 =3D &quot;dora:191499a2b54=
d04855284347ce5a067f998646be4&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;do=
ra:c3cccbea7abd4af3d603b2be42b0c7291ff21946&quot;<br>
<br></div><div>If I can provide any additional information just let me know=
.<br></div><div>Any and all help is appreciated. <br>Thanks<br></div></div>

--001a11c120eaad436c04f1be6f6f--
