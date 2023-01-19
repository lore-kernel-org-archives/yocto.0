Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69995C27C76
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 15:01:47 +0000 (UTC)
Subject: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (194.39.218.18)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Jan 2023 05:00:20 -0800
Message-ID: <QYUx.1674133220361984525.See5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pfLA0uSjtYHNeHcVZ5B5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 15:01:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59059

--pfLA0uSjtYHNeHcVZ5B5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I am trying to use the preempt-rt patches while building my image for raspb=
errypi4-64 using Yocto and meta-raspberrypi. I could see that in older bran=
ches like warrior there was a specific -rt recipe accessing the specific -r=
t branch e.g. "rpi-4.19.y-rt".

I do see in the linux/raspberrypi git that for newer branches like "rpi-5.1=
5.y" there is no rt specific branch anymore. However from just checking thr=
ough the mailing list and commits I was not able to understand what the his=
tory is, and if support was stopped or there is now another way to do this.

Is it still possible to get the preempt-rt patches to build the kernel with=
in meta-raspberrypi using "PREFERRED_PROVIDER_virtual/kernel in local.conf?

Any hints on how to accomplish this with the latest releases (if still supp=
orted) would be much appreciated.

Best Regards,
Carles

--pfLA0uSjtYHNeHcVZ5B5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all, <br /><br />I am trying to use the preempt-rt patches while buil=
ding my image for raspberrypi4-64 using Yocto and meta-raspberrypi. I could=
 see that in older branches like warrior there was a specific -rt recipe ac=
cessing the specific -rt branch e.g. "rpi-4.19.y-rt".<br /><br />I do see i=
n the linux/raspberrypi git that for newer branches like "rpi-5.15.y" there=
 is no rt specific branch anymore. However from just checking through the m=
ailing list and commits I was not able to understand what the history is, a=
nd if support was stopped or there is now another way to do this.<br /><br =
/>Is it still possible to get the preempt-rt patches to build the kernel wi=
thin meta-raspberrypi using "PREFERRED_PROVIDER_virtual/kernel in local.con=
f? <br /><br />Any hints on how to accomplish this with the latest releases=
 (if still supported) would be much appreciated.<br /><br />Best Regards,<b=
r />Carles

--pfLA0uSjtYHNeHcVZ5B5--

