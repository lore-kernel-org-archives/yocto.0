Return-Path: <srinuvasan_a@mentor.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EBD6C64EC4
	for <webhook@archiver.kernel.org>; Fri, 10 Mar 2023 09:11:48 +0000 (UTC)
Subject: AUTOREV not works in bitbake 2.0.5 #bitbake
To: yocto@lists.yoctoproject.org
From: "Srinuvasan A" <srinuvasan_a@mentor.com>
X-Originating-Location: US (139.181.36.34)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 10 Mar 2023 01:11:39 -0800
Message-ID: <F0GO.1678439499013452448.TBBc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nNEROqGvpxTiReD28tPe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Mar 2023 09:11:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59376

--nNEROqGvpxTiReD28tPe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

In my downstream layer, one recipe uses the ${AUTOREV} to get the very late=
st commit always, obviously we want the very latest changes always to build=
 the recipes often, that=E2=80=99s why we assigned AUTOREV to SRCREV.

SRCREV =3D =E2=80=9C${AUTOREV}=E2=80=9D

This works fine before we integrated bitbake 2.0.5, after that it throws an=
 error like below:

ERROR: ebsy-qa-suites-0.0-next-r0 do_fetch: Fetcher failure: Recipe uses a =
floating tag/branch without a fixed SRCREV yet doesn't call bb.fetch2.get_s=
rcrev() (use SRCPV in PV for OE).

ERROR: Logfile of failure stored in: /build/tmp/work/ebsy-bullseye-amd64/eb=
sy-qa-suites/0.0-next-r0/temp/log.do_fetch.120

ERROR: Task (/build/../repo/recipes-core/ebsy-qa-suites/ebsy-qa-suites_0.0-=
next.bb:do_fetch) failed with exit code '1'

Any help would be appreciated, how to use a floating commit instead of fixe=
d one.

Thanks,

Srinuvasan.A

--nNEROqGvpxTiReD28tPe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Hi All,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 In my=
 downstream layer, one recipe uses the ${AUTOREV} to get the very latest co=
mmit always, obviously we want the very latest changes always to build the =
recipes often, that=E2=80=99s why we assigned AUTOREV to SRCREV.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">SRCREV =3D =E2=80=9C${=
AUTOREV}=E2=80=9D</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">This works fine before=
 we integrated bitbake 2.0.5, after that it throws an error like below:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">ERROR: ebsy-qa-suites-=
0.0-next-r0 do_fetch: Fetcher failure: Recipe uses a floating tag/branch wi=
thout a fixed SRCREV yet doesn&#39;t call bb.fetch2.get_srcrev() (use SRCPV=
 in PV for OE).</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">ERROR: Logfile of fail=
ure stored in: /build/tmp/work/ebsy-bullseye-amd64/ebsy-qa-suites/0.0-next-=
r0/temp/log.do_fetch.120</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">ERROR: Task (/build/..=
/repo/recipes-core/ebsy-qa-suites/ebsy-qa-suites_0.0-next.bb:do_fetch) fail=
ed with exit code &#39;1&#39;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Any help would be appr=
eciated, how to use a floating commit instead of fixed one.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Thanks,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Srinuvasan.A</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>

--nNEROqGvpxTiReD28tPe--

