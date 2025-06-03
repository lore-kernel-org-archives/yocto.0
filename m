Return-Path: <anilkumarnt87@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2D15C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 12:32:08 +0000 (UTC)
Subject: How to Customize and Build Original Raspberry Pi OS Using Yocto?
To: yocto@lists.yoctoproject.org
From: "Anil N T" <anilkumarnt87@gmail.com>
X-Originating-Location: IN (150.107.100.22)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Jun 2025 05:32:06 -0700
Message-ID: <f0mQ.1748953926946032572.GW8d@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CplN7PLZ9BZ79FOPXJ06"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 12:32:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65458

--CplN7PLZ9BZ79FOPXJ06
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I want to customize and generate the official Raspberry Pi OS using Yocto a=
nd test it on Raspberry Pi 5 hardware.

Here=E2=80=99s what I=E2=80=99ve done so far:
I downloaded the Raspberry Pi CM4 rootfs and generated core images using yo=
cto(https://downloads.raspberrypi.com/raspi ... oot.tar.xz)
I kept only the boot files in the SD card=E2=80=99s boot partition.
I copied the rootfs contents from the CM4 Raspberry Pi rootfs into the ROOT=
FS partition.
With this setup, the board boots successfully.

Now, I want to take the next step:
1. Download the original source code of the Raspberry Pi OS rootfs (not jus=
t prebuilt images)
2. Build it using Yocto
3 .Copy the generated rootfs into the ROOTFS partition and boot the board

My questions:
1. Is it possible to rebuild the official Raspberry Pi OS rootfs (not just =
minimal Yocto builds) using Yocto?
2. Where can I get the exact source code or recipe layers for the Raspberry=
 Pi OS packages (not just Poky or meta-raspberrypi layers)?
3.Has anyone here successfully built a Yocto image that replicates the Rasp=
berry Pi OS experience (including its specific desktop environment, tools, =
etc.)?
Any pointers, recommended layers, or documentation links would be hugely ap=
preciated!

Thank you in advance

--CplN7PLZ9BZ79FOPXJ06
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hi all,</div>
<div>I want to customize and generate the official Raspberry Pi OS using Yo=
cto and test it on Raspberry Pi 5 hardware.</div>
<div><br />Here&rsquo;s what I&rsquo;ve done so far:</div>
<div style=3D"padding-left: 40px;">I downloaded the Raspberry Pi CM4 rootfs=
 and generated core images using yocto(https://downloads.raspberrypi.com/ra=
spi ... oot.tar.xz)</div>
<div style=3D"padding-left: 40px;">I kept only the boot files in the SD car=
d&rsquo;s boot partition.</div>
<div style=3D"padding-left: 40px;">I copied the rootfs contents from the CM=
4 Raspberry Pi rootfs into the ROOTFS partition.</div>
<div style=3D"padding-left: 40px;">With this setup, the board boots success=
fully.</div>
<div style=3D"padding-left: 40px;">&nbsp;</div>
<div>Now, I want to take the next step:</div>
<div style=3D"padding-left: 40px;">1. Download the original source code of =
the Raspberry Pi OS rootfs (not just prebuilt images)<br />2. Build it usin=
g Yocto<br />3 .Copy the generated rootfs into the ROOTFS partition and boo=
t the board</div>
<div style=3D"padding-left: 40px;">&nbsp;</div>
<div>My questions:</div>
<div style=3D"padding-left: 40px;">1. Is it possible to rebuild the officia=
l Raspberry Pi OS rootfs (not just minimal Yocto builds) using Yocto?<br />=
2. Where can I get the exact source code or recipe layers for the Raspberry=
 Pi OS packages (not just Poky or meta-raspberrypi layers)?<br />3.Has anyo=
ne here successfully built a Yocto image that replicates the Raspberry Pi O=
S experience (including its specific desktop environment, tools, etc.)?</di=
v>
<div style=3D"padding-left: 40px;">Any pointers, recommended layers, or doc=
umentation links would be hugely appreciated!</div>
<div style=3D"padding-left: 80px;">&nbsp;</div>
<div>Thank you in advance</div>
</div>

--CplN7PLZ9BZ79FOPXJ06--

