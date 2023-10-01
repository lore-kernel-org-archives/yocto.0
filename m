Return-Path: <daniel_herrmann22@web.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BA6CE78491
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 20:36:07 +0000 (UTC)
Subject: Adding device tree overlay #kirkstone
To: yocto@lists.yoctoproject.org
From: daniel_herrmann22@web.de
X-Originating-Location: Tholey, Saarland, DE (131.117.155.117)
X-Originating-Platform: Linux Firefox 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 01 Oct 2023 13:35:57 -0700
Message-ID: <EKjA.1696192557130441748.ckEK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rYEuCJCazjZOsfTfFiPT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 20:36:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61182

--rYEuCJCazjZOsfTfFiPT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am struggling to add a device tree overlay to the linux kernel.

I am on the kirkstone branch and my recipe (linux-raspberrypi_%.bbappend) l=
ooks like this:

SRC_URI +=3D "file://my_gpio.dts;subdir=3Dgit/arch/${ARCH}/boot/dts/overlay=
s"

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/deviceTree:"

PACKAGE_ARCH =3D "${MACHINE_ARCH}"

KERNEL_DEVICETREE:append =3D " overlays/my_gpio.dtbo"

In the build/deploy/images folder I can see the generated dtbo file but it =
not copied into /boot/overlays

Does anyone know what I am doing wrong ? Thanks..

--rYEuCJCazjZOsfTfFiPT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I am struggling to add a device tree overlay to the linux kernel.</p>
<p>I am on the kirkstone branch and my recipe (linux-raspberrypi_%.bbappend=
) looks like this:</p>
<p>&nbsp;</p>
<p>SRC_URI +=3D "file://my_gpio.dts;subdir=3Dgit/arch/${ARCH}/boot/dts/over=
lays"<br /><br />FILESEXTRAPATHS:prepend :=3D "${THISDIR}/deviceTree:"<br /=
><br />PACKAGE_ARCH =3D "${MACHINE_ARCH}"<br /><br />KERNEL_DEVICETREE:appe=
nd =3D " overlays/my_gpio.dtbo"</p>
<p>In the build/deploy/images folder I can see the generated dtbo file but =
it not copied into /boot/overlays</p>
<p>Does anyone know what I am doing wrong ? Thanks..</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

--rYEuCJCazjZOsfTfFiPT--

