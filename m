Return-Path: <sandeep.kel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BABEB64DD
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 06:38:41 +0000 (UTC)
Subject: [meta-openembedded]/[meta-multimedia] Enabling pipewire support on yocto mickledore
To: yocto@lists.yoctoproject.org
From: sandeep.kel@gmail.com
X-Originating-Location: Singapore, SG (165.225.112.118)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Jul 2023 23:38:39 -0700
Message-ID: <Hll7.1689230319753912455.FPqe@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EhLrkopaDMUSHdV0o718"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 06:38:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60560

--EhLrkopaDMUSHdV0o718
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi,

This is regarding enabling pipewire support in the yocto project.

I checked out mickledore code from the=C2=A0 git and built the code success=
fully for core-image-sato.

Looking to enable pipewire support, i discovered that pipewire is already p=
art of *meta-openembedded/meta- multimedia.*

I tried to add these layers using the bitbake-layers add-layer command.
Now when I check for bitbake layers I can see that meta-multimedia is part =
of the build.

When I run the=C2=A0qemu instance and check pactl info on the terminal with=
in the=C2=A0 instance the default Audio server is shown as PulseAudio.

I want to *disable PulseAudio and enable Pipewire Server*.

PulseAudio is part of the DISTRO_FEATURES.

Can anybody help me with the steps required to achieve this.

regards
-Sandeep

--EhLrkopaDMUSHdV0o718
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi,<br /><br />
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">Th=
is is regarding enabling pipewire support in the yocto project.</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">&n=
bsp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">I =
checked out mickledore code from the&nbsp; git and built the code successfu=
lly for core-image-sato.</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">&n=
bsp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">Lo=
oking to enable pipewire support, i discovered that pipewire is already par=
t of <strong>meta-openembedded/meta-<wbr />multimedia.</strong></div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">&n=
bsp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">I =
tried to add these layers using the bitbake-layers add-layer command.</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">No=
w when I check for bitbake layers I can see that meta-multimedia is part of=
 the build.</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">&n=
bsp;</div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">Wh=
en I run the&nbsp;qemu instance and check pactl info on the terminal within=
 the&nbsp; instance the default Audio server is shown as PulseAudio.<br /><=
br />I want to<strong> disable PulseAudio and enable Pipewire Server</stron=
g>.<br /><br />PulseAudio is part of the DISTRO_FEATURES.<br /><br />Can an=
ybody help me with the steps required to achieve this.<br /><br />regards<b=
r />-Sandeep<br /><br /></div>
<div class=3D"gmail_default" style=3D"font-family: verdana, sans-serif;">&n=
bsp;</div>

--EhLrkopaDMUSHdV0o718--

