Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60D97E007E0
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 10:31:50 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id 1so5462829qec.23
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 10:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rg2HyUviE72TgF2AAXz9Ln4kAxH++qXw8C3IedwJuBY=;
	b=LM43ZjyEMAQZDO52TI+qI7rBQPwcrpS/U9NNhcXGlEZmPiiPJy6uYXkSyR6xDe7sWr
	6Pfa8bCTEISf9wKBmFfp4UwxqRDr7wrdChv0V58vmYEv1Ku85xkW09PouOWokkiDuGdk
	7xkvK8AtIorPa3Q7NQq0raZpTTOnU7NEZkZX7dkOifL9FYCpfkZVq0ARgiuTaErjZd07
	JWnMAkeKSXm1Cor2TZOVZ3L4Tm/jxjwWRknM9fWn4fV5ia5mS1jDfz5wnTl6TnsMj0F1
	NHRmYm/QClGq956MT5wEAVhGafKfTV4F4jl83ih4MPMzniofxFRHiFjVIOdMtt5RZbwj
	kIZg==
MIME-Version: 1.0
X-Received: by 10.224.16.204 with SMTP id p12mr45160408qaa.26.1387823509933;
	Mon, 23 Dec 2013 10:31:49 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Mon, 23 Dec 2013 10:31:49 -0800 (PST)
Date: Mon, 23 Dec 2013 11:31:49 -0700
Message-ID: <CANwz6nxuiuJ2zPsjqK2pva1FMW3xXax8P-FvJTmkVBbrzXfNVg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Development of Yocto Project Kernel outside of Intel?
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
X-List-Received-Date: Mon, 23 Dec 2013 18:31:51 -0000
Content-Type: multipart/alternative; boundary=047d7bdc7dac52135c04ee37d718

--047d7bdc7dac52135c04ee37d718
Content-Type: text/plain; charset=ISO-8859-1

Hello Bob,
Bob wrote

Can someone please share with me the forecast (or any info) on whether
the Yocto Project Kernel methodology will be picked up by additional non
Intel cores / companies in 2014 or beyond?


I am currently using the dylan branch with the zedboard.
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-19"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.3"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:544c58df358b03dda007700b83ffe2e5f07a7bbb"
meta-browser      = "dylan:2140f2a114f7009f86479afb12a524bb157cbb0e"
meta-gnome
meta-oe
meta-multimedia   = "dylan:44754206632dd5b0725aeb43e99e4ff9e0245dca"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "dylan:cf9571203be0af5fc654952d3f00e0a7e0fb1174"
meta-yocto-bsp    =
"dylan:544c58df358b03dda007700b83ffe2e5f07a7bbb"meta-yocto-bsp    =
"(detachedfromorigin/dylan):57e6d537e847b88e4f89cd01be8a2926953b0082"

I have used earlier yocto dylan branch with beaglebone, beagleboard ,and
pandaboard.
develone@sbcglobal.net or vidal.develone@gmail.com

--047d7bdc7dac52135c04ee37d718
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello Bob,<br></div><div>Bob wrote <br><pre>Can =
someone please share with me the forecast (or any info) on whether=20
the Yocto Project Kernel methodology will be picked up by additional non=20
Intel cores / companies in 2014 or beyond?</pre><br></div>I am currently us=
ing the dylan branch with the zedboard.=A0 <br>Build Configuration:<br>BB_V=
ERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-19&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;zedboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4.3&q=
uot;<br>
TUNE_FEATURES=A0=A0=A0=A0 =3D &quot; armv7a vfp neon zynq&quot;<br>TARGET_F=
PU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;dylan:5=
44c58df358b03dda007700b83ffe2e5f07a7bbb&quot;<br>meta-browser=A0=A0=A0=A0=
=A0 =3D &quot;dylan:2140f2a114f7009f86479afb12a524bb157cbb0e&quot;<br>
meta-gnome=A0=A0=A0=A0=A0=A0=A0 <br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <=
br>meta-multimedia=A0=A0 =3D &quot;dylan:44754206632dd5b0725aeb43e99e4ff9e0=
245dca&quot;<br>meta-xilinx=A0=A0=A0=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=
=A0=A0 <br>meta-zc702=A0=A0=A0=A0=A0=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =
=3D &quot;dylan:cf9571203be0af5fc654952d3f00e0a7e0fb1174&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;dylan:544c58df358b03dda007700b83ffe2e5f07=
a7bbb&quot;meta-yocto-bsp=A0=A0=A0 =3D &quot;(detachedfromorigin/dylan):57e=
6d537e847b88e4f89cd01be8a2926953b0082&quot;<br><br>I have used earlier yoct=
o dylan branch with beaglebone, beagleboard ,and pandaboard.=A0 <br>
</div><a href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a> =
or <a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>=
<br><br><br></div>

--047d7bdc7dac52135c04ee37d718--
