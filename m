Return-Path: <matt.holmes@zethon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694CBD41D6F
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 09:05:25 +0000 (UTC)
Subject: Re: [yocto] Kernel patch applying but not on image #kernel #linux #patch #scarthgap
To: "Quentin Schulz" <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
From: "Matt" <matt.holmes@zethon.com>
X-Originating-Location: London, England, GB (109.176.155.130)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Nov 2024 01:05:18 -0800
References: <c18b2057-5017-45ad-bbe2-f97bc9c3859f@cherry.de>
In-Reply-To: <c18b2057-5017-45ad-bbe2-f97bc9c3859f@cherry.de>
Message-ID: <1076.1731402318983541750@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WKAJhsr8c3yXFtJQO4eL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 09:05:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64262

--WKAJhsr8c3yXFtJQO4eL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
I realised my mistake was looking in work rather than work-shared, so I did=
 end up finding drivers/spi/spidev.c under the kernel-source directory.

I updated the SRCREV as you suggested, I had not realised that ti-linux-ker=
nel existed, and I am still not sure why the default SRCREV was so old for =
linux-ti-staging...

I did still need to keep the first part of my patch to completely remove th=
e warning, but it is all good now so thank you very much for the help!

--WKAJhsr8c3yXFtJQO4eL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hi Quentin,</div>
<div>I realised my mistake was looking in work rather than work-shared, so =
I did end up finding drivers/spi/spidev.c under the kernel-source directory=
. &nbsp;<br />&nbsp;&nbsp;<br />I updated the SRCREV as you suggested, I ha=
d not realised that ti-linux-kernel existed, and I am still not sure why th=
e default SRCREV was so old for linux-ti-staging...</div>
<div>&nbsp;</div>
<div>I did still need to keep the first part of my patch to completely remo=
ve the warning, but it is all good now so thank you very much for the help!=
</div>
</div>

--WKAJhsr8c3yXFtJQO4eL--

