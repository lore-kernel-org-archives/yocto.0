Return-Path: <Carles.SoleMendi@de.bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C676C38142
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 20:43:17 +0000 (UTC)
Subject: Re: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Krefeld, North Rhine-Westphalia, DE (82.207.252.50)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 31 Jan 2023 12:43:11 -0800
References: <4851.1675148248347125864@lists.yoctoproject.org>
In-Reply-To: <4851.1675148248347125864@lists.yoctoproject.org>
Message-ID: <17935.1675197791519218036@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jhbCakAL6PkwsqsLT7QY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 20:43:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59124

--jhbCakAL6PkwsqsLT7QY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Lukasz, Aleksandr,

I have not managed to build it for Rpi4-64. I followed the same approach as=
 Aleksandr but it does not work for 64bit system.

Doing exactly the same changes as Aleksandr if I build for MACHINE =3D "ras=
pberrypi4-64" in local.conf, the .config file has following configs:
CONFIG_HAVE_PREEMPT_LAZY=3Dy
CONFIG_PREEMPT_NONE=3Dy
# CONFIG_PREEMPT_VOLUNTARY is not set
# CONFIG_PREEMPT is not set

If in the local.conf I replace the machine to MACHINE =3D "raspberrypi4" an=
d I bitbake again, the .config file looks as follow:
CONFIG_HAVE_PREEMPT_LAZY=3Dy
CONFIG_PREEMPT_LAZY=3Dy
# CONFIG_PREEMPT_NONE is not set
# CONFIG_PREEMPT_VOLUNTARY is not set
# CONFIG_PREEMPT is not set
CONFIG_PREEMPT_RT=3Dy
CONFIG_PREEMPT_COUNT=3Dy
CONFIG_PREEMPTION=3Dy

So for raspberrypi4 the RT kernel is built whereas for raspberrypi4-64 a no=
n preemptive kernel is built (without adding rt.cfg or the patch a PREEMPTI=
VE kernel will be built, i.e. CONFIG_PREEMPT=3Dy is set in the .config file=
).

Once I figure out why this happens I will post it here. Any further hints a=
re appreciated.

Best Regards,
Carles

--jhbCakAL6PkwsqsLT7QY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Lukasz, Aleksandr,<br /><br />I have not managed to build it for Rpi4=
-64. I followed the same approach as Aleksandr but it does not work for 64b=
it system. <br /><br />Doing exactly the same changes as Aleksandr if I bui=
ld for MACHINE =3D "raspberrypi4-64" in local.conf, the .config file has fo=
llowing configs:<br />CONFIG_HAVE_PREEMPT_LAZY=3Dy<br />CONFIG_PREEMPT_NONE=
=3Dy<br /># CONFIG_PREEMPT_VOLUNTARY is not set<br /># CONFIG_PREEMPT is no=
t set<br /><br />If in the local.conf I replace the machine to MACHINE =3D =
"raspberrypi4" and I bitbake again, the .config file looks as follow:<br />=
CONFIG_HAVE_PREEMPT_LAZY=3Dy<br />CONFIG_PREEMPT_LAZY=3Dy<br /># CONFIG_PRE=
EMPT_NONE is not set<br /># CONFIG_PREEMPT_VOLUNTARY is not set<br /># CONF=
IG_PREEMPT is not set<br />CONFIG_PREEMPT_RT=3Dy<br />CONFIG_PREEMPT_COUNT=
=3Dy<br />CONFIG_PREEMPTION=3Dy<br /><br />So for raspberrypi4 the RT kerne=
l is built whereas for raspberrypi4-64 a non preemptive kernel is built (wi=
thout adding rt.cfg or the patch a PREEMPTIVE kernel will be built, i.e. CO=
NFIG_PREEMPT=3Dy is set in the .config file).<br /><br />Once I figure out =
why this happens I will post it here. Any further hints are appreciated.<br=
 /><br />Best Regards,<br />Carles

--jhbCakAL6PkwsqsLT7QY--

