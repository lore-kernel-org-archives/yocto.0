Return-Path: <bartiszosti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61559C3DA49
	for <webhook@archiver.kernel.org>; Tue, 23 Jul 2024 07:49:00 +0000 (UTC)
Subject: Enable LinuxFB on Raspberry Pi 4 #framebuffer #qt #raspberrypi #scarthgap
To: yocto@lists.yoctoproject.org
From: bartiszosti@gmail.com
X-Originating-Location: Gorzyce, Lesser Poland, PL (109.196.245.39)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Jul 2024 00:48:53 -0700
Message-ID: <P7hn.1721720933205323471.IEh8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5wwkWuMdylzOAQ8W52ju"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jul 2024 07:49:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63556

--5wwkWuMdylzOAQ8W52ju
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
How to enable the LinuxFB on the Raspberry Pi 4?
I'd like to start a Qt6 GUI app with the LinuxFB platform, but currently I =
have such output:

>=20
> qtwidgets[229]: Unable to figure out framebuffer device. Specify it
> manually.
> qtwidgets[229]: linuxfb: Failed to initialize screen
> qtwidgets[229]: no screens available, assuming 24-bit color
> qtwidgets[229]: Cannot create window: no screens available
>=20

So far, I set CONFIG_FB=3Dy, but still I don't have any fb devices under /d=
ev.
How do I enable it?

--5wwkWuMdylzOAQ8W52ju
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,<br />How to enable the LinuxFB on the Raspberry Pi 4?<br />I'd =
like to start a Qt6 GUI app with the LinuxFB platform, but currently I have=
 such output:</div>
<div>&nbsp;</div>
<blockquote>
<div>qtwidgets[229]: Unable to figure out framebuffer device. Specify it ma=
nually.</div>
<div>qtwidgets[229]: linuxfb: Failed to initialize screen</div>
<div>qtwidgets[229]: no screens available, assuming 24-bit color</div>
<div>&nbsp;qtwidgets[229]: Cannot create window: no screens available</div>
</blockquote>
<div>So far, I set CONFIG_FB=3Dy, but still I don't have any fb devices und=
er /dev.<br />How do I enable it?</div>

--5wwkWuMdylzOAQ8W52ju--

