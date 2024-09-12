Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E97EE645B
	for <webhook@archiver.kernel.org>; Thu, 12 Sep 2024 07:45:30 +0000 (UTC)
Subject: Building systemd without udev
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: Brest, Brittany, FR (78.120.130.81)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Sep 2024 00:45:28 -0700
Message-ID: <xEMZ.1726127128546561215.WHcM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OYyP50sXxC3HL0EAPpvy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Sep 2024 07:45:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63828

--OYyP50sXxC3HL0EAPpvy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm currently trying to reduce the size of the generated image as much as p=
ossible.
One thing I don't need is udev, but it is currently built by systemd and se=
ems not very easy to remove throw PACKAGECONFIG.

Is it possible to remove udev dependency so that we don't integrate udev in=
 the image ?

Joel

--OYyP50sXxC3HL0EAPpvy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I'm currently trying to reduce the size of the generated image as much=
 as possible.</div>
<div>One thing I don't need is udev, but it is currently built by systemd a=
nd seems not very easy to remove throw PACKAGECONFIG.</div>
<div>&nbsp;</div>
<div>Is it possible to remove udev dependency so that we don't integrate ud=
ev in the image ?</div>
<div>&nbsp;</div>
<div>Joel</div>

--OYyP50sXxC3HL0EAPpvy--

