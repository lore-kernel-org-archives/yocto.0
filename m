Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 651BEE006C2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 10:05:39 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id q15so402700ead.37
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 10:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ML9rgbVPpUD03sV6Wd7dUuywzziBB+KjPPdbVYItsgY=;
	b=u4wJg1+rdwNUFDqaY7dsjBu1JaeQ6r1xxDs6NLj4yg9pv229o9B82xvy7iPpFsDil1
	QMNOB3yGOS/5JUVqvCBQy8fdQ0LnjLIe219erFaiZ9TKKnFocfnEGDxEJGctoXnsVRhi
	kfo6QS6x4eHv8Sg2C1iR8mtSQV268C3sH4TovuyJ7EwZxI76rpZzbEfi+wg5uvywOzEy
	hUo2mA5k5E/z8u/fvXM3PrqdAIXuJJqrfuRg19Z1uBO4AKnKTUoPDivhtyEWh4eVQC1U
	5NyXyjB7i7jGwCZ9QlJLqsiAlEnxGF7uH3oDAzACgGEDiRA8GD5Y2LIHio8+66tTije3
	j3Gg==
MIME-Version: 1.0
X-Received: by 10.15.26.69 with SMTP id m45mr2681817eeu.83.1370365537971; Tue,
	04 Jun 2013 10:05:37 -0700 (PDT)
Received: by 10.223.165.200 with HTTP; Tue, 4 Jun 2013 10:05:37 -0700 (PDT)
Date: Tue, 4 Jun 2013 11:05:37 -0600
Message-ID: <CANwz6nxDiGanW6w3tb2W+6rW6utsbW0d8AtVZqrhZrOP+Xe-xg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: beaglebone beagleboard pandaboard
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
X-List-Received-Date: Tue, 04 Jun 2013 17:05:39 -0000
Content-Type: multipart/alternative; boundary=089e016355161a924b04de571728

--089e016355161a924b04de571728
Content-Type: text/plain; charset=ISO-8859-1

All,
I just built an image for these systems and I noticed that the when logging
in they all came up in / not at /home/root.  I checked /etc/passwd
root:x:0:0:root:/home/root:/bin/sh.  This just occurred after a new git
clone of all meta-data.  The build information all builds is below.
I also noticed that xterm was installed which in previous builds I needed
to install xterm manually.  Where do you find what caused these difference
in builds?

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
meta-oe           = "(nobranch):22100f5b136e1be268055f4da14c39d7a32e9023"
meta-yocto-bsp    = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"

Linux beagleboard 3.4.36-yocto-standard #1 Mon Jun 3 12:11:42 MDT 2013
armv7l GNU/Linux
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
meta-yocto        = "origin/dylan:beda5013e46da16a3d76f095869a5a5c5b1bc08a"
meta-oe           = "master:17ace92714bccf64d0d9fcefaabe3067f59fdf0a"
meta-yocto-bsp    = "origin/dylan:beda5013e46da16a3d76f095869a5a5c5b1bc08a"

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "pandaboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"
meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
meta-oe           = "master:17ace92714bccf64d0d9fcefaabe3067f59fdf0a"
meta-yocto-bsp    = "(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc"

All help will be appreciated.
Thanks

--089e016355161a924b04de571728
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>All,<br></div>I just built an image for these sy=
stems and I noticed that the when logging in they all came up in / not at /=
home/root.=A0 I checked /etc/passwd=A0 root:x:0:0:root:/home/root:/bin/sh.=
=A0 This just occurred after a new git clone of all meta-data.=A0 The build=
 information all builds is below.<br>
</div>I also noticed that xterm was installed which in previous builds I ne=
eded to install xterm manually.=A0 Where do you find what caused these diff=
erence in builds?<br><div><br>Build Configuration:<br>BB_VERSION=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;beaglebone&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =
=3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yo=
cto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):c3cb65041834159a318df9c1a5a05=
f1ef36a2ebc&quot;<br>
meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):d61bfa88ed3df919=
0ac9fd5643c27f77b34c5f01&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D=
 &quot;(nobranch):22100f5b136e1be268055f4da14c39d7a32e9023&quot;<br>meta-yo=
cto-bsp=A0=A0=A0 =3D &quot;(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2=
ebc&quot;<br>
<br>Linux beagleboard 3.4.36-yocto-standard #1 Mon Jun 3 12:11:42 MDT 2013 =
armv7l GNU/Linux<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0=
 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_=
64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.4.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a =
vfp neon&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta<br>meta-yo=
cto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;origin/dylan:beda5013e46da16a3d76f095869=
a5a5c5b1bc08a&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;mast=
er:17ace92714bccf64d0d9fcefaabe3067f59fdf0a&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;origin/dylan:beda5013e46da16a3d76f095869a=
5a5c5b1bc08a&quot;<br><br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;pandaboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.4&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vf=
p neon&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;(nobranch):c3cb65041834159a318df9c1a5a05f1ef36a2ebc&quot;<br>meta-ti=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):d61bfa88ed3df9190ac9fd5643=
c27f77b34c5f01&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:17ace92714bccf64d0d9=
fcefaabe3067f59fdf0a&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;(nobranch):=
c3cb65041834159a318df9c1a5a05f1ef36a2ebc&quot;<br><br></div><div>All help w=
ill be appreciated.<br>Thanks <br>
</div><div><br></div></div>

--089e016355161a924b04de571728--
