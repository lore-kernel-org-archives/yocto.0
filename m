Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f44.google.com (mail-qe0-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6CEE004FF
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 12:09:34 -0800 (PST)
Received: by mail-qe0-f44.google.com with SMTP id ne12so3713103qeb.31
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 12:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=dW4H10LlK/QoquQJBa5lMEZIBapnxLR0xueAfGzVeAU=;
	b=z90/ncuQOQisQPIB8lQ+dx1nYvBExxWmdoCd1J80kZjIKiWQGA8U1WPlYf6kCJmW9M
	fYGvD3jwMxJ3ESp9TE0Yo+7s0WRnyY8ZXAw8wzidz6Jhdp5YZ/uE3mTgkWAXbhBTVGRk
	G0MkNc4aGNxzuPkIyY4bMFyh9dgdsBZqxj1rKfCneDftE+gxynbmbxdS5OVsblmYLUfa
	uOsyXzOM2JDt2Lz2qg/fDndL8r0PJ/bgOGX0FQunLFPKa0RIeVYfI9TmvDWXAuHRFqFr
	C8/v5Lj8zYVxKIucVbPkyNVqstcqRQMvaldCrwirg9k0M2+vjVxGZopehrZkuKmMOJA6
	db5Q==
MIME-Version: 1.0
X-Received: by 10.229.58.4 with SMTP id e4mr36956174qch.22.1384805373695; Mon,
	18 Nov 2013 12:09:33 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Mon, 18 Nov 2013 12:09:33 -0800 (PST)
In-Reply-To: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
References: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
Date: Mon, 18 Nov 2013 13:09:33 -0700
Message-ID: <CANwz6nxKD6JRhr-bY6OaeZ8zFyR0SngcL4=70k0vwhS3Luvkvw@mail.gmail.com>
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
X-List-Received-Date: Mon, 18 Nov 2013 20:09:38 -0000
Content-Type: multipart/alternative; boundary=001a1133098261de5d04eb79200d

--001a1133098261de5d04eb79200d
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Gary Thomas recommended that I do a refresh meta-oe.
I did git pull on poky & meta-oe.both of these are dylan branch
poky
commit 4e399f08d596197859214fdb3b06403b87bf8789
Author: Chen Qi <Qi.Chen@windriver.com>
Date:   Fri Aug 30 10:31:42 2013 +0800
meta-oe
commit 44754206632dd5b0725aeb43e99e4ff9e0245dca
Author: Javier Viguera <javier.viguera@digi.com>
Date:   Thu Sep 5 14:49:01 2013 +0000

now with MACHINE=beagleboard bitbake core-image-sato I am getting the
following error.
 ERROR: Task 3660
(virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-core/dbus/
dbus-glib_0.100.2.bb, do_compile) failed with exit code '1'

My last successful build was
poky
commit 64273e53f2789d2ea8393fc80909ac7086f168a7
Author: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Date:   Mon Jul 8 10:17:51 2013 +0100
meta-oe
commit ed84e64d22400595b68da4e75b48ab7ecc342aa9
Author: Martin Jansa <Martin.Jansa@gmail.com>
Date:   Tue Jun 11 18:44:22 2013 +0200
When I try a build on my custom-image (added packages to
core-image-sato-sdk) I get the following errors.
ERROR: Task 5762
(virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-core/dbus/
dbus-glib_0.100.2.bb, do_compile) failed with exit code '1'
ERROR: Function failed: do_compile (see
/home/vidal/POKY/dylan_build/poky/build/tmp/work/x86_64-linux/python-pygobject-native/2.27.91-r6/temp/log.do_compile.952
for further information)
ERROR: Logfile of failure stored in:
/home/vidal/POKY/dylan_build/poky/build/tmp/work/x86_64-linux/python-pygobject-native/2.27.91-r6/temp/log.do_compile.952



Any and all help will be appreciated.
thanks


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

--001a1133098261de5d04eb79200d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br></div>Gary Thomas =
recommended that I do a refresh meta-oe.<br></div>I did git pull on poky &a=
mp; meta-oe.both of these are dylan branch<br></div><div>poky<br>commit 4e3=
99f08d596197859214fdb3b06403b87bf8789<br>
Author: Chen Qi &lt;<a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windri=
ver.com</a>&gt;<br>Date:=A0=A0 Fri Aug 30 10:31:42 2013 +0800<br></div><div=
>meta-oe<br>commit 44754206632dd5b0725aeb43e99e4ff9e0245dca<br>Author: Javi=
er Viguera &lt;<a href=3D"mailto:javier.viguera@digi.com">javier.viguera@di=
gi.com</a>&gt;<br>
Date:=A0=A0 Thu Sep 5 14:49:01 2013 +0000<br><br></div>now with MACHINE=3Db=
eagleboard bitbake core-image-sato I am getting the following error.<br>=A0=
ERROR: Task 3660 (virtual:native:/home/vidal/POKY/dylan_build/poky/meta/rec=
ipes-core/dbus/<a href=3D"http://dbus-glib_0.100.2.bb">dbus-glib_0.100.2.bb=
</a>, do_compile) failed with exit code &#39;1&#39;<br>
<br></div>My last successful build was <br>poky<br>commit 64273e53f2789d2ea=
8393fc80909ac7086f168a7<br>Author: Peter Kjellerstedt &lt;<a href=3D"mailto=
:peter.kjellerstedt@axis.com">peter.kjellerstedt@axis.com</a>&gt;<br>Date:=
=A0=A0 Mon Jul 8 10:17:51 2013 +0100<br>
</div>meta-oe<br>commit ed84e64d22400595b68da4e75b48ab7ecc342aa9<br>Author:=
 Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com">Martin.Jansa@gm=
ail.com</a>&gt;<br>Date:=A0=A0 Tue Jun 11 18:44:22 2013 +0200<br>When I try=
 a build on my custom-image (added packages to core-image-sato-sdk) I get t=
he following errors. <br>
ERROR: Task 5762 (virtual:native:/home/vidal/POKY/dylan_build/poky/meta/rec=
ipes-core/dbus/<a href=3D"http://dbus-glib_0.100.2.bb">dbus-glib_0.100.2.bb=
</a>, do_compile) failed with exit code &#39;1&#39;<br>ERROR: Function fail=
ed: do_compile (see /home/vidal/POKY/dylan_build/poky/build/tmp/work/x86_64=
-linux/python-pygobject-native/2.27.91-r6/temp/log.do_compile.952 for furth=
er information)<br>
ERROR: Logfile of failure stored in: /home/vidal/POKY/dylan_build/poky/buil=
d/tmp/work/x86_64-linux/python-pygobject-native/2.27.91-r6/temp/log.do_comp=
ile.952<br><br><br><br></div>Any and all help will be appreciated.<br>thank=
s<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sun,=
 Nov 17, 2013 at 5:17 PM, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a=
>&gt;</span> wrote:<br>
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

--001a1133098261de5d04eb79200d--
