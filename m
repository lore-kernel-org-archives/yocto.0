Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3A29E002AC
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 20:34:25 -0800 (PST)
Received: by mail-qe0-f51.google.com with SMTP id d4so1200607qej.10
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 20:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=G72dcaE05ThZI/dEVUVmwp84VjFZ2SqQrq+ein22MOs=;
	b=R56nCL/OfPDrT3MV2HwPLbK4p76xMty//PR5X1CnvnQORA0fpk1/32OanuwpmFJtJ/
	SXJk9gXr8opzGHE+OwttGKqWhANDA2x47pmzhv59GYCbZFShl0ITcuJCp3lQ5nghJCzP
	PeI9KGo+Ix/JmQqf4XPfKyiQ1Ga9jxzXMuvCEeJFSMC6DXTCmvkxpYQIK7vq+Vr5hb/5
	HHwqxIlKsxlXQc1p9KO/du3Y2YwC3wA5x4/zV7cRGOzQkNTWuMZJ+Uh7DPJE8Qu04I4S
	BkdVZHaW2EfEz0cxZ/e3KNqkKp7PtqG8GotvkWXLoohOvueYk4ChmMzspUfEnNZjliyR
	6Ceg==
MIME-Version: 1.0
X-Received: by 10.224.32.66 with SMTP id b2mr39937206qad.80.1384835664434;
	Mon, 18 Nov 2013 20:34:24 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Mon, 18 Nov 2013 20:34:24 -0800 (PST)
In-Reply-To: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
References: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
Date: Mon, 18 Nov 2013 21:34:24 -0700
Message-ID: <CANwz6nxNuT0bjn_tSb-wB=3d7pYatUWDEXXCEH1YWnQxF_OjWg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wrong version of busybox after adding new layers.
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
X-List-Received-Date: Tue, 19 Nov 2013 04:34:26 -0000
Content-Type: multipart/alternative; boundary=001a11c2c2fcd9db9a04eb802d53

--001a11c2c2fcd9db9a04eb802d53
Content-Type: text/plain; charset=ISO-8859-1

Hello,
This fixed 1 error. Please pass to meta-oe group
git diff
diff --git a/meta-oe/recipes-connectivity/uhd/uhd-firmware_003.005.002.bbb/meta
index 3afae27..7fc0574 100644
--- a/meta-oe/recipes-connectivity/uhd/uhd-firmware_003.005.002.bb
+++ b/meta-oe/recipes-connectivity/uhd/uhd-firmware_003.005.002.bb
@@ -9,8 +9,8 @@ LIC_FILES_CHKSUM = "file://share/uhd/images/
usrp_e100_fpga_v2.bi
 inherit allarch

 SRC_URI = "
http://files.ettus.com/binaries/uhd_stable/releases/uhd_${PV}-releas
-SRC_URI[md5sum] = "2dbb7e2fb0c774e5ea2372bac25102e5"
-SRC_URI[sha256sum] =
"217efa814fb031ad136bd3dcf89ca219dd6d7ee01aa7e65c56c56b773
+SRC_URI[md5sum] = "2912c1c7cde099f2671f2f8f24879b82"
+SRC_URI[sha256sum] =
"6c3c70158e74754f29d9709a7668eff6238a5cd5bf31e35b31bbeaaee

 S = "${WORKDIR}/uhd-images_${PV}-release
I still have several ERRORS will continue in the morning trying to find
fixes
Any and all help will be appreciated
Thanks


On Sun, Nov 17, 2013 at 5:17 PM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Hello,
> MACHINE=zedboard bitbake core-image-sato builds okay.
>
> Build Configuration:
> BB_VERSION        = "1.19.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zedboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4+snapshot-20131117"
> TUNE_FEATURES     = " armv7a vfp neon zynq"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
> meta-xilinx
> meta-kc705
> meta-zc702
> meta-zedboard     = "wkg:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
> meta-yocto-bsp    = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
>
> NOTE: Running noexec task 5589 of 5595 (ID: 3428,
> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
> gst-meta-base_0.10.bb, do_build)
> NOTE: Running noexec task 5590 of 5595 (ID: 3103,
> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/
> gst-plugins-good_0.10.31.bb, do_build)
> NOTE: Running noexec task 5591 of 5595 (ID: 2804,
> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/owl-video-widget/
> libowl-av_git.bb, do_build)
> NOTE: Running noexec task 5592 of 5595 (ID: 1583,
> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/gaku/
> gaku_git.bb, do_build)
> NOTE: Running noexec task 5593 of 5595 (ID: 313,
> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/packagegroups/
> packagegroup-core-x11-sato.bb, do_build)
> NOTE: Running task 5594 of 5595 (ID: 7,
> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
> core-image-sato.bb, do_rootfs)
> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Started
> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded
> NOTE: Running noexec task 5595 of 5595 (ID: 12,
> /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/
> core-image-sato.bb, do_build)
> NOTE: Tasks Summary: Attempted 5595 tasks of which 404 didn't need to be
> rerun and all succeeded.
>
> busybox:
>   meta                 1.21.1
> was used.
>
> After adding these 2 lines to bblayers.conf
>   /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \
>   /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \
>
> bitbake-layers show-layers
> layer                 path                                      priority
> ==========================================================================
> meta                  /home/vidal/POKY/build111613_zedboard/poky/meta  5
> meta-yocto
> /home/vidal/POKY/build111613_zedboard/poky/meta-yocto  5
> meta-oe
> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe  6
> meta-multimedia
> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia  6
> meta-xilinx
> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx  8
> meta-kc705
> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-kc705  8
> meta-zc702
> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc702  8
> meta-zedboard
> /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zedboard  8
> meta-yocto-bsp
> /home/vidal/POKY/build111613_zedboard/poky/meta-yocto-bsp  5
> [vidal@ws009 build]$ bitbake-layers show-recipes
> Parsing recipes..ERROR: No recipes available for:
>
> /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe/recipes-core/busybox/busybox_1.20.2.bbappend
> What is the procedure to us busybox_1.20.2 with the new layers?
> Any and all help is appreciated.
> Thanks
>
>
>
>

--001a11c2c2fcd9db9a04eb802d53
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br></div>This fixed 1 error. Pl=
ease pass to meta-oe group<br>git diff<br>diff --git a/meta-oe/recipes-conn=
ectivity/uhd/<a href=3D"http://uhd-firmware_003.005.002.bb">uhd-firmware_00=
3.005.002.bb</a> b/meta<br>
index 3afae27..7fc0574 100644<br>--- a/meta-oe/recipes-connectivity/uhd/<a =
href=3D"http://uhd-firmware_003.005.002.bb">uhd-firmware_003.005.002.bb</a>=
<br>+++ b/meta-oe/recipes-connectivity/uhd/<a href=3D"http://uhd-firmware_0=
03.005.002.bb">uhd-firmware_003.005.002.bb</a><br>
@@ -9,8 +9,8 @@ LIC_FILES_CHKSUM =3D &quot;file://share/uhd/images/<a href=
=3D"http://usrp_e100_fpga_v2.bi">usrp_e100_fpga_v2.bi</a><br>=A0inherit all=
arch<br>=A0<br>=A0SRC_URI =3D &quot;<a href=3D"http://files.ettus.com/binar=
ies/uhd_stable/releases/uhd_${PV}-releas">http://files.ettus.com/binaries/u=
hd_stable/releases/uhd_${PV}-releas</a><br>
-SRC_URI[md5sum] =3D &quot;2dbb7e2fb0c774e5ea2372bac25102e5&quot;<br>-SRC_U=
RI[sha256sum] =3D &quot;217efa814fb031ad136bd3dcf89ca219dd6d7ee01aa7e65c56c=
56b773<br>+SRC_URI[md5sum] =3D &quot;2912c1c7cde099f2671f2f8f24879b82&quot;=
<br>
+SRC_URI[sha256sum] =3D &quot;6c3c70158e74754f29d9709a7668eff6238a5cd5bf31e=
35b31bbeaaee<br>=A0<br>=A0S =3D &quot;${WORKDIR}/uhd-images_${PV}-release<b=
r></div>I still have several ERRORS will continue in the morning trying to =
find fixes <br>
</div>Any and all help will be appreciated <br></div>Thanks<br></div><div c=
lass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sun, Nov 17, 201=
3 at 5:17 PM, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.de=
velone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello,<br>MACHINE=3Dze=
dboard bitbake core-image-sato builds okay. <br><br>Build Configuration:<br=
>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.19.1&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>
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
f=3D"http://gst-meta-base_0.10.bb" target=3D"_blank">gst-meta-base_0.10.bb<=
/a>, do_build)<br>

NOTE: Running noexec task 5590 of 5595 (ID: 3103, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-multimedia/gstreamer/<a href=3D"http://gst-p=
lugins-good_0.10.31.bb" target=3D"_blank">gst-plugins-good_0.10.31.bb</a>, =
do_build)<br>
NOTE: Running noexec task 5591 of 5595 (ID: 2804, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-sato/owl-video-widget/<a href=3D"http://libo=
wl-av_git.bb" target=3D"_blank">libowl-av_git.bb</a>, do_build)<br>
NOTE: Running noexec task 5592 of 5595 (ID: 1583, /home/vidal/POKY/build111=
613_zedboard/poky/meta/recipes-sato/gaku/<a href=3D"http://gaku_git.bb" tar=
get=3D"_blank">gaku_git.bb</a>, do_build)<br>NOTE: Running noexec task 5593=
 of 5595 (ID: 313, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-=
sato/packagegroups/<a href=3D"http://packagegroup-core-x11-sato.bb" target=
=3D"_blank">packagegroup-core-x11-sato.bb</a>, do_build)<br>

NOTE: Running task 5594 of 5595 (ID: 7, /home/vidal/POKY/build111613_zedboa=
rd/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb" targ=
et=3D"_blank">core-image-sato.bb</a>, do_rootfs)<br>NOTE: recipe core-image=
-sato-1.0-r0: task do_rootfs: Started<br>

NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded<br>NOTE: Run=
ning noexec task 5595 of 5595 (ID: 12, /home/vidal/POKY/build111613_zedboar=
d/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb" targe=
t=3D"_blank">core-image-sato.bb</a>, do_build)<br>

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
</blockquote></div><br></div>

--001a11c2c2fcd9db9a04eb802d53--
