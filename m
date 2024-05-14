Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1ACC25B75
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 15:35:34 +0000 (UTC)
Subject: Chainloading a Yocto image with Grub #hddimg #honister #iso #linux
To: yocto@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Zurich, CH (178.197.195.62)
X-Originating-Platform: Windows Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 May 2024 08:35:24 -0700
Message-ID: <diYh.1715700924837267672.7I3P@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UZXCd3xSNrr3JK2KdnmY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 15:35:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63093

--UZXCd3xSNrr3JK2KdnmY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings everyone,

I would like to create a Yocto image containing on only *1 partition* my ro=
otfs and bootloader. This setup is needed for being chainloaded by an alrea=
dy existing grub setup.

Goal:

* 1 partition with the rootfs on / , and the bootloader (syslinux) being pa=
rt of the rootfs under /root
* Able to be chainload with grub

Grub configuration (code snippet):
set root=3D(hd0,3)
chainloader (hd0,3)+1
boot

Syslinux configuration (code snippet):

PROMPT 1
TIMEOUT 50
DEFAULT linux
SAY Now booting the kernel from SYSLINUX...
LABEL linux
KERNEL /boot/bzImage
APPEND root =3D LABEL =3D linux_rootfs

I would like to ask for advices on how to setup this. I tried to use the hd=
dimg, iso and .wic format without success so far.

Thank you,
Nicolas

--UZXCd3xSNrr3JK2KdnmY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings everyone,<br /><br />I would like to create a Yocto image contain=
ing on only <strong>1 partition</strong> my rootfs and bootloader. This set=
up is needed for being chainloaded by an already existing grub setup.<br />=
<br />Goal:<br />
<ul>
<li>1 partition with the rootfs on / , and the bootloader (syslinux) being =
part of the rootfs under /root</li>
<li>Able to be chainload with grub</li>
</ul>
<p><br />Grub configuration (code snippet):<br />set root=3D(hd0,3)<br />ch=
ainloader (hd0,3)+1<br />boot<br /><br />Syslinux configuration (code snipp=
et):</p>
<div><span style=3D"color: #333333;">PROMPT 1</span></div>
<div><span style=3D"color: #333333;">TIMEOUT 50</span></div>
<div><span style=3D"color: #333333;">DEFAULT linux</span></div>
<div><span style=3D"color: #333333;">SAY Now booting the kernel from SYSLIN=
UX...</span></div>
<div><span style=3D"color: #333333;">LABEL linux</span></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; KERNEL /boot/bzImage</sp=
an></div>
<div><span style=3D"color: #333333;">&nbsp; &nbsp; APPEND </span><span styl=
e=3D"color: #4b69c6;">root</span><span style=3D"color: #777777;">=3D</span>=
<span style=3D"color: #4b69c6;">LABEL</span><span style=3D"color: #777777;"=
>=3D</span><span style=3D"color: #333333;">linux_rootfs <br /><br /></span>=
I would like to ask for advices on how to setup this. I tried to use the hd=
dimg, iso and .wic format without success so far.&nbsp;<br /><br />Thank yo=
u,<br />Nicolas<br /><br /></div>

--UZXCd3xSNrr3JK2KdnmY--

