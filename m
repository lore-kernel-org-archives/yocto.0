Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3588C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 14:30:19 +0000 (UTC)
Subject: Re: [yocto] QEMU core-image-minimal cannot login
To: Aleksandar Nikolic <an010@live.com>,yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: CH (147.161.250.119)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Dec 2023 06:30:12 -0800
References: <njnq.1702995268044494142.UDY1@lists.yoctoproject.org>
In-Reply-To: <njnq.1702995268044494142.UDY1@lists.yoctoproject.org>
Message-ID: <30615.1702996212073510551@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RC8tBx0tYvp6OtCma2Qh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 14:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61986

--RC8tBx0tYvp6OtCma2Qh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Okay, "debug-tweaks" was not in IMAGE_FEATURES, simply adding that has solv=
ed the issue.
Shouldn't "debug-tweaks" be in IMAGE_FEATURES by default=C2=A0though?

--RC8tBx0tYvp6OtCma2Qh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Okay, "debug-tweaks" was not in IMAGE_FEATURES, simply adding that has solv=
ed the issue.<br />Shouldn't "debug-tweaks" be in IMAGE_FEATURES by default=
&nbsp;though?

--RC8tBx0tYvp6OtCma2Qh--

