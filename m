Return-Path: <Carles.SoleMendi@de.bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1214FC61DA4
	for <webhook@archiver.kernel.org>; Mon,  6 Feb 2023 07:38:13 +0000 (UTC)
Subject: Re: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (194.39.218.22)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 05 Feb 2023 23:38:05 -0800
References: <CABKMkP+Z=3FSNGxbcVbrEtw2wvdJ07EbDtFSiW+tCUzn-iFGDg@mail.gmail.com>
In-Reply-To: <CABKMkP+Z=3FSNGxbcVbrEtw2wvdJ07EbDtFSiW+tCUzn-iFGDg@mail.gmail.com>
Message-ID: <32073.1675669085179357281@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ec5FNYKvYev09izdEVcs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 07:38:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59178

--Ec5FNYKvYev09izdEVcs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Joel,

thanks for creating the issue.

Does the solution from Aleksandr work for you with raspberrypi4-64? The fun=
ny thing is for me it doesn't. As I mentioned above if I use his solution:

for MACHINE =3D "raspberrypi4-64" in local.conf, the .config file has follo=
wing configs:
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

Meaning when the machine is set to raspberrypi4-64 and CONFIG_PREEMPT_RT is=
 requested via the .cfg file in the file .config in work directory CONFIG_P=
REEMPT_NONE=3Dy is getting set. Whereas with Machine raspberrypi4 it works =
as expected.

--Ec5FNYKvYev09izdEVcs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Joel,<br /><br />thanks for creating the issue. <br /><br />Does the sol=
ution from Aleksandr work for you with raspberrypi4-64? The funny thing is =
for me it doesn't. As I mentioned above if I use his solution:<br /><br />f=
or MACHINE =3D "raspberrypi4-64" in local.conf, the .config file has follow=
ing configs:<br />CONFIG_HAVE_PREEMPT_LAZY=3Dy<br />CONFIG_PREEMPT_NONE=3Dy=
<br /># CONFIG_PREEMPT_VOLUNTARY is not set<br /># CONFIG_PREEMPT is not se=
t<br /><br />If in the local.conf I replace the machine to MACHINE =3D "ras=
pberrypi4" and I bitbake again, the .config file looks as follow:<br />CONF=
IG_HAVE_PREEMPT_LAZY=3Dy<br />CONFIG_PREEMPT_LAZY=3Dy<br /># CONFIG_PREEMPT=
_NONE is not set<br /># CONFIG_PREEMPT_VOLUNTARY is not set<br /># CONFIG_P=
REEMPT is not set<br />CONFIG_PREEMPT_RT=3Dy<br />CONFIG_PREEMPT_COUNT=3Dy<=
br />CONFIG_PREEMPTION=3Dy<br /><br />Meaning when the machine is set to ra=
spberrypi4-64 and CONFIG_PREEMPT_RT is requested via the .cfg file in the f=
ile .config in work directory CONFIG_PREEMPT_NONE=3Dy is getting set. Where=
as with Machine raspberrypi4 it works as expected.

--Ec5FNYKvYev09izdEVcs--

