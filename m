Return-Path: <kfa@deif.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 869A8C3DA61
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 13:36:34 +0000 (UTC)
Subject: Re: [yocto] Native causes installation of static linked libraries.
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Kjeld Flarup" <kfa@deif.com>
X-Originating-Location: Skive, Central Jutland, DK (87.54.42.99)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jul 2024 06:36:34 -0700
References: <CANNYZj867bkBnut1xdUDCk+pnLagcAqLkn8Jv=2qg6FMrc5tgw@mail.gmail.com>
In-Reply-To: <CANNYZj867bkBnut1xdUDCk+pnLagcAqLkn8Jv=2qg6FMrc5tgw@mail.gmail.com>
Message-ID: <12754.1721223394255853814@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5BcZ9h4VZCa7asmarw18"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 13:36:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63526

--5BcZ9h4VZCa7asmarw18
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

FILES:${PN}-dev +=3D "${bindir}/fast-discovery-server-1.0.1"

was the cause.
Thanks.
--
--
Regards
Kjeld Flarup
DEIF A/S

--5BcZ9h4VZCa7asmarw18
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>FILES:${PN}-dev +=3D "${bindir}/fast-discovery-server-1.0.1"</div>
<div>&nbsp;</div>
<div>was the cause.&nbsp;</div>
<div>Thanks.</div>
<div>--</div>
<div>--<br />Regards&nbsp;<br />Kjeld Flarup<br />DEIF A/S</div>

--5BcZ9h4VZCa7asmarw18--

