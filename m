Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA45D13570
	for <webhook@archiver.kernel.org>; Mon, 28 Oct 2024 10:55:00 +0000 (UTC)
Subject: Re: [yocto] bitbake: enforce variables to be defined?
To: "Quentin Schulz" <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
From: "Jocelyn Meyron" <jmeyron@gmail.com>
X-Originating-Location: Amsterdam, North Holland, NL (165.225.240.81)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 03:54:58 -0700
References: <0c491baf-f5b9-4508-8f3d-2ed4b3668c99@cherry.de>
In-Reply-To: <0c491baf-f5b9-4508-8f3d-2ed4b3668c99@cherry.de>
Message-ID: <27982.1730112898904986070@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RlUEHquhUKtikjMwWtGH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 10:55:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64153

--RlUEHquhUKtikjMwWtGH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I had a look and in fact, it should be possible to do what you proposed (th=
e relevant properties are not documented but are present in the bitbake dat=
astore).

For the moment, I patched poky to add this "set -u" option when a certain v=
ariable is set but it has the disadvantage of being global to my whole buil=
d. I will investigate the other option to create a dedicated class for that=
, and will let you know about my progress.

--RlUEHquhUKtikjMwWtGH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I had a look and in fact, it should be possible to do what you propose=
d (the relevant properties are not documented but are present in the bitbak=
e datastore).</div>
<div>&nbsp;</div>
<div>For the moment, I patched poky to add this "set -u" option when a cert=
ain variable is set but it has the disadvantage of being global to my whole=
 build. I will investigate the other option to create a dedicated class for=
 that, and will let you know about my progress.</div>

--RlUEHquhUKtikjMwWtGH--

