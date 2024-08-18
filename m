Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 770BDC52D7C
	for <webhook@archiver.kernel.org>; Sun, 18 Aug 2024 08:03:28 +0000 (UTC)
Subject: Re: [yocto] Custom package and splitting issue with the kirkstone
To: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>, yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 18 Aug 2024 01:03:20 -0700
References: <rQ2Y.1723925350713175612.bBia@lists.yoctoproject.org>
In-Reply-To: <rQ2Y.1723925350713175612.bBia@lists.yoctoproject.org>
Message-ID: <23984.1723968200998722311@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JwgjTjzjsFyO8tHhI4FS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Aug 2024 08:03:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63718

--JwgjTjzjsFyO8tHhI4FS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You have to separate the installation directory

>=20
> # Define the installation steps
> do_install() {
> install -d ${D}${datadir}/mydir
> install -m 0644 readme.txt ${D}${datadir}/mydir
>=20
> install -d ${D}${datadir}/mydirtest
> install -m 0644 readme.txt ${D}${datadir}/mydirtest
> }
> # Ensure the files are split correctly between packages
> FILES:${PN} +=3D "${datadir}/mydir/readme.txt"
> FILES:${PN}-test +=3D "${datadir}/mydirtest/readme.txt"
>=20

--
Marco Cavallini | KOAN sas
Bergamo - Italia
embedded software engineering
https://KoanSoftware.com

--JwgjTjzjsFyO8tHhI4FS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>You have to separate the installation directory</div>
<div>&nbsp;</div>
<blockquote>
<div>
<div># Define the installation steps<br />do_install() {<br />&nbsp; &nbsp;=
 install -d ${D}${datadir}/mydir<br />&nbsp; &nbsp; install -m 0644 readme.=
txt ${D}${datadir}/mydir<br />&nbsp; &nbsp;&nbsp;<br />&nbsp; &nbsp; instal=
l -d ${D}${datadir}/mydirtest<br />&nbsp; &nbsp; install -m 0644 readme.txt=
 ${D}${datadir}/mydirtest<br />}</div>
<div># Ensure the files are split correctly between packages<br />FILES:${P=
N} +=3D "${datadir}/mydir/readme.txt"<br />FILES:${PN}-test +=3D "${datadir=
}/mydirtest/readme.txt"</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div>--<br />Marco Cavallini | KOAN sas<br />Bergamo - Italia<br />embedded=
 software engineering<br /><a href=3D"https://KoanSoftware.com" target=3D"_=
blank" rel=3D"noopener">https://KoanSoftware.com</a></div>
<div>&nbsp;</div>

--JwgjTjzjsFyO8tHhI4FS--

