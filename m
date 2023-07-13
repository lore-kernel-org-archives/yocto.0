Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040BEB64DD
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 06:56:31 +0000 (UTC)
Subject: Remove unwanted packages from core-image-minimal. #distro #kirkstone #yocto
To: yocto@lists.yoctoproject.org
From: vivsundar@gmail.com
X-Originating-Location: Chennai, Tamil Nadu, IN (27.5.114.239)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Jul 2023 21:02:23 -0700
Message-ID: <eqb0.1689220943449112863.Duh4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iIyHRsQ9UuA02TVmBDD9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 06:56:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60562

--iIyHRsQ9UuA02TVmBDD9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi
I am building an image for my custom board.=C2=A0 I use the core-image-mini=
mal and add packages needed by using
>=20
>=20
> IMAGE_INSTALL:append =3D " valgrind"

I add this line in local.conf file so the core-image-minimal gets build wit=
h valgrind in this case.
But the default core-image-minimal also contains
>=20
> dpkg and apt packages

These packages are not needed in my RFS. I tried removing them with:
>=20
> IMAGE_INSTALL:remove =3D " dpkg=C2=A0apt=C2=A0"

But the packages did not get removed.=C2=A0 Can someone point me to the rig=
ht configuration option to remove these packages?

I use kirkstone-5.15 branch for my development.

I also tried adding the following lines to local.conf
DISTRO_FEATURE:remove =3D " dpkg apt"
Even this did not work.

Thanks,

Vivek Sundar T

--iIyHRsQ9UuA02TVmBDD9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi&nbsp;<br />I am building an image for my custom board.&nbsp; I use the c=
ore-image-minimal and add packages needed by using&nbsp;
<blockquote>IMAGE_INSTALL:append =3D " valgrind"</blockquote>
I add this line in local.conf file so the core-image-minimal gets build wit=
h valgrind in this case.&nbsp;<br />But the default core-image-minimal also=
 contains&nbsp;
<blockquote>dpkg and apt packages</blockquote>
These packages are not needed in my RFS. I tried removing them with:&nbsp;
<blockquote>IMAGE_INSTALL:remove =3D " dpkg&nbsp;apt&nbsp;"</blockquote>
But the packages did not get removed.&nbsp; Can someone point me to the rig=
ht configuration option to remove these packages?<br /><br />I use kirkston=
e-5.15 branch for my development.&nbsp;<br /><br />I also tried adding the =
following lines to local.conf<br />DISTRO_FEATURE:remove =3D " dpkg apt"<br=
 />Even this did not work.<br /><br />Thanks,<br /><br />Vivek Sundar T

--iIyHRsQ9UuA02TVmBDD9--

