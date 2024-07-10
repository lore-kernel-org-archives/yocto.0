Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FD5AC3DA42
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 13:28:31 +0000 (UTC)
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with different device trees
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Jul 2024 06:28:28 -0700
References: <CANNYZj_pGxrBGoVPnBpS-0ZG6Fa=JboV6QVph3DMAgsfqykR5w@mail.gmail.com>
In-Reply-To: <CANNYZj_pGxrBGoVPnBpS-0ZG6Fa=JboV6QVph3DMAgsfqykR5w@mail.gmail.com>
Message-ID: <12578.1720618108139349239@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MZrSaeJBDtJRFIyqNJtY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 13:28:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63458

--MZrSaeJBDtJRFIyqNJtY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

OK, thank you for your help. I'll ask on the Xilinx forums.

Out of interest if I was to work to extract ourselves from Petalinux, do yo=
u have any brief idea how you might go about supporting 4 device trees -> 1=
 kernel if this was a pure Yocto build? Or if that's not sensible how to br=
eak the kernel driver header -> user-space dependency that's causing us to =
have to recompile our software?

Best Regards,
Phil

On Wed, Jul 10, 2024 at 02:19 PM, Alexander Kanavin wrote:

>=20
> If you're using petalinux, then you should ask for support from the
> petalinux provider.
>=20
> On the other hand it's probably possible to transition to a direct
> yocto build using only standard yocto upstream mechanisms, without all
> the extra custom BSP generation, and then you'd be better able to
> control how the build gets constructed, and to get help with that in
> this forum.
>=20
> Alex

--MZrSaeJBDtJRFIyqNJtY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

OK, thank you for your help. I'll ask on the Xilinx forums.<br /><br />Out =
of interest if I was to work to extract ourselves from Petalinux, do you ha=
ve any brief idea how you might go about supporting 4 device trees -&gt; 1 =
kernel if this was a pure Yocto build? Or if that's not sensible how to bre=
ak the kernel driver header -&gt; user-space dependency that's causing us t=
o have to recompile our software?<br /><br />Best Regards,<br />Phil<br /><=
br />On Wed, Jul 10, 2024 at 02:19 PM, Alexander Kanavin wrote:<br />
<blockquote>If you're using petalinux, then you should ask for support from=
 the<br />petalinux provider.<br /><br />On the other hand it's probably po=
ssible to transition to a direct<br />yocto build using only standard yocto=
 upstream mechanisms, without all<br />the extra custom BSP generation, and=
 then you'd be better able to<br />control how the build gets constructed, =
and to get help with that in<br />this forum.<br /><br />Alex</blockquote>

--MZrSaeJBDtJRFIyqNJtY--

