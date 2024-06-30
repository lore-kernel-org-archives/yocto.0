Return-Path: <alaraij.shaikah@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73AD8C27C4F
	for <webhook@archiver.kernel.org>; Sun, 30 Jun 2024 11:13:46 +0000 (UTC)
Subject: building core-image-minimal  #bitbake #ubuntu #yocto
To: yocto@lists.yoctoproject.org
From: alaraij.shaikah@gmail.com
X-Originating-Location: Riyadh, Riyadh Region, SA (176.17.144.150)
X-Originating-Platform: Linux Firefox 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 30 Jun 2024 04:13:39 -0700
Message-ID: <In8V.1719746019043142871.sRgB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JuHA99BIEQ3PI7s8Au1h"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jun 2024 11:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63415

--JuHA99BIEQ3PI7s8Au1h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to=C2=A0 build a yocto image (core-image-minimal) using ubuntu 2=
2.04 (on VM VirtualBox)
but when I run the command (bitbake core-image-minimal) I keep getting this=
 error:

ERROR: gcc-9.5.0-r0 do_compile: oe_runmake failed
ERROR: gcc-9.5.0-r0 do_compile: Execution of '/home/shaikah/Projects/yocto/=
build-mp1/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gcc/9.5.0-r0/=
temp/run.do_compile.58198' failed with exit code 1
ERROR: Logfile of failure stored in: /home/shaikah/Projects/yocto/build-mp1=
/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gcc/9.5.0-r0/temp/log.=
do_compile.58198
Log data follows:
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'co=
mmon-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_compile
| NOTE: make -j 2 configure-gcc
| make: *** No rule to make target 'configure-gcc'. =C2=A0Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/shaikah/Projects/yocto/build-mp1/tmp/work/cort=
exa7t2hf-neon-vfpv4-poky-linux-gnueabi/gcc/9.5.0-r0/temp/run.do_compile.581=
98' failed with exit code 1
ERROR: Task (/home/shaikah/Projects/yocto/poky/meta/recipes-devtools/gcc/gc=
c_9.5.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 627 tasks of which 620 didn't need to be rer=
un and 1 failed.

Summary: 1 task failed:
/home/shaikah/Projects/yocto/poky/meta/recipes-devtools/gcc/gcc_9.5.bb:do_c=
ompile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I tried cleaning then rebuilding but it didn't work.

--JuHA99BIEQ3PI7s8Au1h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to&nbsp; build a yocto image (core-image-minimal) using ubuntu 2=
2.04 (on VM VirtualBox)<br />but when I run the command (bitbake core-image=
-minimal) I keep getting this error: <br /><br /><br />ERROR: gcc-9.5.0-r0 =
do_compile: oe_runmake failed<br />ERROR: gcc-9.5.0-r0 do_compile: Executio=
n of '/home/shaikah/Projects/yocto/build-mp1/tmp/work/cortexa7t2hf-neon-vfp=
v4-poky-linux-gnueabi/gcc/9.5.0-r0/temp/run.do_compile.58198' failed with e=
xit code 1<br />ERROR: Logfile of failure stored in: /home/shaikah/Projects=
/yocto/build-mp1/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gcc/9.=
5.0-r0/temp/log.do_compile.58198<br />Log data follows:<br />| DEBUG: Execu=
ting python function autotools_aclocals<br />| DEBUG: SITE files ['endian-l=
ittle', 'bit-32', 'arm-common', 'arm-32', 'common-linux', 'common-glibc', '=
arm-linux', 'arm-linux-gnueabi', 'common']<br />| DEBUG: Python function au=
totools_aclocals finished<br />| DEBUG: Executing shell function do_compile=
<br />| NOTE: make -j 2 configure-gcc<br />| make: *** No rule to make targ=
et 'configure-gcc'. &nbsp;Stop.<br />| ERROR: oe_runmake failed<br />| WARN=
ING: exit code 1 from a shell command.<br />| ERROR: Execution of '/home/sh=
aikah/Projects/yocto/build-mp1/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-=
gnueabi/gcc/9.5.0-r0/temp/run.do_compile.58198' failed with exit code 1<br =
/>ERROR: Task (/home/shaikah/Projects/yocto/poky/meta/recipes-devtools/gcc/=
gcc_9.5.bb:do_compile) failed with exit code '1'<br />NOTE: Tasks Summary: =
Attempted 627 tasks of which 620 didn't need to be rerun and 1 failed.<br /=
><br />Summary: 1 task failed:<br />&nbsp; /home/shaikah/Projects/yocto/pok=
y/meta/recipes-devtools/gcc/gcc_9.5.bb:do_compile<br />Summary: There were =
2 ERROR messages shown, returning a non-zero exit code.<br /><br />I tried =
cleaning then rebuilding but it didn't work.

--JuHA99BIEQ3PI7s8Au1h--

