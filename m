Return-Path: <gangadhar.ubuntu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9778AC43334
	for <webhook@archiver.kernel.org>; Wed, 15 Jun 2022 17:02:37 +0000 (UTC)
Subject: recipe for Kconfig based package #bitbake #yocto
To: yocto@lists.yoctoproject.org
From: "Gangadhar N" <gangadhar.ubuntu@gmail.com>
X-Originating-Location: New Delhi, National Capital Territory of Delhi,
 IN (122.179.226.141)
X-Originating-Platform: Windows Chrome 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jun 2022 10:02:37 -0700
Message-ID: <D0Ph.1655312557078928687.X3gS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RusK9A7LFc37hsfHatdp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jun 2022 17:02:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57336

--RusK9A7LFc37hsfHatdp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,
I have written a package with Kconfig. Please help me how to specify - defc=
onfig and how to build. I have written bitbake recipe. bitbake fails with e=
rror,

ERROR: stone-1.0+gitAUTOINC+6855067526-r0 do_compile: oe_runmake failed
ERROR: stone-1.0+gitAUTOINC+6855067526-r0 do_compile: Execution of '/home/b=
uild/tmp/work/armv6-ilo7-linux-gnueabi/stone/1.0+gitAUTOINC+6855067526-r0/t=
emp/run.do_compile.5070' failed with exit code 1:
make: *** No targets specified and no makefile found.=C2=A0 Stop.
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/build/tmp/work/armv6-ilo7-linux-=
gnueabi/stone/1.0+gitAUTOINC+6855067526-r0/temp/log.do_compile.5070

---------------------------------------------------------------------------=
--------------------------------------------------------
+SUMMARY =3D "stone"
+DESCRIPTION =3D "Debug serial console"
+
+LICENSE =3D "CLOSED"
+
+SRC_URI =3D "git://git@github.com/stone.git;protocol=3Dssh;branch=3DSTNE-1=
188_pwr_version"
+SRCREV =3D "${AUTOREV}"
+PV =3D "1.0+git${SRCPV}"
+S =3D "${WORKDIR}/git"
+
+inherit autotools

--RusK9A7LFc37hsfHatdp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br />I have written a package with Kconfig. Please help me how to s=
pecify - defconfig and how to build. I have written bitbake recipe. bitbake=
 fails with error,<br /><br />
<div>
<div>ERROR: stone-1.0+gitAUTOINC+6855067526-r0 do_compile: oe_runmake faile=
d</div>
<div>ERROR: stone-1.0+gitAUTOINC+6855067526-r0 do_compile: Execution of '/h=
ome/build/tmp/work/armv6-ilo7-linux-gnueabi/stone/1.0+gitAUTOINC+6855067526=
-r0/temp/run.do_compile.5070' failed with exit code 1:</div>
<div>make: *** No targets specified and no makefile found.&nbsp; Stop.</div=
>
<div>WARNING: exit code 1 from a shell command.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/build/tmp/work/armv6-ilo7-l=
inux-gnueabi/stone/1.0+gitAUTOINC+6855067526-r0/temp/log.do_compile.5070</d=
iv>
</div>
<div><br />----------------------------------------------------------------=
-------------------------------------------------------------------<br />
<div>+SUMMARY =3D "stone"</div>
<div>+DESCRIPTION =3D "Debug serial console"</div>
<div>+</div>
<div>+LICENSE =3D "CLOSED"</div>
<div>+</div>
<div>+SRC_URI =3D "git://git@github.com/stone.git;protocol=3Dssh;branch=3DS=
TNE-1188_pwr_version"</div>
<div>+SRCREV =3D "${AUTOREV}"</div>
<div>+PV =3D "1.0+git${SRCPV}"</div>
<div>+S =3D "${WORKDIR}/git"</div>
<div>+</div>
<div>+inherit autotools</div>
<div>&nbsp;</div>
</div>

--RusK9A7LFc37hsfHatdp--

