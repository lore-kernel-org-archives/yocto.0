Return-Path: <matt.holmes@zethon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21FC1C3ABDD
	for <webhook@archiver.kernel.org>; Wed, 14 May 2025 08:55:09 +0000 (UTC)
Subject: Re: [yocto] Disabling APM Events from boot #kernel #scarthgap #uboot #yocto
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Matt" <matt.holmes@zethon.com>
X-Originating-Location: Wembley, England, GB (109.176.155.130)
X-Originating-Platform: Linux Firefox 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 May 2025 01:55:08 -0700
References: <5c5c21d7-4850-4558-947f-b15617b218f9@gmail.com>
In-Reply-To: <5c5c21d7-4850-4558-947f-b15617b218f9@gmail.com>
Message-ID: <1013.1747212908803788387@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mAWasRMohZJGhz7vw3dm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 08:55:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65335

--mAWasRMohZJGhz7vw3dm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Adding

EXTRA_OEMAKE:append :=3D ' PVRSRV_APPHINT_ENABLEAPM=3DRGX_ACTIVEPM_FORCE_OF=
F'

to my ti-img-rogue-driver_%.bbappend worked so thank you very much! Unfortu=
nately something is still having a performance impact on my program but at =
least I can rule out APM events as the cause now.

Also is the location of this config file documented anywhere? I had already=
 spent a long time searching for this sort of file and it would be good to =
know for future reference if there is a better way of searching for things =
like this

--mAWasRMohZJGhz7vw3dm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Adding <br /><br />EXTRA_OEMAKE:append :=3D ' PVRSRV_APPHINT_ENABLEAPM=
=3DRGX_ACTIVEPM_FORCE_OFF'</div>
<div>&nbsp;</div>
<div>to my ti-img-rogue-driver_%.bbappend worked so thank you very much! Un=
fortunately something is still having a performance impact on my program bu=
t at least I can rule out APM events as the cause now.<br /><br />Also is t=
he location of this config file documented anywhere? I had already spent a =
long time searching for this sort of file and it would be good to know for =
future reference if there is a better way of searching for things like this=
<br /><br /><br /></div>

--mAWasRMohZJGhz7vw3dm--

