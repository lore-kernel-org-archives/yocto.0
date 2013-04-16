Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1688E0140A
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 17:00:35 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id e53so2546920eek.23
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 17:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=AruEB9bB98InOlQoWuoiRe6b9SzAUTic5S0jhFpS04A=;
	b=K9Y86uXgysw5LqvZtG/jmn7Ew6V0hNrQoWY+ANoMu95QWdk2Bx86MsTODMMf7w+4Ij
	bBR3f4Gw/NLjctx7Zht4lN/GZknGCNNPXwZ4enwp9vh8kgPMEikMloGKntcL64GKr75r
	1rIb7b9OkGaAe3CoV+ZPzZBgG7GeaojpfwE1pFDOFBcID56cRNsW2Wa4lVDX/10MkKwK
	pDgZBZUGqoWHSpPRvNWT52Mk6H7pqu3Ds0XPZSB+yMNRbsjduxcdVGGtmlxi8h+Rkmy8
	8O0vQhieYGxKHZhhQFUlwHnC9g+sVcQDB4c33whvn/x2qQ6WgGK11sQ+/wYDmt68qCCM
	LxAQ==
MIME-Version: 1.0
X-Received: by 10.15.101.200 with SMTP id bp48mr67193632eeb.38.1366070434452; 
	Mon, 15 Apr 2013 17:00:34 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Mon, 15 Apr 2013 17:00:34 -0700 (PDT)
Date: Mon, 15 Apr 2013 18:00:34 -0600
Message-ID: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard, qemuarm, beaglebone, and pandaboard images.
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
X-List-Received-Date: Tue, 16 Apr 2013 00:00:36 -0000
Content-Type: multipart/alternative; boundary=089e01634030fbf7cb04da6f0eca

--089e01634030fbf7cb04da6f0eca
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I recently downloaded  a new version of yocto and created
core-images-sato-sdk-ex for the beagleboard, qemuarm, beaglebone, and
pandaboard. Each of these had a different number of RPMs installed.  These
images all booted okay on the various platforms and emulator.  Is this
normal that the RPMs varies so much?

beagleboard 1949 RPMs
qemuarm 1747 RPMs
beaglebone 1742 RPMs
pandaboard 3842 RPMs
Any and all help will be appreciated.
Thanks
The following provides information for each build.

I added boost and qt-mobility-x11 with
poky/meta/recipes-sato/images/core-image-sato-sdk-ex.bb
require core-image-sato.bb

DESCRIPTION = "Image with Sato support that includes everything within \
core-image-sato plus meta-toolchain, development headers and libraries to \
form a standalone SDK."

IMAGE_FEATURES += "dev-pkgs tools-sdk qt4-pkgs \
        tools-debug eclipse-debug tools-profile tools-testapps debug-tweaks
ssh-server-openssh "

IMAGE_INSTALL += "kernel-dev boost qt-mobility-x11"

beagleboard

commit 068085f79010e3db70085d4b789f84ae721e4901
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Fri Apr 12 13:27:42 2013 -0700

    ref-manual: Review comments applied for patch session

    Paul Eggleton provided quite a series of patches that I previously
    applied.  These changes represent the edits from an interactive
    review he conducted with me.  The series of changes represents
    his review for the entire set of changes in the original patch
    series.

    (From yocto-docs rev: e26f615a01de2b101e97eb6fd7175b813f74295e)

    Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


MACHINE=beagleboard bitbake core-image-sato-sdk-ex
boost qt-mobility-x11
beagleboard_pkglist041513 1949  RPMs
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/root        8256952 1409936   6427588  18% /

devtmpfs          245660       4    245656   1% /dev
tmpfs                 40       0        40   0% /mnt/.psplash
tmpfs             245848     208    245640   1% /var/volatile
tmpfs             245848       0    245848   0% /media/ram
/dev/mmcblk0p3  21939068 7176188  13648412  35% /media/mmcblk0p3
/dev/mmcblk0p1     81742    4522     77220   6% /media/mmcblk0p1
Linux beagleboard 3.4.36-yocto-standard #1 Sun Apr 14 17:22:51 MDT 2013
armv7l GNU/Linux
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130414"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "master:068085f79010e3db70085d4b789f84ae721e4901"
gsl-1.15beaglebone041113.tgz
make install
/usr/local/bin# ls
gsl-config  gsl-histogram  gsl-randist
/usr/local/lib# ls
libgsl.a   libgsl.so.0       libgslcblas.la    libgslcblas.so.0.0.0
libgsl.la  libgsl.so.0.16.0  libgslcblas.so    pkgconfig
libgsl.so  libgslcblas.a     libgslcblas.so.0

qemuarm

commit 068085f79010e3db70085d4b789f84ae721e4901
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Fri Apr 12 13:27:42 2013 -0700

    ref-manual: Review comments applied for patch session

    Paul Eggleton provided quite a series of patches that I previously
    applied.  These changes represent the edits from an interactive
    review he conducted with me.  The series of changes represents
    his review for the entire set of changes in the original patch
    series.

    (From yocto-docs rev: e26f615a01de2b101e97eb6fd7175b813f74295e)

    Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


MACHINE=beagleboard bitbake core-image-sato-sdk-ex
boost qt-mobility-x11
qemuarm_pkglist041513 1747  RPMs
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/root        1550287 1082681    388760  74% /
devtmpfs           60184       4     60180   1% /dev
tmpfs                 40       0        40   0% /mnt/.psplash
tmpfs              60308     208     60100   1% /var/volatile
tmpfs              60308       0     60308   0% /media/ram
Linux qemuarm 3.8.4-yocto-standard #1 PREEMPT Mon Apr 15 11:32:36 MDT 2013
armv5tejl GNU/Linux
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130415"
TUNE_FEATURES     = "armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-yocto-bsp    = "master:068085f79010e3db70085d4b789f84ae721e4901"
gsl-1.15beaglebone041113.tgz
make install
/usr/local/bin# ls
gsl-config  gsl-histogram  gsl-randist
/usr/local/lib# ls
libgsl.a   libgsl.so.0       libgslcblas.la    libgslcblas.so.0.0.0
libgsl.la  libgsl.so.0.16.0  libgslcblas.so    pkgconfig
libgsl.so  libgslcblas.a     libgslcblas.so.0

beaglebone

commit 068085f79010e3db70085d4b789f84ae721e4901
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Fri Apr 12 13:27:42 2013 -0700

    ref-manual: Review comments applied for patch session

    Paul Eggleton provided quite a series of patches that I previously
    applied.  These changes represent the edits from an interactive
    review he conducted with me.  The series of changes represents
    his review for the entire set of changes in the original patch
    series.

    (From yocto-docs rev: e26f615a01de2b101e97eb6fd7175b813f74295e)

    Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

commit d61bfa88ed3df9190ac9fd5643c27f77b34c5f01
Author: Denys Dmytriyenko <denys@ti.com>
Date:   Mon Feb 25 22:48:33 2013 -0500

    linux-omapl138: fix alignment issue of 2.6.37 kernel with gcc-4.7
    Patch by Steve Sakoman

    Signed-off-by: Denys Dmytriyenko <denys@ti.com>

MACHINE=beaglebone bitbake core-image-sato-sdk-ex
boost qt-mobility-x11
beaglebone_pkglist041513 1742 RPMs
/dev/root        3391776 1237764   1981716  39% /
devtmpfs          127164       4    127160   1% /dev
tmpfs                 40       0        40   0% /mnt/.psplash
tmpfs             127276     132    127144   1% /var/volatile
tmpfs             127276       0    127276   0% /media/ram
Linux beaglebone 3.2.28 #1 Sun Apr 14 20:52:55 MDT 2013 armv7l GNU/Linux
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130415"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:068085f79010e3db70085d4b789f84ae721e4901"
meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
meta-yocto-bsp    = "master:068085f79010e3db70085d4b789f84ae721e4901"
gsl-1.15beaglebone041113.tgz
make install
/usr/local/bin# ls
gsl-config  gsl-histogram  gsl-randist
/usr/local/lib# ls
libgsl.a   libgsl.so.0       libgslcblas.la    libgslcblas.so.0.0.0
libgsl.la  libgsl.so.0.16.0  libgslcblas.so    pkgconfig
libgsl.so  libgslcblas.a     libgslcblas.so.0

pandaboard

commit 068085f79010e3db70085d4b789f84ae721e4901
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Fri Apr 12 13:27:42 2013 -0700

    ref-manual: Review comments applied for patch session

    Paul Eggleton provided quite a series of patches that I previously
    applied.  These changes represent the edits from an interactive
    review he conducted with me.  The series of changes represents
    his review for the entire set of changes in the original patch
    series.

    (From yocto-docs rev: e26f615a01de2b101e97eb6fd7175b813f74295e)

    Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

commit d61bfa88ed3df9190ac9fd5643c27f77b34c5f01
Author: Denys Dmytriyenko <denys@ti.com>
Date:   Mon Feb 25 22:48:33 2013 -0500

    linux-omapl138: fix alignment issue of 2.6.37 kernel with gcc-4.7
    Patch by Steve Sakoman

    Signed-off-by: Denys Dmytriyenko <denys@ti.com>

MACHINE=beaglebone bitbake core-image-sato-sdk-ex
boost qt-mobility-x11
pandaboard_pkglist041513 3842  RPMs
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/root        3723848 1405656   2129028  40% /
devtmpfs          425908       4    425904   1% /dev
tmpfs                 40       0        40   0% /mnt/.psplash
tmpfs             512120     308    511812   1% /var/volatile
tmpfs             512120       0    512120   0% /media/ram
/dev/mmcblk0p1     72098    4474     67624   7% /media/mmcblk0p1
Linux pandaboard 3.4.11 #1 SMP PREEMPT Mon Apr 15 02:45:54 MDT 2013 armv7l
GNU/Linux
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "pandaboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130415"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:068085f79010e3db70085d4b789f84ae721e4901"
meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
meta-yocto-bsp    = "master:068085f79010e3db70085d4b789f84ae721e4901"
gsl-1.15beaglebone041113.tgz
make install
/usr/local/bin# ls
gsl-config  gsl-histogram  gsl-randist
/usr/local/lib# ls
libgsl.a   libgsl.so.0       libgslcblas.la    libgslcblas.so.0.0.0
libgsl.la  libgsl.so.0.16.0  libgslcblas.so    pkgconfig
libgsl.so  libgslcblas.a     libgslcblas.so.0

--089e01634030fbf7cb04da6f0eca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div>I recently downloaded=A0 a =
new version of yocto and created core-images-sato-sdk-ex for the beagleboar=
d, qemuarm, beaglebone, and pandaboard. Each of these had a different numbe=
r of RPMs installed.=A0 These images all booted okay on the various platfor=
ms and emulator.=A0 Is this normal that the RPMs varies so much?<br>
<br>beagleboard 1949 RPMs<br>qemuarm 1747 RPMs<br>beaglebone 1742 RPMs<br>p=
andaboard 3842 RPMs<br>Any and all help will be appreciated.<br>Thanks <br>=
The following provides information for each build.<br><br>I added boost and=
 qt-mobility-x11 with<br>
poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato-sdk-ex.bb">=
core-image-sato-sdk-ex.bb</a>=A0 <br>require <a href=3D"http://core-image-s=
ato.bb">core-image-sato.bb</a><br><br>DESCRIPTION =3D &quot;Image with Sato=
 support that includes everything within \<br>
core-image-sato plus meta-toolchain, development headers and libraries to \=
<br>form a standalone SDK.&quot;<br><br>IMAGE_FEATURES +=3D &quot;dev-pkgs =
tools-sdk qt4-pkgs \<br>=A0=A0=A0=A0=A0=A0=A0 tools-debug eclipse-debug too=
ls-profile tools-testapps debug-tweaks ssh-server-openssh &quot;<br>
<br>IMAGE_INSTALL +=3D &quot;kernel-dev boost qt-mobility-x11&quot;<br><br>=
beagleboard<br><br>commit 068085f79010e3db70085d4b789f84ae721e4901<br>Autho=
r: Scott Rifenbark &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott=
.m.rifenbark@intel.com</a>&gt;<br>
Date:=A0=A0 Fri Apr 12 13:27:42 2013 -0700<br><br>=A0=A0=A0 ref-manual: Rev=
iew comments applied for patch session<br>=A0=A0=A0 <br>=A0=A0=A0 Paul Eggl=
eton provided quite a series of patches that I previously<br>=A0=A0=A0 appl=
ied.=A0 These changes represent the edits from an interactive<br>
=A0=A0=A0 review he conducted with me.=A0 The series of changes represents<=
br>=A0=A0=A0 his review for the entire set of changes in the original patch=
<br>=A0=A0=A0 series.<br>=A0=A0=A0 <br>=A0=A0=A0 (From yocto-docs rev: e26f=
615a01de2b101e97eb6fd7175b813f74295e)<br>
=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Scott Rifenbark &lt;<a href=3D"mailt=
o:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>=A0=
=A0=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@l=
inuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
<br><br>MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex<br>boost qt-mo=
bility-x11<br>beagleboard_pkglist041513 1949=A0 RPMs<br>Filesystem=A0=A0=A0=
=A0 1K-blocks=A0=A0=A0 Used Available Use% Mounted on<br>/dev/root=A0=A0=A0=
=A0=A0=A0=A0 8256952 1409936=A0=A0 6427588=A0 18% /<br>
<br>devtmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0 245660=A0=A0=A0=A0=A0=A0 4=A0=A0=A0=
 245656=A0=A0 1% /dev<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 40=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0=A0=A0=A0 40=A0=A0 0% /mnt/.psplash<b=
r>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 245848=A0=A0=A0=A0 208=A0=A0=A0=
 245640=A0=A0 1% /var/volatile<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 245848=A0=A0=A0=A0=A0=A0 0=A0=A0=A0 245848=A0=A0 0% /media/ram<br>
/dev/mmcblk0p3=A0 21939068 7176188=A0 13648412=A0 35% /media/mmcblk0p3<br>/=
dev/mmcblk0p1=A0=A0=A0=A0 81742=A0=A0=A0 4522=A0=A0=A0=A0 77220=A0=A0 6% /m=
edia/mmcblk0p1<br>Linux beagleboard 3.4.36-yocto-standard #1 Sun Apr 14 17:=
22:51 MDT 2013 armv7l GNU/Linux<br>
Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&qu=
ot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NA=
TIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.3+snapshot-20130414&quot;<br>TUNE_FEATURES=A0=A0=
=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0<br=
>meta-yocto=A0=A0=A0=A0=A0=A0 =A0<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;master:068085f79010e3db70085d4b789f84ae72=
1e4901&quot;<br>gsl-1.15beaglebone041113.tgz<br>make install<br>/usr/local/=
bin# ls<br>gsl-config=A0 gsl-histogram=A0 gsl-randist<br>/usr/local/lib# ls=
<br>libgsl.a=A0=A0 libgsl.so.0=A0=A0=A0=A0=A0=A0 <a href=3D"http://libgslcb=
las.la">libgslcblas.la</a>=A0=A0=A0 libgslcblas.so.0.0.0<br>
<a href=3D"http://libgsl.la">libgsl.la</a>=A0 libgsl.so.0.16.0=A0 libgslcbl=
as.so=A0=A0=A0 pkgconfig<br>libgsl.so=A0 libgslcblas.a=A0=A0=A0=A0 libgslcb=
las.so.0<br><br>qemuarm<br><br>commit 068085f79010e3db70085d4b789f84ae721e4=
901<br>Author: Scott Rifenbark &lt;<a href=3D"mailto:scott.m.rifenbark@inte=
l.com">scott.m.rifenbark@intel.com</a>&gt;<br>
Date:=A0=A0 Fri Apr 12 13:27:42 2013 -0700<br><br>=A0=A0=A0 ref-manual: Rev=
iew comments applied for patch session<br>=A0=A0=A0 <br>=A0=A0=A0 Paul Eggl=
eton provided quite a series of patches that I previously<br>=A0=A0=A0 appl=
ied.=A0 These changes represent the edits from an interactive<br>
=A0=A0=A0 review he conducted with me.=A0 The series of changes represents<=
br>=A0=A0=A0 his review for the entire set of changes in the original patch=
<br>=A0=A0=A0 series.<br>=A0=A0=A0 <br>=A0=A0=A0 (From yocto-docs rev: e26f=
615a01de2b101e97eb6fd7175b813f74295e)<br>
=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Scott Rifenbark &lt;<a href=3D"mailt=
o:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>=A0=
=A0=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@l=
inuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
<br><br>MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex<br>boost qt-mo=
bility-x11<br>qemuarm_pkglist041513 1747=A0 RPMs<br>Filesystem=A0=A0=A0=A0 =
1K-blocks=A0=A0=A0 Used Available Use% Mounted on<br>/dev/root=A0=A0=A0=A0=
=A0=A0=A0 1550287 1082681=A0=A0=A0 388760=A0 74% /<br>
devtmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 60184=A0=A0=A0=A0=A0=A0 4=A0=A0=A0=
=A0 60180=A0=A0 1% /dev<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 40=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0=A0=A0=A0 40=A0=A0 0% /mnt/.psplas=
h<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 60308=A0=A0=A0=A0 208=A0=
=A0=A0=A0 60100=A0=A0 1% /var/volatile<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 60308=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0 60308=A0=A0 0% /media/ra=
m<br>
Linux qemuarm 3.8.4-yocto-standard #1 PREEMPT Mon Apr 15 11:32:36 MDT 2013 =
armv5tejl GNU/Linux<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x=
86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;qemuarm&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=
=A0 =3D &quot;1.3+snapshot-20130415&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D =
&quot;armv5 thumb dsp&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;soft&quot;<br>meta=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=
-bsp=A0=A0=A0 =3D &quot;master:068085f79010e3db70085d4b789f84ae721e4901&quo=
t;<br>gsl-1.15beaglebone041113.tgz<br>make install<br>/usr/local/bin# ls<br=
>
gsl-config=A0 gsl-histogram=A0 gsl-randist<br>/usr/local/lib# ls<br>libgsl.=
a=A0=A0 libgsl.so.0=A0=A0=A0=A0=A0=A0 <a href=3D"http://libgslcblas.la">lib=
gslcblas.la</a>=A0=A0=A0 libgslcblas.so.0.0.0<br><a href=3D"http://libgsl.l=
a">libgsl.la</a>=A0 libgsl.so.0.16.0=A0 libgslcblas.so=A0=A0=A0 pkgconfig<b=
r>
libgsl.so=A0 libgslcblas.a=A0=A0=A0=A0 libgslcblas.so.0<br><br></div>beagle=
bone<br><br>commit 068085f79010e3db70085d4b789f84ae721e4901<br>Author: Scot=
t Rifenbark &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rife=
nbark@intel.com</a>&gt;<br>
Date:=A0=A0 Fri Apr 12 13:27:42 2013 -0700<br><br>=A0=A0=A0 ref-manual: Rev=
iew comments applied for patch session<br>=A0=A0=A0 <br>=A0=A0=A0 Paul Eggl=
eton provided quite a series of patches that I previously<br>=A0=A0=A0 appl=
ied.=A0 These changes represent the edits from an interactive<br>
=A0=A0=A0 review he conducted with me.=A0 The series of changes represents<=
br>=A0=A0=A0 his review for the entire set of changes in the original patch=
<br>=A0=A0=A0 series.<br>=A0=A0=A0 <br>=A0=A0=A0 (From yocto-docs rev: e26f=
615a01de2b101e97eb6fd7175b813f74295e)<br>
=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Scott Rifenbark &lt;<a href=3D"mailt=
o:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>=A0=
=A0=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@l=
inuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
<br>commit d61bfa88ed3df9190ac9fd5643c27f77b34c5f01<br>Author: Denys Dmytri=
yenko &lt;<a href=3D"mailto:denys@ti.com">denys@ti.com</a>&gt;<br>Date:=A0=
=A0 Mon Feb 25 22:48:33 2013 -0500<br><br>=A0=A0=A0 linux-omapl138: fix ali=
gnment issue of 2.6.37 kernel with gcc-4.7<br>
=A0=A0=A0 Patch by Steve Sakoman<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: =
Denys Dmytriyenko &lt;<a href=3D"mailto:denys@ti.com">denys@ti.com</a>&gt;<=
br><br>MACHINE=3Dbeaglebone bitbake core-image-sato-sdk-ex<br>boost qt-mobi=
lity-x11<br>beaglebone_pkglist041513 1742 RPMs<br>
/dev/root=A0=A0=A0=A0=A0=A0=A0 3391776 1237764=A0=A0 1981716=A0 39% /<br>de=
vtmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0 127164=A0=A0=A0=A0=A0=A0 4=A0=A0=A0 12716=
0=A0=A0 1% /dev<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 40=
=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0=A0=A0=A0 40=A0=A0 0% /mnt/.psplash<br>tmpf=
s=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 127276=A0=A0=A0=A0 132=A0=A0=A0 12714=
4=A0=A0 1% /var/volatile<br>
tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 127276=A0=A0=A0=A0=A0=A0 0=A0=A0=
=A0 127276=A0=A0 0% /media/ram<br>Linux beaglebone 3.2.28 #1 Sun Apr 14 20:=
52:55 MDT 2013 armv7l GNU/Linux<br>Build Configuration:<br>BB_VERSION=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0=
 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;beaglebone&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.3+=
snapshot-20130415&quot;<br>
TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:068085f79010e3db70085=
d4b789f84ae721e4901&quot;<br>
meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):d61bfa88ed3df919=
0ac9fd5643c27f77b34c5f01&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;master:=
068085f79010e3db70085d4b789f84ae721e4901&quot;<br>gsl-1.15beaglebone041113.=
tgz<br>make install<br>/usr/local/bin# ls<br>
gsl-config=A0 gsl-histogram=A0 gsl-randist<br>/usr/local/lib# ls<br>libgsl.=
a=A0=A0 libgsl.so.0=A0=A0=A0=A0=A0=A0 <a href=3D"http://libgslcblas.la">lib=
gslcblas.la</a>=A0=A0=A0 libgslcblas.so.0.0.0<br><a href=3D"http://libgsl.l=
a">libgsl.la</a>=A0 libgsl.so.0.16.0=A0 libgslcblas.so=A0=A0=A0 pkgconfig<b=
r>
libgsl.so=A0 libgslcblas.a=A0=A0=A0=A0 libgslcblas.so.0<br><br></div>pandab=
oard<br><br>commit 068085f79010e3db70085d4b789f84ae721e4901<br>Author: Scot=
t Rifenbark &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rife=
nbark@intel.com</a>&gt;<br>
Date:=A0=A0 Fri Apr 12 13:27:42 2013 -0700<br><br>=A0=A0=A0 ref-manual: Rev=
iew comments applied for patch session<br>=A0=A0=A0 <br>=A0=A0=A0 Paul Eggl=
eton provided quite a series of patches that I previously<br>=A0=A0=A0 appl=
ied.=A0 These changes represent the edits from an interactive<br>
=A0=A0=A0 review he conducted with me.=A0 The series of changes represents<=
br>=A0=A0=A0 his review for the entire set of changes in the original patch=
<br>=A0=A0=A0 series.<br>=A0=A0=A0 <br>=A0=A0=A0 (From yocto-docs rev: e26f=
615a01de2b101e97eb6fd7175b813f74295e)<br>
=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Scott Rifenbark &lt;<a href=3D"mailt=
o:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>=A0=
=A0=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@l=
inuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
<br>commit d61bfa88ed3df9190ac9fd5643c27f77b34c5f01<br>Author: Denys Dmytri=
yenko &lt;<a href=3D"mailto:denys@ti.com">denys@ti.com</a>&gt;<br>Date:=A0=
=A0 Mon Feb 25 22:48:33 2013 -0500<br><br>=A0=A0=A0 linux-omapl138: fix ali=
gnment issue of 2.6.37 kernel with gcc-4.7<br>
=A0=A0=A0 Patch by Steve Sakoman<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: =
Denys Dmytriyenko &lt;<a href=3D"mailto:denys@ti.com">denys@ti.com</a>&gt;<=
br><br>MACHINE=3Dbeaglebone bitbake core-image-sato-sdk-ex<br>boost qt-mobi=
lity-x11<br>pandaboard_pkglist041513 3842=A0 RPMs<br>
Filesystem=A0=A0=A0=A0 1K-blocks=A0=A0=A0 Used Available Use% Mounted on<br=
>/dev/root=A0=A0=A0=A0=A0=A0=A0 3723848 1405656=A0=A0 2129028=A0 40% /<br>d=
evtmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0 425908=A0=A0=A0=A0=A0=A0 4=A0=A0=A0 4259=
04=A0=A0 1% /dev<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 4=
0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=A0=A0=A0=A0 40=A0=A0 0% /mnt/.psplash<br>
tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 512120=A0=A0=A0=A0 308=A0=A0=A0 5=
11812=A0=A0 1% /var/volatile<br>tmpfs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 5=
12120=A0=A0=A0=A0=A0=A0 0=A0=A0=A0 512120=A0=A0 0% /media/ram<br>/dev/mmcbl=
k0p1=A0=A0=A0=A0 72098=A0=A0=A0 4474=A0=A0=A0=A0 67624=A0=A0 7% /media/mmcb=
lk0p1<br>Linux pandaboard 3.4.11 #1 SMP PREEMPT Mon Apr 15 02:45:54 MDT 201=
3 armv7l GNU/Linux<br>
Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&qu=
ot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NA=
TIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;pandaboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.3+snapshot-20130415&quot;<br>TUNE_FEATURES=A0=A0=
=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br=
>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:068085f79010e3db70085d4b7=
89f84ae721e4901&quot;<br>
meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):d61bfa88ed3df919=
0ac9fd5643c27f77b34c5f01&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;master:=
068085f79010e3db70085d4b789f84ae721e4901&quot;<br>gsl-1.15beaglebone041113.=
tgz<br>make install<br>/usr/local/bin# ls<br>
gsl-config=A0 gsl-histogram=A0 gsl-randist<br>/usr/local/lib# ls<br>libgsl.=
a=A0=A0 libgsl.so.0=A0=A0=A0=A0=A0=A0 <a href=3D"http://libgslcblas.la">lib=
gslcblas.la</a>=A0=A0=A0 libgslcblas.so.0.0.0<br><a href=3D"http://libgsl.l=
a">libgsl.la</a>=A0 libgsl.so.0.16.0=A0 libgslcblas.so=A0=A0=A0 pkgconfig<b=
r>
libgsl.so=A0 libgslcblas.a=A0=A0=A0=A0 libgslcblas.so.0<br><br><div><br><br=
></div></div>

--089e01634030fbf7cb04da6f0eca--
