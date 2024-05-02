Return-Path: <ruom9900@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87730C4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 13:00:06 +0000 (UTC)
Subject: Adding extra pam modules to the image #debian #kirkstone #poky #yocto
To: yocto@lists.yoctoproject.org
From: ruom9900@gmail.com
X-Originating-Location: Doha, Baladiyat ad Dawhah, QA (89.211.185.109)
X-Originating-Platform: Mac Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 May 2024 05:59:41 -0700
Message-ID: <teIu.1714654781553005811.LEju@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KBwvq0gzTsQlVZvvS5pO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 13:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63021

--KBwvq0gzTsQlVZvvS5pO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm new to yocto, I'm trying to add the 'pwquality' pam module to the image=
 but I'm struggling with it, initially I have added this line to the local.=
conf file:

>=20
>=20
>=20
> DISTRO_FEATURES:append =3D " pam"
>=20
>=20

which added pam and some modules but the module that i want which is 'pwqua=
lity' was not part of the installed modules, any idea how to add it?

--KBwvq0gzTsQlVZvvS5pO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm new to yocto, I'm trying to add the 'pwquality' pam module to the im=
age but I'm struggling with it, initially I have added this line to the loc=
al.conf file:</p>
<blockquote>
<p>DISTRO_FEATURES:append =3D " pam"</p>
</blockquote>
<p>which added pam and some modules but the module that i want which is 'pw=
quality' was not part of the installed modules, any idea how to add it? &nb=
sp;</p>

--KBwvq0gzTsQlVZvvS5pO--

