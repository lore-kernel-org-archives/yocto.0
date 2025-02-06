Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53316C02199
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 16:42:46 +0000 (UTC)
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master branch of Yocto #raspberrypi #raspberrypi0-wifi
To: "John" <jdowd@slashdevslashnull.org>, yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Feb 2025 08:42:36 -0800
References: <22391.1738859480398711450@lists.yoctoproject.org>
In-Reply-To: <22391.1738859480398711450@lists.yoctoproject.org>
Message-ID: <22391.1738860156600922862@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ckNI559vyGreAk9TFwXM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 16:42:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64730

--ckNI559vyGreAk9TFwXM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So, I'm at the same point in this excruciating exercise. The output is the =
same as what I reported before. I'm stuck at the loading of the linux kerne=
l.

I have to set the dtparam arm_64bit=3D0 for my Yocto image. Could there be =
an issue with the Raspberry Pi bootcode.bin being unable to load a 32-bit k=
ernel image? If I don't put that parameter in, I get an error from bootcode=
.bin about there being no loadable kernel image available.

Also, I've tried this with u-boot as well. I was thinking it would be easie=
r as u-boot's start requirements are quite straight forward. However I get =
exactly the same issue.

Is this a device tree issue? I have the dtb file: bcm2710-rpi-zero-2.dtb be=
ing loaded. Is that the correct one?

Can anyone claim that they have a working Yocto image from the more recent =
repos booting on a Raspberry Pi Zero W 2 board?

Cheers!!

--ckNI559vyGreAk9TFwXM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So, I'm at the same point in this excruciating exercise. The output is=
 the same as what I reported before. I'm stuck at the loading of the linux =
kernel.</div>
<div>&nbsp;</div>
<div>I have to set the dtparam arm_64bit=3D0 for my Yocto image. Could ther=
e be an issue with the Raspberry Pi bootcode.bin being unable to load a 32-=
bit kernel image? If I don't put that parameter in, I get an error from boo=
tcode.bin about there being no loadable kernel image available.</div>
<div>&nbsp;</div>
<div>Also, I've tried this with u-boot as well. I was thinking it would be =
easier as u-boot's start requirements are quite straight forward. However I=
 get exactly the same issue.</div>
<div>&nbsp;</div>
<div>Is this a device tree issue? I have the dtb file: bcm2710-rpi-zero-2.d=
tb being loaded. Is that the correct one?</div>
<div>&nbsp;</div>
<div>Can anyone claim that they have a working Yocto image from the more re=
cent repos booting on a Raspberry Pi Zero W 2 board?</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--ckNI559vyGreAk9TFwXM--

