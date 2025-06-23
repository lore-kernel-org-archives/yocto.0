Return-Path: <matteo.orlandini@tastitalia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C492FC77B7F
	for <webhook@archiver.kernel.org>; Mon, 23 Jun 2025 12:22:29 +0000 (UTC)
Subject: Virtual Keyboard on Wayland
To: yocto@lists.yoctoproject.org
From: matteo.orlandini@tastitalia.com
X-Originating-Location: Torgiano, Umbria, IT (37.77.97.75)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 23 Jun 2025 05:22:21 -0700
Message-ID: <C42u.1750681341370467311.Q2We@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="i4xhLBNhjtws8KxVxRIA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jun 2025 12:22:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65533

--i4xhLBNhjtws8KxVxRIA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm searching for a virtual keyboard to use with Yocto Scarthgap and my Pyt=
hon 3.12 application that uses GTK 3. I'm using weston version 12.0.4 and I=
 saw that weston keyboard is not compatible with GTK 3. I tried to compile =
squeekboard but I got this error:

>=20
> Nothing PROVIDES 'gnome-desktop' (but
> /home/bitbake/muratore/nxp-scarthgap/sources/meta-wayland/recipes-support=
/squeekboard/squeekboard_git.bb
> DEPENDS on or otherwise requires it)
> gnome-desktop was skipped: missing required distro feature 'x11' (not in
> DISTRO_FEATURES)
>=20
>=20

Can someone help? Thank you in advance.
Matteo

--i4xhLBNhjtws8KxVxRIA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>I'm searching for a virtual keyboard to use with Yocto Scarthgap and m=
y Python 3.12 application that uses GTK 3. I'm using weston version 12.0.4 =
and I saw that weston keyboard is not compatible with GTK 3. I tried to com=
pile squeekboard but I got this error:</div>
<div>
<blockquote>
<div>Nothing PROVIDES 'gnome-desktop' (but /home/bitbake/muratore/nxp-scart=
hgap/sources/meta-wayland/recipes-support/squeekboard/squeekboard_git.bb DE=
PENDS on or otherwise requires it)<br />gnome-desktop was skipped: missing =
required distro feature 'x11' (not in DISTRO_FEATURES)</div>
<div>&nbsp;</div>
</blockquote>
<div>Can someone help? Thank you in advance.</div>
<div>Matteo</div>
</div>

--i4xhLBNhjtws8KxVxRIA--

