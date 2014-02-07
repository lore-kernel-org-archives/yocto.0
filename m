Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD784E006C4;
	Fri,  7 Feb 2014 13:45:51 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id x13so6917812qcv.5
	for <multiple recipients>; Fri, 07 Feb 2014 13:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nU0DD5kMz8q+GBfLesGgmTKIznk74QlnbEju43a2OFQ=;
	b=T/iRCybPiHNetx1h5g0gBi+kjxR2l+Anp4OmGoM8ImZ/yx5pKIKwyp7HoKWzqfHjgl
	u4ITL6aojuLJ+1lHjn3YLAUSheqKvS7eyxfx1YRvQknKpeZzvN9BUXqGSLGfjKdroDNo
	Spssq4n6TwourH9Qd3jaK7SsIKwmckGd14tnqKv/auub8Yy4aRYScoePSX+6yml8Xe7t
	KZ2KHLLaaAwdE4VjVWSOMRTmVYqWTJVU68UcdzmfUzKvoh2Y1Scdzh3FpQwcQND5vsD9
	sdZLpqtAfyzNpfr7B5TlONVRqgdMxRfgkYwg0u2ixbjyrtWPXSc7odJAuPmR5RYBjjP8
	sLPg==
MIME-Version: 1.0
X-Received: by 10.229.84.198 with SMTP id k6mr6140689qcl.20.1391787341286;
	Fri, 07 Feb 2014 07:35:41 -0800 (PST)
Received: by 10.140.93.182 with HTTP; Fri, 7 Feb 2014 07:35:41 -0800 (PST)
Date: Fri, 7 Feb 2014 08:35:41 -0700
Message-ID: <CANwz6nzGZ80AtYrA2WnpRRx+hODV-ONsLrS4O+b4XG5rMrgiHg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: EXTRA_IMAGE_FEATURES dora branch local.conf
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
X-List-Received-Date: Fri, 07 Feb 2014 21:45:55 -0000
Content-Type: multipart/alternative; boundary=001a1134541a14913904f1d2be5c

--001a1134541a14913904f1d2be5c
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
I am working on dora branch
The EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk dev-pkgs" appears to
have an error.  I am having to include the dev on the IMAGE_INSTALL line of
my custom-image.
IMAGE_INSTALL += "kernel-dev fpga-image-adi adi-hdmi-load \
kernel-modules modutils-loadscript zed-audio v4l-utils gsl gsl-dev gnuplot \
chkconfig git jasper fluidsynth liba52 boost \
qt-mobility-x11 libmad python-netserver gnuradio xterm \
python-pygtk python-pygtk-dev python-lxml opencv opencv-samples \
gnuradio-dev opencv-apps opencv-dev opencv-samples-dev \
gnuradio-doc gnuradio-examples \
opencv-staticdev python-cheetah x264 lua5.1 libav "

This was not needed in dylan branch.
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

Any and all help is appreciated.
Thanks

--001a1134541a14913904f1d2be5c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello all,<br></div>I am working =
on dora branch<br></div>The EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks too=
ls-sdk dev-pkgs&quot; appears to have an error.=A0 I am having to include t=
he dev on the IMAGE_INSTALL line of my custom-image.=A0 <br>
IMAGE_INSTALL +=3D &quot;kernel-dev fpga-image-adi adi-hdmi-load \<br>kerne=
l-modules modutils-loadscript zed-audio v4l-utils gsl gsl-dev gnuplot \<br>=
chkconfig git jasper fluidsynth liba52 boost \<br>qt-mobility-x11 libmad py=
thon-netserver gnuradio xterm \<br>
python-pygtk python-pygtk-dev python-lxml opencv opencv-samples \<br>gnurad=
io-dev opencv-apps opencv-dev opencv-samples-dev \<br>gnuradio-doc gnuradio=
-examples \<br>opencv-staticdev python-cheetah x264 lua5.1 libav &quot;<br>
<br></div>This was not needed in dylan branch.<br>BB_VERSION=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;1.20.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Ubuntu-12.04&quot;<=
br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<b=
r>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;zedboard&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=
=A0 =3D &quot;1.5.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vfp=
 neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>=
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;dora:c3cccbea7abd4af3d603b2be42b0=
c7291ff21946&quot;<br>meta-topic=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:9af0=
ecd7e756b367e0ec80263319247b6c2d69c3&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 <br>meta-multimedia=A0=A0 <br>meta-gnome=A0=A0=A0=A0=A0=A0=A0 =3D=
 &quot;dora:191499a2b54d04855284347ce5a067f998646be4&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;dora:c3cccbea7abd4af3d603b2be42b0c7291ff2=
1946&quot;<br><br></div>Any and all help is appreciated.<br></div>Thanks<br=
><div><div><div><br></div></div></div></div>

--001a1134541a14913904f1d2be5c--
