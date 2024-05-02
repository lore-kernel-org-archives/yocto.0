Return-Path: <ruom9900@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88D3C25B5C
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 13:32:46 +0000 (UTC)
Subject: Re: [yocto] Adding extra pam modules to the image #debian #kirkstone #poky #yocto
To: f.louveau@lacroix.group, yocto@lists.yoctoproject.org
From: ruom9900@gmail.com
X-Originating-Location: Doha, Baladiyat ad Dawhah, QA (89.211.185.109)
X-Originating-Platform: Mac Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 May 2024 06:32:40 -0700
References: <2135.1714655091682548141@lists.yoctoproject.org>
In-Reply-To: <2135.1714655091682548141@lists.yoctoproject.org>
Message-ID: <2135.1714656760666897052@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6ZSv9skTeFzEWfJX1Wx4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 13:32:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63024

--6ZSv9skTeFzEWfJX1Wx4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you, I have just tried adding this line of code, but the module is st=
ill not installed for me.
DISTRO_FEATURES:append =3D " libpwquality ( https://layers.openembedded.org=
/layerindex/recipe/68564/ ) "

--6ZSv9skTeFzEWfJX1Wx4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"forcebreak" dir=3D"auto">Thank you, I have just tried adding =
this line of code, but the module is still not installed for me.</div>
<span></span><span>DISTRO_FEATURES:append =3D "&nbsp;</span><a href=3D"http=
s://layers.openembedded.org/layerindex/recipe/68564/" target=3D"_blank" rel=
=3D"nofollow noopener">libpwquality</a><span>"</span>

--6ZSv9skTeFzEWfJX1Wx4--

