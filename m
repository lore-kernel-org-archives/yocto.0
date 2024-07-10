Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45BD6C3DA42
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 13:15:01 +0000 (UTC)
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with different device trees
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Jul 2024 06:14:51 -0700
References: <CANNYZj8V2qASyEcY_59xOcm0UJO1J6Jxvo1J=4Car=OO8ymp1A@mail.gmail.com>
In-Reply-To: <CANNYZj8V2qASyEcY_59xOcm0UJO1J6Jxvo1J=4Car=OO8ymp1A@mail.gmail.com>
Message-ID: <12578.1720617291064282914@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YjbsfJjFrmO4XZxknwvx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 13:15:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63456

--YjbsfJjFrmO4XZxknwvx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Each board is built as a separate Petalinux project with it's own Petalinux=
 bsp.

In Yocto terms this translates into four builds in entirely separate locati=
ons (no shared TMPDIR etc).
Each build ends up with a different board specific layer (generated as part=
 of the Petalinux BSP from a hardware description file of the SoC/FPGA) inc=
luded, along with other common layers for our software.
The device tree is part of this BSP layer for each board.

Thank you for your help with this,
Phil

On Wed, Jul 10, 2024 at 01:46 PM, Alexander Kanavin wrote:

>=20
> If MACHINE is the same, how are the four different device trees
> inserted into the builds? Is it some petalinux-specifc mechanism?
>=20
> Alex

--YjbsfJjFrmO4XZxknwvx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Each board is built as a separate Petalinux project with it's own Petali=
nux bsp.<br /><br />In Yocto terms this translates into four builds in enti=
rely separate locations (no shared TMPDIR etc).<br />Each build ends up wit=
h a different board specific layer (generated as part of the Petalinux BSP =
from a hardware description file of the SoC/FPGA) included, along with othe=
r common layers for our software.<br />The device tree is part of this BSP =
layer for each board.<br /><br />Thank you for your help with this,<br />Ph=
il<br /><br /></p>
<p>On Wed, Jul 10, 2024 at 01:46 PM, Alexander Kanavin wrote:</p>
<blockquote>If MACHINE is the same, how are the four different device trees=
<br />inserted into the builds? Is it some petalinux-specifc mechanism?<br =
/><br />Alex</blockquote>

--YjbsfJjFrmO4XZxknwvx--

