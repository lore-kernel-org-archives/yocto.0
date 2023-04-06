Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0BAC76196
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 14:01:15 +0000 (UTC)
Subject: Re: How to remove Rust (and other packages) from yocto build #bitbake
To: yocto@lists.yoctoproject.org
From: Jesus.JimenezSanchez@verifone.com
X-Originating-Location: Athlone, Leinster, IE (83.70.152.75)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Apr 2023 07:01:14 -0700
References: <CA+chaQeHS5k780TKWJNZAo2G2pS8-5g2n18nBD720_0+ryv4fQ@mail.gmail.com>
In-Reply-To: <CA+chaQeHS5k780TKWJNZAo2G2pS8-5g2n18nBD720_0+ryv4fQ@mail.gmail.com>
Message-ID: <30535.1680789674133651247@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KQ1xE57nUiJ2jank1xby"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 14:01:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59631

--KQ1xE57nUiJ2jank1xby
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Thank you, SKIP_RECIPE is what I was looking for. Unfortunately, it is a de=
pendency for python3-cryptography, as was mentioned in another message, and=
 the build fails instantly, so it doesn't look like we'll be removing it.

Thank you anyways.

--KQ1xE57nUiJ2jank1xby
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />Thank you, SKIP_RECIPE is what I was looking for. Unfortu=
nately, it is a dependency for python3-cryptography, as was mentioned in an=
other message, and the build fails instantly, so it doesn't look like we'll=
 be removing it.<br /><br />Thank you anyways.

--KQ1xE57nUiJ2jank1xby--

