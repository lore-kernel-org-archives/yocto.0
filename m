Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89D8FCEFC5D
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 09:37:29 +0000 (UTC)
Subject: Re: [yocto] Help enabling the BT_QCA driver
To: "Jesus Jimenez Sanchez" <Jesus.JimenezSanchez@verifone.com>, yocto@lists.yoctoproject.org
From: "Jesus Jimenez Sanchez" <Jesus.JimenezSanchez@verifone.com>
X-Originating-Location: Athlone, Leinster, IE (83.70.152.76)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Oct 2024 02:37:23 -0700
References: <THe4.1728400256824602958.rStN@lists.yoctoproject.org>
In-Reply-To: <THe4.1728400256824602958.rStN@lists.yoctoproject.org>
Message-ID: <10004.1728466643973723741@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="so80KyBQI1edK9rMrA4P"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 09:37:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63983

--so80KyBQI1edK9rMrA4P
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I wanted to add that I have been able to enable the driver using menuconfig=
 by enabling its dependencies.

The problem I'm facing now is that Yocto is not building the kernel object =
files (.ko), not even the ones it was building before. As far as I know I h=
ave only changed the configuration to build this new driver but I could be =
wrong and maybe touche where I shouldn't.

Is there a way to tell Yocto to build those kernel objects?

Thank you.

--so80KyBQI1edK9rMrA4P
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I wanted to add that I have been able to enable the driver using menuc=
onfig by enabling its dependencies.</div>
<div>&nbsp;</div>
<div>The problem I'm facing now is that Yocto is not building the kernel ob=
ject files (.ko), not even the ones it was building before. As far as I kno=
w I have only changed the configuration to build this new driver but I coul=
d be wrong and maybe touche where I shouldn't.</div>
<div>&nbsp;</div>
<div>Is there a way to tell Yocto to build those kernel objects?</div>
<div>&nbsp;</div>
<div>Thank you.</div>

--so80KyBQI1edK9rMrA4P--

