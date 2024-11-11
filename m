Return-Path: <matt.holmes@zethon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D9AD2E9E4
	for <webhook@archiver.kernel.org>; Mon, 11 Nov 2024 12:22:19 +0000 (UTC)
Subject: Re: [yocto] Kernel patch applying but not on image #kernel #linux #patch #scarthgap
To: "Quentin Schulz" <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
From: "Matt" <matt.holmes@zethon.com>
X-Originating-Location: London, England, GB (109.176.155.130)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Nov 2024 04:22:10 -0800
References: <fab37127-0328-4bc0-a770-fdf5d40e1403@cherry.de>
In-Reply-To: <fab37127-0328-4bc0-a770-fdf5d40e1403@cherry.de>
Message-ID: <20128.1731327730424031798@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7W9aoKoTEnAhUzp1v4Xt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 12:22:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64251

--7W9aoKoTEnAhUzp1v4Xt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

I have moved the patch to the correct .bbappend file (my kernel recipe is l=
inux-ti-staging), however the patch no longer compiles as one of the hunks =
has an incorrect offset.
My main concern here is how is the patch going to work when there is no dri=
vers/spi/spidev.c file in linux-ti-staging?

--7W9aoKoTEnAhUzp1v4Xt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Quentin,</div>
<div>&nbsp;</div>
<div>I have moved the patch to the correct .bbappend file (my kernel recipe=
 is linux-ti-staging), however the patch no longer compiles as one of the h=
unks has an incorrect offset.<br />My main concern here is how is the patch=
 going to work when there is no drivers/spi/spidev.c file in linux-ti-stagi=
ng?</div>

--7W9aoKoTEnAhUzp1v4Xt--

