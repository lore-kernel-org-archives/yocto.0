Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D374EC433F5
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 20:34:36 +0000 (UTC)
Subject: wic create mkhybridiso core-image-minimal failure (honister)
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: Boston, Massachusetts, US (136.226.74.88)
X-Originating-Platform: Windows Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jan 2022 12:34:35 -0800
Message-ID: <onyN.1642106075826628914.TiRh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RBLcz0cdK4VrS646STpH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 20:34:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55843

--RBLcz0cdK4VrS646STpH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm new to Yocto so this may be simple operator input.
I built a qemux86-64 image with core-image-minimal using the honister branc=
h of a day or so ago. The build finishes fine, however trying to use:
*wic create mkhybridiso -e core-image-minimal,* gives the failure below. It=
 looks like a directory is not getting created properly.

(NOTE: wic create directdisk -e core-image-minimal does not give an error).

My local.conf has the following changes from the poky default that I found =
were recommended in a couple of places at the yocto website.

IMAGE_FSTYPES:append =3D " wic"
WKS_FILE:append =3D " mkhybridiso"

SSTATE_MIRRORS =3D "\
file://.* http://sstate.yoctoproject.org/dev/PATH;downloadfilename=3DPATH \=
n \
file://.* http://sstate.yoctoproject.org/3.3.4/PATH;downloadfilename=3DPATH=
 \n \
file://.* http://sstate.yoctoproject.org/3.4.1/PATH;downloadfilename=3DPATH=
 \n \
"

thinkmate:~/Yocto/TestPoky/poky/build$ wic create mkhybridiso -e core-image=
-minimal
INFO: Building wic-tools...

Loading cache: 100% |######################################################=
###########################################################################=
##| Time: 0:00:00
Loaded 1519 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.53.0"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-poky-linux"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "qemux86-64"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "3.4+snapshot-5867838ce7a4a630=
a3855c01668ec0806820eca2"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "m64 core2"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""
meta
meta-poky
meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:5867838ce7a4a630a3855c=
01668ec0806820eca2"

Initialising tasks: 100% |#################################################=
###########################################################################=
##| Time: 0:00:00
Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 207 (0% match, =
100% complete)
NOTE: Executing Tasks
NOTE: Tasks Summary: Attempted 932 tasks of which 932 didn't need to be rer=
un and all succeeded.
INFO: Creating image(s)...

ERROR: _exec_cmd: cd ./tmp.wic.f9x8qdi5/INITRD && find . | cpio -o -H newc =
-R root:root >./tmp.wic.f9x8qdi5/initrd.cpio=C2=A0 returned '2' instead of =
0
output: /bin/sh: 1: cannot create ./tmp.wic.f9x8qdi5/initrd.cpio: Directory=
 nonexistent

Thanks in advance for any suggestions,
Bruce

--RBLcz0cdK4VrS646STpH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm new to Yocto so this may be simple operator input.&nbsp; <br />I b=
uilt a qemux86-64 image with core-image-minimal using the honister branch o=
f a day or so ago. The build finishes fine, however trying to use:<br /><st=
rong>wic create mkhybridiso -e core-image-minimal,</strong> gives the failu=
re below. It looks like a directory is not getting created properly.<br /><=
br />(NOTE: wic create directdisk -e core-image-minimal does not give an er=
ror).<br /><br />My local.conf has the following changes from the poky defa=
ult that I found were recommended in a couple of places at the yocto websit=
e.<br /><br />
<div>IMAGE_FSTYPES:append =3D " wic"&nbsp;</div>
<div>WKS_FILE:append =3D " mkhybridiso"</div>
<div>&nbsp;</div>
<div>SSTATE_MIRRORS =3D "\</div>
<div>file://.* http://sstate.yoctoproject.org/dev/PATH;downloadfilename=3DP=
ATH \n \</div>
<div>file://.* http://sstate.yoctoproject.org/3.3.4/PATH;downloadfilename=
=3DPATH \n \</div>
<div>file://.* http://sstate.yoctoproject.org/3.4.1/PATH;downloadfilename=
=3DPATH \n \</div>
<div>"</div>
<div>&nbsp;</div>
<br /><span style=3D"color: #3366ff;">thinkmate:~/Yocto/TestPoky/poky/build=
$ wic create mkhybridiso -e core-image-minimal</span></div>
<div>INFO: Building wic-tools...</div>
<div>&nbsp;</div>
<div>Loading cache: 100% |#################################################=
###########################################################################=
#######| Time: 0:00:00</div>
<div>Loaded 1519 entries from dependency cache.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>&nbsp;</div>
<div>Build Configuration:</div>
<div>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.53.0"</div>
<div>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"<=
/div>
<div>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal"</div>
<div>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "x86_64-poky-li=
nux"</div>
<div>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "qemux86-6=
4"</div>
<div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky=
"</div>
<div>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "3.4+snapshot-5867838ce7a=
4a630a3855c01668ec0806820eca2"</div>
<div>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "m64 core2"</div>
<div>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D ""</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</di=
v>
<div>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;=3D "master:5867838ce7a4a630a=
3855c01668ec0806820eca2"</div>
<div>&nbsp;</div>
<div>Initialising tasks: 100% |############################################=
###########################################################################=
#######| Time: 0:00:00</div>
<div>Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 207 (0% ma=
tch, 100% complete)</div>
<div>NOTE: Executing Tasks</div>
<div>NOTE: Tasks Summary: Attempted 932 tasks of which 932 didn't need to b=
e rerun and all succeeded.</div>
<div>INFO: Creating image(s)...</div>
<div>&nbsp;</div>
<div><span style=3D"color: #ff0000;">ERROR: _exec_cmd: cd ./tmp.wic.f9x8qdi=
5/INITRD &amp;&amp; find . | cpio -o -H newc -R root:root &gt;./tmp.wic.f9x=
8qdi5/initrd.cpio&nbsp; returned '2' instead of 0</span></div>
<div><span style=3D"color: #ff0000;">output: /bin/sh: 1: cannot create ./tm=
p.wic.f9x8qdi5/initrd.cpio: Directory nonexistent<br /><br /><span style=3D=
"color: #000000;">Thanks in advance for any suggestions,</span><br /><span =
style=3D"color: #000000;">Bruce</span></span></div>
<div>&nbsp;</div>

--RBLcz0cdK4VrS646STpH--

