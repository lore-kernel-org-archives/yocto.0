Return-Path: <posinaaravind0205@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB59D66BAF
	for <webhook@archiver.kernel.org>; Fri, 29 Nov 2024 06:33:12 +0000 (UTC)
Subject: backporting
To: yocto@lists.yoctoproject.org
From: "aravind posina" <posinaaravind0205@gmail.com>
X-Originating-Location: Chennai, Tamil Nadu, IN (183.83.51.84)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 28 Nov 2024 22:33:07 -0800
Message-ID: <N3gs.1732861987332771785.kVKf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uxmCM4GA9iaAeqXd61YC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 06:33:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64377

--uxmCM4GA9iaAeqXd61YC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
ERROR: backports-cypress-5.15.58-r0 do_compile: ExecutionError('/home/phyte=
c/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-g=
nueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720', 1, None, =
None)
ERROR: Logfile of failure stored in: /home/phytec/sanava-kernel/yocto/build=
/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.=
15.58-r0/temp/log.do_compile.2980720
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 KERNEL_SRC=3D/home/phytec/sanava-kernel/yocto/build/tmp/w=
ork-shared/phyboard-segin-imx6ul-7/kernel-source KLIB=3D/home/phytec/sanava=
-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source K=
LIB_BUILD=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard=
-segin-imx6ul-7/kernel-build-artifacts modules
| make[4]: 'conf' is up to date.
| #
| # configuration written to .config
| #
| Building backport-include/backport/autoconf.h ... done.
| make[3]: *** No rule to make target 'modules'. =C2=A0Stop.
| make[2]: *** [Makefile.build:13: modules] Error 2
| make[1]: *** [Makefile.real:88: modules] Error 2
| make: *** [Makefile:43: modules] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/ph=
yboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/tem=
p/run.do_compile.2980720', 1, None, None)
ERROR: Task (/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/=
recipes-kernel/backports/backports-cypress_5.15.58.bb:do_compile) failed wi=
th exit code '1'
NOTE: Tasks Summary: Attempted 670 tasks of which 652 didn't need to be rer=
un and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 2 seconds
Summary: 1 task failed:
/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kerne=
l/backports/backports-cypress_5.15.58.bb:do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--uxmCM4GA9iaAeqXd61YC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed<br /=
>ERROR: backports-cypress-5.15.58-r0 do_compile: ExecutionError('/home/phyt=
ec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-=
gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720', 1, None,=
 None)<br />ERROR: Logfile of failure stored in: /home/phytec/sanava-kernel=
/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backport=
s-cypress/5.15.58-r0/temp/log.do_compile.2980720<br />Log data follows:<br =
/>| DEBUG: Executing shell function do_compile<br />| NOTE: make -j 4 KERNE=
L_SRC=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-seg=
in-imx6ul-7/kernel-source KLIB=3D/home/phytec/sanava-kernel/yocto/build/tmp=
/work-shared/phyboard-segin-imx6ul-7/kernel-source KLIB_BUILD=3D/home/phyte=
c/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-=
build-artifacts modules<br />| make[4]: 'conf' is up to date.<br />| #<br /=
>| # configuration written to .config<br />| #<br />| Building backport-inc=
lude/backport/autoconf.h ... done.<br />| make[3]: *** No rule to make targ=
et 'modules'. &nbsp;Stop.<br />| make[2]: *** [Makefile.build:13: modules] =
Error 2<br />| make[1]: *** [Makefile.real:88: modules] Error 2<br />| make=
: *** [Makefile:43: modules] Error 2<br />| ERROR: oe_runmake failed<br />|=
 WARNING: exit code 1 from a shell command.<br />| ERROR: ExecutionError('/=
home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phyt=
ec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720',=
 1, None, None)<br />ERROR: Task (/home/phytec/sanava-kernel/yocto/sources/=
meta-sanava/meta-bsp/recipes-kernel/backports/backports-cypress_5.15.58.bb:=
do_compile) failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 6=
70 tasks of which 652 didn't need to be rerun and 1 failed.<br />NOTE: Writ=
ing buildhistory<br />NOTE: Writing buildhistory took: 2 seconds</div>
<div>Summary: 1 task failed:<br />&nbsp; /home/phytec/sanava-kernel/yocto/s=
ources/meta-sanava/meta-bsp/recipes-kernel/backports/backports-cypress_5.15=
.58.bb:do_compile<br />Summary: There was 1 WARNING message shown.<br />Sum=
mary: There were 2 ERROR messages shown, returning a non-zero exit code.</d=
iv>
</div>

--uxmCM4GA9iaAeqXd61YC--

