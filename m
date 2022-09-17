Return-Path: <kuzemkoyocto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BBCECAAA1
	for <webhook@archiver.kernel.org>; Sat, 17 Sep 2022 17:19:45 +0000 (UTC)
Subject: Problem with  make: *** No targets specified and no makefile found.
To: yocto@lists.yoctoproject.org
From: "Kuzemko Aleksandr" <kuzemkoyocto@gmail.com>
X-Originating-Location: Vinnytsia, Vinnytsya Oblast, UA (178.74.234.29)
X-Originating-Platform: Linux Firefox 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 17 Sep 2022 10:19:39 -0700
Message-ID: <zsN3.1663435179617532390.ryWW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4jiDKFPtnh302mMLWDwT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Sep 2022 17:19:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58064

--4jiDKFPtnh302mMLWDwT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying adapt fbi recipe. (https://github.com/Kuzma30/meta-myconf/blob/=
main/recipes-core/fbi/fbi_1.31.bb)
When I run bitbake fbi I get

NOTE: Executing Tasks
ERROR: fbi-1.31-r0 do_compile: oe_runmake failed
ERROR: fbi-1.31-r0 do_compile: ExecutionError('/home/qtembed/b2qt/build-ras=
pberrypi4-64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/temp/run.do_compile.=
4355', 1, None, None)
ERROR: Logfile of failure stored in: /home/qtembed/b2qt/build-raspberrypi4-=
64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/temp/log.do_compile.4355
Log data follows:
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64', 'co=
mmon-linux', 'common-glibc', 'aarch64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_compile
| NOTE: make
| make: *** No targets specified and no makefile found.=C2=A0 Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/qtembed/b2qt/sources/meta-myconfig/recipes-core/fbi/fbi_=
1.31.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 769 tasks of which 768 didn't need to be rer=
un and 1 failed.

I see empty home/qtembed/b2qt/build-raspberrypi4-64/tmp/work/cortexa72-poky=
-linux/fbi/1.31-r0/build directory. In home/qtembed/b2qt/build-raspberrypi4=
-64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/fbi-1.31 I see extracted sour=
ce code.
As I understand this error make is running in empty build dir, not in sourc=
e.
How to fix this?

--4jiDKFPtnh302mMLWDwT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying adapt fbi recipe. (https://github.com/Kuzma30/meta-myconf/blob/=
main/recipes-core/fbi/fbi_1.31.bb)<br />When I run bitbake fbi I get<br /><=
br />NOTE: Executing Tasks<br />ERROR: fbi-1.31-r0 do_compile: oe_runmake f=
ailed<br />ERROR: fbi-1.31-r0 do_compile: ExecutionError('/home/qtembed/b2q=
t/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/temp/run.=
do_compile.4355', 1, None, None)<br />ERROR: Logfile of failure stored in: =
/home/qtembed/b2qt/build-raspberrypi4-64/tmp/work/cortexa72-poky-linux/fbi/=
1.31-r0/temp/log.do_compile.4355<br />Log data follows:<br />| DEBUG: Execu=
ting python function autotools_aclocals<br />| DEBUG: SITE files ['endian-l=
ittle', 'bit-64', 'arm-common', 'arm-64', 'common-linux', 'common-glibc', '=
aarch64-linux', 'common']<br />| DEBUG: Python function autotools_aclocals =
finished<br />| DEBUG: Executing shell function do_compile<br />| NOTE: mak=
e<br />| make: *** No targets specified and no makefile found.&nbsp; Stop.<=
br />| ERROR: oe_runmake failed<br />| WARNING: exit code 1 from a shell co=
mmand.<br />ERROR: Task (/home/qtembed/b2qt/sources/meta-myconfig/recipes-c=
ore/fbi/fbi_1.31.bb:do_compile) failed with exit code '1'<br />NOTE: Tasks =
Summary: Attempted 769 tasks of which 768 didn't need to be rerun and 1 fai=
led.<br /><br />I see empty home/qtembed/b2qt/build-raspberrypi4-64/tmp/wor=
k/cortexa72-poky-linux/fbi/1.31-r0/build directory. In home/qtembed/b2qt/bu=
ild-raspberrypi4-64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/fbi-1.31 I se=
e extracted source code.<br />As I understand this error make is running in=
 empty build dir, not in source. <br />How to fix this?

--4jiDKFPtnh302mMLWDwT--

