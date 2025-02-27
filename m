Return-Path: <ryan.a.lovelett@saic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7260BC19776
	for <webhook@archiver.kernel.org>; Thu, 27 Feb 2025 00:35:55 +0000 (UTC)
Subject: Help needed with combining host and guest VM images in Yocto #qemu #qemux86-64
To: yocto@lists.yoctoproject.org
From: "Ryan Lovelett" <ryan.a.lovelett@saic.com>
X-Originating-Location: Merritt Island, Florida, US (72.239.251.203)
X-Originating-Platform: Mac Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Feb 2025 16:35:54 -0800
Message-ID: <fuBw.1740616554278597343.e7gV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sszSfxgTig5hXptg7wvH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 00:35:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64880

--sszSfxgTig5hXptg7wvH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to create a Yocto build that produces a host image containing Q=
EMU and also embeds a guest image that Yocto builds. The idea is to have a =
host root filesystem that includes QEMU along with a separate "disk" holdin=
g the guest image. At boot, a systemd unit in the host would launch QEMU us=
ing the embedded guest image as its disk.

I would like to know if this conceptual approach would work and, if so, wha=
t the best practices are. In particular, I am looking for guidance on:

* The recommended method to build the guest image with the host image.
* The recommended method to include the guest image in the host image.

Any pointers or recommendations would be appreciated.

--sszSfxgTig5hXptg7wvH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p data-start=3D"165" data-end=3D"506">I am trying to create a Yocto build =
that produces a host image containing QEMU and also embeds a guest image th=
at Yocto builds. The idea is to have a host root filesystem that includes Q=
EMU along with a separate "disk" holding the guest image. At boot, a system=
d unit in the host would launch QEMU using the embedded guest image as its =
disk.</p>
<p data-start=3D"508" data-end=3D"968">I would like to know if this concept=
ual approach would work and, if so, what the best practices are. In particu=
lar, I am looking for guidance on:</p>
<ul>
<li data-start=3D"508" data-end=3D"968">The recommended method to build the=
 guest image with the host image.</li>
<li data-start=3D"508" data-end=3D"968">The recommended method to include t=
he guest image in the host image.</li>
</ul>
<p data-start=3D"970" data-end=3D"1023">Any pointers or recommendations wou=
ld be appreciated.</p>
</div>

--sszSfxgTig5hXptg7wvH--

