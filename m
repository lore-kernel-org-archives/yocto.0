Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A0C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 19:37:48 +0000 (UTC)
Subject: Re: Error: Transaction check error: while doing do_rootfs task
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Feb 2022 11:37:47 -0800
References: 
 <CAMKF1spZ9wOkNsj=AOF3oxfkNPrKi-cmmsJeb2UXpb-D+SLKPA@mail.gmail.com>
In-Reply-To: 
 <CAMKF1spZ9wOkNsj=AOF3oxfkNPrKi-cmmsJeb2UXpb-D+SLKPA@mail.gmail.com>
Message-ID: <12200.1644435467634170154@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qfJKGKBc4Qre6lokhdGz"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 19:37:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56135

--qfJKGKBc4Qre6lokhdGz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem,

Doing "bitbake -e core-image-swupdate | grep ^INIT_MANAGER=3D" shows INIT_M=
ANAGER=3D"none". And "bitbake -e core-image-swupdate | grep ^DISTRO_FEATURE=
S=3D" shows DISTRO_FEATURES=3D"acl alsa argp bluetooth ext2 ipv4 ipv6 large=
file pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 vfat l=
argefile opengl ptest multiarch wayland vulkan systemd wifi systemd pulseau=
dio sysvinit gobject-introspection-data ldconfig".

I don't understand why these is both systemd and sysvinit. In the core-imag=
e-swupdate I have mentioned:

DISTRO_FEATURES_append =3D " systemd"

Can you please let me know how can I check if the recipe has dependency on =
sysvinit or not?

Thanks in advance

--qfJKGKBc4Qre6lokhdGz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem,<br /><br />Doing "bitbake -e core-image-swupdate | grep ^INIT_M=
ANAGER=3D" shows INIT_MANAGER=3D"none". And "bitbake -e core-image-swupdate=
 | grep ^DISTRO_FEATURES=3D" shows DISTRO_FEATURES=3D"acl alsa argp bluetoo=
th ext2 ipv4 ipv6 largefile pcmcia usbgadget usbhost wifi xattr nfs zerocon=
f pci 3g nfc x11 vfat largefile opengl ptest multiarch wayland vulkan syste=
md wifi systemd pulseaudio sysvinit gobject-introspection-data ldconfig". <=
br /><br />I don't understand why these is both systemd and sysvinit. In th=
e core-image-swupdate I have mentioned:<br /><br />DISTRO_FEATURES_append =
=3D " systemd"<br /><br />Can you please let me know how can I check if the=
 recipe has dependency on sysvinit or not?<br /><br />Thanks in advance

--qfJKGKBc4Qre6lokhdGz--

