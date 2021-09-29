Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04FD4C433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 08:15:06 +0000 (UTC)
Subject: Re: [meta-security][PATCH] swtpm: update to 0.6.1
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (2.31.202.61)
X-Originating-Platform: Mac Firefox 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Sep 2021 01:15:05 -0700
References: <9f763258-1486-4d52-5047-a60e4a612a71@gmail.com>
In-Reply-To: <9f763258-1486-4d52-5047-a60e4a612a71@gmail.com>
Message-ID: <27672.1632903305135755561@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dX3EYmijH38wxyITbNV5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 08:15:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54905

--dX3EYmijH38wxyITbNV5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This recipe fails because of the wrong format in "PACKAGECONFIG[gnutls] =3D=
 "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-=
tools"

There should be only four parts in the line separated by commas as defined =
here https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.html#var=
-PACKAGECONFIG

--dX3EYmijH38wxyITbNV5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>This recipe fails because of the wrong format in "PACKAGECONFIG[gnutls] =
=3D "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs=
11-tools"</p>
<p>There should be only four parts in the line separated by commas as defin=
ed here <a href=3D"https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-m=
anual.html#var-PACKAGECONFIG" target=3D"_blank" rel=3D"noopener">https://ww=
w.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.html#var-PACKAGECONFIG<=
/a></p>
<p>&nbsp;</p>

--dX3EYmijH38wxyITbNV5--

