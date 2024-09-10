Return-Path: <sushma.siri1705@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58B3EDE99A
	for <webhook@archiver.kernel.org>; Tue, 10 Sep 2024 15:07:55 +0000 (UTC)
Subject: Re: [yocto] Issues Integrating meta-marvell with Yocto Scarthgap Branch
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: sushma.siri1705@gmail.com
X-Originating-Location: US (136.226.245.4)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 10 Sep 2024 08:07:50 -0700
References: <CANNYZj_Ov-T8itR=ixckftPB5oE6EJmSfdLnF76a=R2FjV_AVw@mail.gmail.com>
In-Reply-To: <CANNYZj_Ov-T8itR=ixckftPB5oE6EJmSfdLnF76a=R2FjV_AVw@mail.gmail.com>
Message-ID: <30802.1725980870975766147@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XQy0FR3gJ1F5o2K9F1It"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 15:07:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63817

--XQy0FR3gJ1F5o2K9F1It
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thank you for your response.

I=E2=80=99m working with the Marvell Armada 7040 board and haven't reached =
out to Marvell for support yet.

While integrating the meta-marvell layer from the krogoth branch into the s=
carthgap Yocto workspace, I encountered several syntax errors, which I=E2=
=80=99ve since resolved.

However, I've now run into a new build error related to SPDX.

Below is the error snippet:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Build Output
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
sushma@sushma:~/poky/build$ bitbake core-image-full-cmdline
WARNING: Layer marvell-layer should set LAYERSERIES_COMPAT_marvell-layer in=
 its conf/layer.conf file to list the core layer names it is compatible wit=
h.
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| Time: 0:01:08
Loaded 5181 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
Build Configuration:
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "2.8.0"
BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "aarch64-poky-linux"
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "db-88f7040-pca=
c"
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "5.0.3"
TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "aarch64"
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""
meta
meta-poky
meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D "scarthgap:8637aa34f0009421eb6c51a9=
3588fe879950e1f4"
meta-oe
meta-python
meta-networking
meta-perl
meta-webserver
meta-gnome
meta-multimedia
meta-xfce
meta-initramfs
meta-filesystems =C2=A0 =C2=A0 =3D "scarthgap:1235dd4ed4a57e67683c045ad76b6=
a0f9e896b45"
meta-marvell =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "krogoth:49746295faf8de5c732c7=
2f38301742e4954e501"
Sstate summary: Wanted 1468 Local 777 Mirrors 0 Missed 691 Current 1130 (52=
% match, 73% complete)#####################################################=
###################### =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | ETA: =C2=A00:00:22
Removing 6 stale sstate objects for arch db_88f7040_pcac: 100% |###########=
###########################################################################=
#######################################| Time: 0:00:00
Removing 272 stale sstate objects for arch aarch64: 100% |#################=
###########################################################################=
#######################################| Time: 0:00:08
Removing 6 stale sstate objects for arch allarch: 100% |###################=
###########################################################################=
#######################################| Time: 0:00:00
NOTE: Executing Tasks
ERROR: run-postinsts-1.0-r0 do_create_spdx: Cannot find any SPDX file for r=
ecipe initscripts, False sstate:initscripts:cortexa57-poky-linux:1.0:r0:cor=
texa57:12: sstate:initscripts::1.0:r0::12:
ERROR: Logfile of failure stored in: /home/sushma/poky/build/tmp/work/all-p=
oky-linux/run-postinsts/1.0/temp/log.do_create_spdx.249820
ERROR: Task (/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-post=
insts_1.0.bb:do_create_spdx) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4059 tasks of which 4054 didn't need to be r=
erun and 1 failed.
Summary: 1 task failed:
/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts_1.0.bb:=
do_create_spdx
Summary: There was 1 WARNING message.
Summary: There was 1 ERROR message, returning a non-zero exit code.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Last few lines from file: /home/...../log.do_create_spdx.249820
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
/home/sushma/poky/meta/recipes-devtools/run-postinsts/files/aarch64
/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts-1.0/arm=
ada70xx
/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts/armada7=
0xx
/home/sushma/poky/meta/recipes-devtools/run-postinsts/files/armada70xx
/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts-1.0/all=
arch
/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts/allarch
/home/sushma/poky/meta/recipes-devtools/run-postinsts/files/allarch
/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts-1.0/
/home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts/
/home/sushma/poky/meta/recipes-devtools/run-postinsts/files/
DEBUG: Using /home/sushma/poky/meta/recipes-devtools/run-postinsts/run-post=
insts/run-postinsts.service for run-postinsts.service
DEBUG: Scanning 0 patches for CVEs
ERROR: Cannot find any SPDX file for recipe initscripts, False sstate:inits=
cripts:cortexa57-poky-linux:1.0:r0:cortexa57:12: sstate:initscripts::1.0:r0=
::12:
DEBUG: Python function do_create_spdx finished

--XQy0FR3gJ1F5o2K9F1It
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div class=3D"flex-shrink-0 flex flex-col relative items-end">
<div>
<div class=3D"pt-0">
<div class=3D"gizmo-bot-avatar flex h-8 w-8 items-center justify-center ove=
rflow-hidden rounded-full">
<div class=3D"relative p-1 rounded-sm flex items-center justify-center bg-t=
oken-main-surface-primary text-token-text-primary h-8 w-8">&nbsp;</div>
</div>
</div>
</div>
</div>
<div class=3D"group/conversation-turn relative flex w-full min-w-0 flex-col=
 agent-turn">
<div class=3D"flex-col gap-1 md:gap-3">
<div class=3D"flex max-w-full flex-col flex-grow">
<div class=3D"min-h-[20px] text-message flex w-full flex-col items-end gap-=
2 whitespace-normal break-words [.text-message+&amp;]:mt-5" dir=3D"auto" da=
ta-message-author-role=3D"assistant" data-message-id=3D"84a66832-9cea-4b8e-=
9bb8-afc7ef352bfa">
<div class=3D"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]">
<div class=3D"markdown prose w-full break-words dark:prose-invert light">
<p>Hi Alex,</p>
<p>Thank you for your response.</p>
<p>I&rsquo;m working with the Marvell Armada 7040 board and haven't reached=
 out to Marvell for support yet.</p>
<p>While integrating the meta-marvell layer from the krogoth branch into th=
e scarthgap Yocto workspace, I encountered several syntax errors, which I&r=
squo;ve since resolved.</p>
<p>However, I've now run into a new build error related to SPDX.</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div>Below is the error snippet:</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>Build Output</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>
<div>sushma@sushma:~/poky/build$ bitbake core-image-full-cmdline<br />WARNI=
NG: Layer marvell-layer should set LAYERSERIES_COMPAT_marvell-layer in its =
conf/layer.conf file to list the core layer names it is compatible with.<br=
 />Loading cache: 100% |###################################################=
###########################################################################=
##########################################| Time: 0:01:08<br />Loaded 5181 =
entries from dependency cache.<br />NOTE: Resolving any missing task queue =
dependencies</div>
<div>Build Configuration:<br />BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; =3D "2.8.0"<br />BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "=
x86_64-linux"<br />NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D "universal"<br /=
>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "aarch64-poky-linux"<br =
/>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "db-88f7040-p=
cac"<br />DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "poky=
"<br />DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D "5.0.3"<br />TUNE_FEATURES &=
nbsp; &nbsp; &nbsp; &nbsp;=3D "aarch64"<br />TARGET_FPU &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; =3D ""<br />meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;<br />meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;<br />meta-yocto-bsp &nbsp; &nbsp; &nbsp; =3D "scarthgap:8637aa34f0009421e=
b6c51a93588fe879950e1f4"<br />meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;<br />meta-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />meta-n=
etworking &nbsp; &nbsp; &nbsp;<br />meta-perl &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;<br />meta-webserver &nbsp; &nbsp; &nbsp;&nbsp;<br />meta-gnome=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />meta-multimedia &nbsp; &nbsp=
; &nbsp;<br />meta-xfce &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />meta=
-initramfs &nbsp; &nbsp; &nbsp;&nbsp;<br />meta-filesystems &nbsp; &nbsp; =
=3D "scarthgap:1235dd4ed4a57e67683c045ad76b6a0f9e896b45"<br />meta-marvell =
&nbsp; &nbsp; &nbsp; &nbsp; =3D "krogoth:49746295faf8de5c732c72f38301742e49=
54e501"</div>
<div>Sstate summary: Wanted 1468 Local 777 Mirrors 0 Missed 691 Current 113=
0 (52% match, 73% complete)################################################=
########################### &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; | ETA: &nbsp;0:00:22<br />Removing 6 stale sstate objects for arch=
 db_88f7040_pcac: 100% |###################################################=
##########################################################################|=
 Time: 0:00:00<br />Removing 272 stale sstate objects for arch aarch64: 100=
% |########################################################################=
###########################################################| Time: 0:00:08<=
br />Removing 6 stale sstate objects for arch allarch: 100% |##############=
###########################################################################=
############################################| Time: 0:00:00<br />NOTE: Exec=
uting Tasks<br />ERROR: run-postinsts-1.0-r0 do_create_spdx: Cannot find an=
y SPDX file for recipe initscripts, False sstate:initscripts:cortexa57-poky=
-linux:1.0:r0:cortexa57:12: sstate:initscripts::1.0:r0::12:<br />ERROR: Log=
file of failure stored in: /home/sushma/poky/build/tmp/work/all-poky-linux/=
run-postinsts/1.0/temp/log.do_create_spdx.249820<br />ERROR: Task (/home/su=
shma/poky/meta/recipes-devtools/run-postinsts/run-postinsts_1.0.bb:do_creat=
e_spdx) failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 4059 =
tasks of which 4054 didn't need to be rerun and 1 failed.</div>
<div>Summary: 1 task failed:<br />&nbsp; /home/sushma/poky/meta/recipes-dev=
tools/run-postinsts/run-postinsts_1.0.bb:do_create_spdx<br />Summary: There=
 was 1 WARNING message.<br />Summary: There was 1 ERROR message, returning =
a non-zero exit code.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</div>
<div>Last few lines from file: /home/...../log.do_create_spdx.249820</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</div>
<div>&nbsp; &nbsp; /home/sushma/poky/meta/recipes-devtools/run-postinsts/fi=
les/aarch64<br />&nbsp; &nbsp; /home/sushma/poky/meta/recipes-devtools/run-=
postinsts/run-postinsts-1.0/armada70xx<br />&nbsp; &nbsp; /home/sushma/poky=
/meta/recipes-devtools/run-postinsts/run-postinsts/armada70xx<br />&nbsp; &=
nbsp; /home/sushma/poky/meta/recipes-devtools/run-postinsts/files/armada70x=
x<br />&nbsp; &nbsp; /home/sushma/poky/meta/recipes-devtools/run-postinsts/=
run-postinsts-1.0/allarch<br />&nbsp; &nbsp; /home/sushma/poky/meta/recipes=
-devtools/run-postinsts/run-postinsts/allarch<br />&nbsp; &nbsp; /home/sush=
ma/poky/meta/recipes-devtools/run-postinsts/files/allarch<br />&nbsp; &nbsp=
; /home/sushma/poky/meta/recipes-devtools/run-postinsts/run-postinsts-1.0/<=
br />&nbsp; &nbsp; /home/sushma/poky/meta/recipes-devtools/run-postinsts/ru=
n-postinsts/<br />&nbsp; &nbsp; /home/sushma/poky/meta/recipes-devtools/run=
-postinsts/files/<br />DEBUG: Using /home/sushma/poky/meta/recipes-devtools=
/run-postinsts/run-postinsts/run-postinsts.service for run-postinsts.servic=
e<br />DEBUG: Scanning 0 patches for CVEs<br />ERROR: Cannot find any SPDX =
file for recipe initscripts, False sstate:initscripts:cortexa57-poky-linux:=
1.0:r0:cortexa57:12: sstate:initscripts::1.0:r0::12:<br />DEBUG: Python fun=
ction do_create_spdx finished</div>
</div>

--XQy0FR3gJ1F5o2K9F1It--

