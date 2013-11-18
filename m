Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0230CE0030B
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 16:17:27 -0800 (PST)
Received: by mail-qe0-f43.google.com with SMTP id 2so1344416qeb.2
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 16:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=u7p6knUJCG5Yl9EMPBDEmH9gITXQOx6dQHHr4hTxOAE=;
	b=nHceWaqCXgoa+W9DeST3zdCutDYgIizCA4JUqFp5KiywH2ZhWJHelJ9YZ8Agu9HWk+
	8Lf4FOr99/gg1A0y8kXpvyo+4hm6y1gfQMAjaQaQranx9qGm5A+udFlHGQRi6eCeWxn6
	3j5VQLYP/8f71We443f5PUK4Af70/AUcvIf5aWQ8EspID2FzjLhAGZhgO65ROqQYXtTG
	LKgRf/hB3KXPqocTqFaIqeSHKPLyRMULZaEzEdCLx4VzN/57jdHIQDpzUM0scI3Q9Oa9
	4XGkdkBTn80ExW37ptxjg+TVMj7XVYKqF4hPIGRsqPBkhmOSB271/X9HP8pnju0ZT6ev
	GBTA==
MIME-Version: 1.0
X-Received: by 10.229.43.201 with SMTP id x9mr29664122qce.10.1384733846545;
	Sun, 17 Nov 2013 16:17:26 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Sun, 17 Nov 2013 16:17:26 -0800 (PST)
Date: Sun, 17 Nov 2013 17:17:26 -0700
Message-ID: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: wrong version of busybox after adding new layers.
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
X-List-Received-Date: Mon, 18 Nov 2013 00:17:28 -0000
Content-Type: multipart/alternative; boundary=089e0160c9500828ae04eb6879b2

--089e0160c9500828ae04eb6879b2
Content-Type: text/plain; charset=ISO-8859-1

Hello,
MACHINE=zedboard bitbake core-image-sato builds okay.

Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20131117"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "wkg:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
meta-yocto-bsp    = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"

NOTE: Running noexec task 5589 of 5595 (ID: 3428,
/home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
gst-meta-base_0.10.bb, do_build)
NOTE: Running noexec task 5590 of 5595 (ID: 3103,
/home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
gst-plugins-good_0.10.31.bb, do_build)
NOTE: Running noexec task 5591 of 5595 (ID: 2804,
/home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/owl-video-widget/
libowl-av_git.bb, do_build)
NOTE: Running noexec task 5592 of 5595 (ID: 1583,
/home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/gaku/
gaku_git.bb, do_build)
NOTE: Running noexec task 5593 of 5595 (ID: 313,
/home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/packagegroups/
packagegroup-core-x11-sato.bb, do_build)
NOTE: Running task 5594 of 5595 (ID: 7,
/home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
core-image-sato.bb, do_rootfs)
NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Started
NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded
NOTE: Running noexec task 5595 of 5595 (ID: 12,
/home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
core-image-sato.bb, do_build)
NOTE: Tasks Summary: Attempted 5595 tasks of which 404 didn't need to be
rerun and all succeeded.

busybox:
  meta                 1.21.1
was used.

After adding these 2 lines to bblayers.conf
  /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \
  /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \

bitbake-layers show-layers
layer                 path                                      priority
==========================================================================
meta                  /home/vidal/POKY/build111613_zedboard/poky/meta  5
meta-yocto
/home/vidal/POKY/build111613_zedboard/poky/meta-yocto  5
meta-oe
/home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe  6
meta-multimedia
/home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia  6
meta-xilinx
/home/vidal/POKY/build111613_zedboard/poky/meta-xilinx  8
meta-kc705
/home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-kc705  8
meta-zc702
/home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc702  8
meta-zedboard
/home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zedboard  8
meta-yocto-bsp
/home/vidal/POKY/build111613_zedboard/poky/meta-yocto-bsp  5
[vidal@ws009 build]$ bitbake-layers show-recipes
Parsing recipes..ERROR: No recipes available for:

/home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe/recipes-core/busybox/busybox_1.20.2.bbappend
What is the procedure to us busybox_1.20.2 with the new layers?
Any and all help is appreciated.
Thanks

--089e0160c9500828ae04eb6879b2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br>MACHINE=3Dzedboard bitbake core-image-sato =
builds okay. <br><br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;1.19.1&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x=
86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;zedboard&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=
=A0 =3D &quot;1.4+snapshot-20131117&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D =
&quot; armv7a vfp neon zynq&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;wkg:3dee534f1e25109e0bdb681de0746c336f4b8840&quot;<br>meta-xilinx=A0=A0=
=A0=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=A0=A0 <br>meta-zc702=A0=A0=A0=A0=
=A0=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =3D &quot;wkg:46f4c79d6d55b556a90bb=
0fd89c2c09acf2aebff&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;wkg:3dee534f1e25109e0bdb681de0746c336f4b8=
840&quot;<br><br>NOTE: Running noexec task 5589 of 5595 (ID: 3428, /home/vi=
dal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/<a hre=
f=3D"http://gst-meta-base_0.10.bb">gst-meta-base_0.10.bb</a>, do_build)<br>
NOTE: Running noexec task 5590 of 5595 (ID: 3103, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-multimedia/gstreamer/<a href=3D"http://gst-p=
lugins-good_0.10.31.bb">gst-plugins-good_0.10.31.bb</a>, do_build)<br>NOTE:=
 Running noexec task 5591 of 5595 (ID: 2804, /home/vidal/POKY/build111613_z=
edboard/poky/meta/recipes-sato/owl-video-widget/<a href=3D"http://libowl-av=
_git.bb">libowl-av_git.bb</a>, do_build)<br>
NOTE: Running noexec task 5592 of 5595 (ID: 1583, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-sato/gaku/<a href=3D"http://gaku_git.bb">gak=
u_git.bb</a>, do_build)<br>NOTE: Running noexec task 5593 of 5595 (ID: 313,=
 /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/packagegroups=
/<a href=3D"http://packagegroup-core-x11-sato.bb">packagegroup-core-x11-sat=
o.bb</a>, do_build)<br>
NOTE: Running task 5594 of 5595 (ID: 7, /home/vidal/POKY/build111613_zedboa=
rd/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb">core=
-image-sato.bb</a>, do_rootfs)<br>NOTE: recipe core-image-sato-1.0-r0: task=
 do_rootfs: Started<br>
NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded<br>NOTE: Run=
ning noexec task 5595 of 5595 (ID: 12, /home/vidal/POKY/build111613_zedboar=
d/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb">core-=
image-sato.bb</a>, do_build)<br>
NOTE: Tasks Summary: Attempted 5595 tasks of which 404 didn&#39;t need to b=
e rerun and all succeeded.<br><br>busybox:<br>=A0 meta=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 1.21.1<br></div>was used.<br><br><div>After add=
ing these 2 lines to bblayers.conf <br>
=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \<br>=A0 /ho=
me/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \<br><br>bi=
tbake-layers show-layers<br>layer=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 path=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priority<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/b=
uild111613_zedboard/poky/meta=A0 5<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-yocto=A0 5<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111=
613_zedboard/poky/meta-oe/meta-oe=A0 6<br>meta-multimedia=A0=A0=A0=A0=A0=A0=
 /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia=A0 6<br=
>meta-xilinx=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111613_zed=
board/poky/meta-xilinx=A0 8<br>
meta-kc705=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111613_ze=
dboard/poky/meta-xilinx/meta-kc705=A0 8<br>meta-zc702=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc=
702=A0 8<br>meta-zedboard=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111=
613_zedboard/poky/meta-xilinx/meta-zedboard=A0 8<br>
meta-yocto-bsp=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/build111613_zedboard/p=
oky/meta-yocto-bsp=A0 5<br>[vidal@ws009 build]$ bitbake-layers show-recipes=
<br>Parsing recipes..ERROR: No recipes available for:<br>=A0 /home/vidal/PO=
KY/build111613_zedboard/poky/meta-oe/meta-oe/recipes-core/busybox/busybox_1=
.20.2.bbappend<br>
What is the procedure to us busybox_1.20.2 with the new layers?<br>Any and =
all help is appreciated.<br>Thanks<br><br>=A0<br><br></div></div>

--089e0160c9500828ae04eb6879b2--
