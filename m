Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 24824E0072C
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 08:12:36 -0800 (PST)
Received: by mail-ee0-f53.google.com with SMTP id e53so2445966eek.26
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 08:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=vOYBrnN4JKX+wpoNfVekMOS12fwQuVIV1+tF2hgrXcg=;
	b=YPDXJ5oVZhx0UEJrEInncXwzp2uMRPJPGDEJj9lgLQfWRWrsbvg9RT5GgGSg30q63D
	ZzXzP6cfBTT3aZBkYlqvf02zHJ0Dbu3yzGh7nfh7lJHk2QBEkJSAdJxqTofVT2YQzeTr
	apW6w+Acb5qyB1KFffIqNxZYSSiGaqWsijTsoRZ2tbeIM5GgjzwSNPigIm1ebylA/VEk
	PmCAliClu+6vywIVUTlTAdnMaDp2IZIRPvgKFaqELcKQnMPul8XAGbslnkamLNWpfA23
	dqxSwvC6y7ca9ityegDuJuVIBAez7nQLevqKVzAUkk6oBVxC3GZERmmAu1cjSacH2uJn
	9Qeg==
MIME-Version: 1.0
X-Received: by 10.15.100.202 with SMTP id bn50mr29150876eeb.36.1362154355204; 
	Fri, 01 Mar 2013 08:12:35 -0800 (PST)
Received: by 10.223.89.133 with HTTP; Fri, 1 Mar 2013 08:12:35 -0800 (PST)
Date: Fri, 1 Mar 2013 09:12:35 -0700
Message-ID: <CANwz6nzk6ZvQ-XRQLw5A2yFCx4-Y7UtgORcjeD3FHVe0jd48FA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: yocto beaglebone build no uImage on DOS partition.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Mar 2013 16:12:37 -0000
Content-Type: multipart/alternative; boundary=089e0163521278d14d04d6df46c0

--089e0163521278d14d04d6df46c0
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Any and all help will be appreciated.

yocto beaglebone build no uImage to DOS partition.
My questions are do you need the a uImage on DOS partition and should you
use core-image-sato-sdk with the beaglebone since it has no display on
board, but you want the SDK?  My beaglebone booted okay but I did see that
the xserver failed.  My pandaboard build is failing currently but I have
had successful builds in the past in early Jan with same process outlined
below.

Downloaded both poky and meta-ti

cd /home/vidal/POKY/build022813_panda
git clone  git://git.yoctoproject.org/poky.git
cd /home/vidal/POKY/build022813_panda/poky
git log
commit d7b248e715d99766bf8602ff9f038f8b0afa5e78
Author: Constantin Musca <constantinx.musca@intel.com>
Date:   Mon Feb 25 17:29:15 2013 +0200

cd /home/vidal/POKY/build022813_panda/poky
git clone git://git.yoctoproject.org/meta-ti
git log
commit 4d99e63181c6f58b5bb41eb830c7af75b097e10e
Author: Franklin S. Cooper Jr <fcooper@ti.com>
Date:   Mon Feb 18 22:45:16 2013 -0600

Modifications to file
/home/vidal/POKY/build022813/poky/build/conf/local.conf
Added the following three lines at the beginning of the file.
MACHINE ?= "beaglebone"
MACHINE ?= "pandaboard"
BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/"
Mofified the following 3 lines as shown below.
#BB_NUMBER_THREADS = "4" --> BB_NUMBER_THREADS = "8"
#PARALLEL_MAKE = "-j 4" --> PARALLEL_MAKE = "-j 8"
#DL_DIR ?= "${TOPDIR}/downloads" --> DL_DIR ?=
"/home/vidal/POKY/linux_src_dnloads_panda/downloads"

Modification done to
/home/vidal/POKY/build022813/poky/build/conf/bblayers.conf
Added the line
  /home/vidal/POKY/build022813_panda/poky/meta-ti \
After the line
  /home/vidal/POKY/build022813_panda/poky/meta-yocto \

Built on Fedora 18 x86_64 system.

MACHINE=beaglebone bitbake core-image-sato-sdk -vDD
NOTE: recipe core-image-sato-sdk-1.0-r0: task do_rootfs: Succeeded
DEBUG: Marking task 12
(/home/vidal/POKY/build022813_panda/poky/meta/recipes-sato/images/
core-image-sato-sdk.bb, do_build) as buildable
DEBUG: Stampfile
/home/vidal/POKY/build022813_panda/poky/build/tmp/stamps/beaglebone-poky-linux-gnueabi/core-image-sato-sdk/1.0-r0.do_build.43a176d7b0f28fabd0275a4afba65cd3
not available
NOTE: Running noexec task 6534 of 6534 (ID: 12,
/home/vidal/POKY/build022813_panda/poky/meta/recipes-sato/images/
core-image-sato-sdk.bb, do_build)
NOTE: Tasks Summary: Attempted 6534 tasks of which 543 didn't need to be
rerun and all succeeded.

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Unknown"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130228"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:d7b248e715d99766bf8602ff9f038f8b0afa5e78"
meta-ti           = "master:4d99e63181c6f58b5bb41eb830c7af75b097e10e"
meta-yocto-bsp    = "master:d7b248e715d99766bf8602ff9f038f8b0afa5e78"

Transferred the following files to boot partition from
/home/vidal/POKY/build022813_panda/poky/build/tmp/deploy/images/
MLO-beaglebone-2011.09+git* --> MLO
u-boot.img -> u-boot-beaglebone-2011.09+git-r30.img* --> u-boot.img
Untarred the file
/home/vidal/POKY/build022813_panda/poky/build/tmp/deploy/images/core-image-sato-sdk-beaglebone-20130228230414.rootfs.tar.bz2
to /run/media/vidal/Angstrom

If anyone wants any additional information feel free to ask at
vidal.develone@gmail.com or develone@sbcglobal.net.

--089e0163521278d14d04d6df46c0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>Any and all help will be appreciated.<br><br>yocto beaglebone bui=
ld no uImage to DOS partition.<br>My questions are do you need the a uImage=
 on DOS partition and should you use core-image-sato-sdk with the beaglebon=
e since it has no display on board, but you want the SDK?=A0 My beaglebone =
booted okay but I did see that the xserver failed.=A0 My pandaboard build i=
s failing currently but I have had successful builds in the past in early J=
an with same process outlined below.=A0 <br>
<br>Downloaded both poky and meta-ti<br><br>cd /home/vidal/POKY/build022813=
_panda<br>git clone=A0 git://<a href=3D"http://git.yoctoproject.org/poky.gi=
t">git.yoctoproject.org/poky.git</a><br>cd /home/vidal/POKY/build022813_pan=
da/poky<br>
git log<br>commit d7b248e715d99766bf8602ff9f038f8b0afa5e78<br>Author: Const=
antin Musca &lt;<a href=3D"mailto:constantinx.musca@intel.com">constantinx.=
musca@intel.com</a>&gt;<br>Date:=A0=A0 Mon Feb 25 17:29:15 2013 +0200<br><b=
r>
cd /home/vidal/POKY/build022813_panda/poky<br>git clone git://<a href=3D"ht=
tp://git.yoctoproject.org/meta-ti">git.yoctoproject.org/meta-ti</a><br>git =
log<br>commit 4d99e63181c6f58b5bb41eb830c7af75b097e10e<br>Author: Franklin =
S. Cooper Jr &lt;<a href=3D"mailto:fcooper@ti.com">fcooper@ti.com</a>&gt;<b=
r>
Date:=A0=A0 Mon Feb 18 22:45:16 2013 -0600<br><br>Modifications to file=A0 =
/home/vidal/POKY/build022813/poky/build/conf/local.conf<br>Added the follow=
ing three lines at the beginning of the file. <br>MACHINE ?=3D &quot;beagle=
bone&quot;<br>
MACHINE ?=3D &quot;pandaboard&quot;<br>BBMASK ?=3D &quot;.*/meta-ti/recipes=
-(misc|bsp/formfactor|graphics/mesa)/&quot;<br>Mofified the following 3 lin=
es as shown below.<br>#BB_NUMBER_THREADS =3D &quot;4&quot; --&gt; BB_NUMBER=
_THREADS =3D &quot;8&quot;<br>
#PARALLEL_MAKE =3D &quot;-j 4&quot; --&gt; PARALLEL_MAKE =3D &quot;-j 8&quo=
t;<br>#DL_DIR ?=3D &quot;${TOPDIR}/downloads&quot; --&gt; DL_DIR ?=3D &quot=
;/home/vidal/POKY/linux_src_dnloads_panda/downloads&quot;<br><br>Modificati=
on done to /home/vidal/POKY/build022813/poky/build/conf/bblayers.conf<br>
Added the line<br>=A0 /home/vidal/POKY/build022813_panda/poky/meta-ti \<br>=
After the line<br>=A0 /home/vidal/POKY/build022813_panda/poky/meta-yocto \<=
br><br>Built on Fedora 18 x86_64 system.<br><br>MACHINE=3Dbeaglebone bitbak=
e core-image-sato-sdk -vDD<br>
NOTE: recipe core-image-sato-sdk-1.0-r0: task do_rootfs: Succeeded<br>DEBUG=
: Marking task 12 (/home/vidal/POKY/build022813_panda/poky/meta/recipes-sat=
o/images/<a href=3D"http://core-image-sato-sdk.bb">core-image-sato-sdk.bb</=
a>, do_build) as buildable<br>
DEBUG: Stampfile /home/vidal/POKY/build022813_panda/poky/build/tmp/stamps/b=
eaglebone-poky-linux-gnueabi/core-image-sato-sdk/1.0-r0.do_build.43a176d7b0=
f28fabd0275a4afba65cd3 not available<br>NOTE: Running noexec task 6534 of 6=
534 (ID: 12, /home/vidal/POKY/build022813_panda/poky/meta/recipes-sato/imag=
es/<a href=3D"http://core-image-sato-sdk.bb">core-image-sato-sdk.bb</a>, do=
_build)<br>
NOTE: Tasks Summary: Attempted 6534 tasks of which 543 didn&#39;t need to b=
e rerun and all succeeded.<br><br>Build Configuration:<br>BB_VERSION=A0=A0=
=A0=A0=A0=A0=A0 =3D &quot;1.17.1&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0=
 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=A0=A0 =3D &quot;Unknown&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;beaglebone&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =3D &quot;1.3+sna=
pshot-20130228&quot;<br>
TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:d7b248=
e715d99766bf8602ff9f038f8b0afa5e78&quot;<br>meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;master:4d99e63181c6f58b5bb41eb830c7af75b097e10e&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;master:d7b248e715d99766bf8602ff9f038f8b0a=
fa5e78&quot;<br><br>Transferred the following files to boot partition from =
<br>/home/vidal/POKY/build022813_panda/poky/build/tmp/deploy/images/<br>MLO=
-beaglebone-2011.09+git* --&gt; MLO<br>
u-boot.img -&gt; u-boot-beaglebone-2011.09+git-r30.img* --&gt; u-boot.img<b=
r>Untarred the file /home/vidal/POKY/build022813_panda/poky/build/tmp/deplo=
y/images/core-image-sato-sdk-beaglebone-20130228230414.rootfs.tar.bz2 to /r=
un/media/vidal/Angstrom<br>
<br>If anyone wants any additional information feel free to ask at <a href=
=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a> or <a hre=
f=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a>.<br>

--089e0163521278d14d04d6df46c0--
