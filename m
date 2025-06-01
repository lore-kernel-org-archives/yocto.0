Return-Path: <sergey.forum@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88833C54FB3
	for <webhook@archiver.kernel.org>; Sun,  1 Jun 2025 11:09:52 +0000 (UTC)
Subject: bitbake provided path does not contain path to git so fetch is stalled
To: yocto@lists.yoctoproject.org
From: "Sergey Kurdakov" <sergey.forum@gmail.com>
X-Originating-Location: Moscow, RU (176.59.170.235)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 01 Jun 2025 04:09:48 -0700
Message-ID: <a1oz.1748776188815356936.LR5v@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FN8SV1Se6txU4CP54MPZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Jun 2025 11:09:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65441

--FN8SV1Se6txU4CP54MPZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I decided to give yocto scarthgap a spin at home with Ubuntu 24.02 (somehow=
 it works at the same Ubuntu version at work computer, but cannot investiga=
te at weekend, why it works there),
first I had to add apparmor profile (due to ubuntu apparmor protection), as=
 recommended in https://bugs.launchpad.net/ubuntu/+source/apparmor/+bug/205=
6555 ) then building an sample image started,

but encountered strange behavior:
git fetch would stuck.

So I added -DDD option and observed, that git fetch is invoked with exporte=
d path, which does not contain path to git,
if I ran git command in a separate console without bitbake provided path th=
en git fetches sources (so git works), but if exported path is
added as git fetcher does via bitbake=C2=A0 I observe the same=C2=A0 a comm=
and just hangs.

My question is, how to enable so that bitbake invoked git also has regular =
path environmental variable being attached?

Best regards
Sergey

--FN8SV1Se6txU4CP54MPZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I decided to give yocto scarthgap a spin at home with Ubuntu 24.02 (so=
mehow it works at the same Ubuntu version at work computer, but cannot inve=
stigate at weekend, why it works there),</div>
<div>first I had to add apparmor profile (due to ubuntu apparmor protection=
), as recommended in <a href=3D"https://bugs.launchpad.net/ubuntu/+source/a=
pparmor/+bug/2056555" target=3D"_blank" rel=3D"noopener">https://bugs.launc=
hpad.net/ubuntu/+source/apparmor/+bug/2056555</a> ) then building an sample=
 image started,</div>
<div>&nbsp;</div>
<div>but encountered strange behavior:</div>
<div>git fetch would stuck.</div>
<div>&nbsp;</div>
<div>So I added -DDD option and observed, that git fetch is invoked with ex=
ported path, which does not contain path to git,</div>
<div>if I ran git command in a separate console without bitbake provided pa=
th then git fetches sources (so git works), but if exported path is</div>
<div>added as git fetcher does via bitbake&nbsp; I observe the same&nbsp; a=
 command just hangs.</div>
<div>&nbsp;</div>
<div>My question is, how to enable so that bitbake invoked git also has reg=
ular path environmental variable being attached?</div>
<div>&nbsp;</div>
<div>Best regards</div>
<div>Sergey</div>

--FN8SV1Se6txU4CP54MPZ--

