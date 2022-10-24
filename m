Return-Path: <poberauer@yahoo.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FB3FA373E
	for <webhook@archiver.kernel.org>; Mon, 24 Oct 2022 11:58:17 +0000 (UTC)
Subject: Re: other ways of removing GPLv3 components (than meta-gplv2) #gplv3
To: yocto@lists.yoctoproject.org
From: "Peter" <poberauer@yahoo.co.uk>
X-Originating-Location: Salisbury, England, GB (217.39.183.102)
X-Originating-Platform: Linux Firefox 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 24 Oct 2022 04:58:13 -0700
References: <CANNYZj9ar+z=m-G-76bi0icLac1wLfHw++9zpWaMC=3n1uz=Ag@mail.gmail.com>
In-Reply-To: <CANNYZj9ar+z=m-G-76bi0icLac1wLfHw++9zpWaMC=3n1uz=Ag@mail.gmail.com>
Message-ID: <850.1666612693829888716@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cV15U1bDrNZx2e0rnXJa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Oct 2022 11:58:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58397

--cV15U1bDrNZx2e0rnXJa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex and Michael

Thank you very much, that worked for core-image-minimal and core-image-west=
on, with kirkstone-4.0.4

For core-image-weston, copying the "Settings for weston" from incompatible_=
lic.py#n149 ( https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest=
/cases/incompatible_lic.py#n149 ) works.
And core-image-minimal works automatically with just INCOMPATIBLE_LICENSE:p=
n-core-image-minimal =3D "GPL-3.0* LGPL-3.0* AGPL-3.0*"

Whereas, the global ban produced errors e.g.:
INCOMPATIBLE_LICENSE =3D "GPL-3.0* LGPL-3.0* AGPL-3.0*"
...
ERROR: Nothing RPROVIDES 'bash' (but /workdir/poky/poky/meta/recipes-devtoo=
ls/opkg-utils/opkg-utils_0.5.0.bb, /workdir/poky/poky/meta/recipes-devtools=
/python/python3_3.10.4.bb RDEPENDS on or otherwise requires it)
Missing or unbuildable dependency chain was: ['core-image-minimal', 'packag=
egroup-core-boot', 'update-alternatives-opkg', 'bash']

However, the documentation recommends the global ban and does not mention t=
he per-image variant?
https://docs.yoctoproject.org/ref-manual/images.html
https://docs.yoctoproject.org/ref-manual/variables.html#term-INCOMPATIBLE_L=
ICENSE

Out of curiosity, why does the per image variant work, but not the global b=
an?
And how should one know to use the pn- prefix? i.e.
this: INCOMPATIBLE_LICENSE:pn-core-image-minimal
not this: INCOMPATIBLE_LICENSE:core-image-minimal?

Thank you
-- Peter

--cV15U1bDrNZx2e0rnXJa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Alex and Michael<br /><br />Thank you very much, that worked for core=
-image-minimal and core-image-weston, with kirkstone-4.0.4<br /><br />For c=
ore-image-weston, copying the "Settings for weston" from <a href=3D"https:/=
/git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cases/incompatible_l=
ic.py#n149" target=3D"_blank" rel=3D"noopener">incompatible_lic.py#n149</a>=
 works.<br />And core-image-minimal works automatically with just INCOMPATI=
BLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3.0* AGPL-3.0*"<br /><=
br />Whereas, the global ban produced errors e.g.:<br />INCOMPATIBLE_LICENS=
E =3D "GPL-3.0* LGPL-3.0* AGPL-3.0*"<br />...<br />ERROR: Nothing RPROVIDES=
 'bash' (but /workdir/poky/poky/meta/recipes-devtools/opkg-utils/opkg-utils=
_0.5.0.bb, /workdir/poky/poky/meta/recipes-devtools/python/python3_3.10.4.b=
b RDEPENDS on or otherwise requires it)<br />Missing or unbuildable depende=
ncy chain was: ['core-image-minimal', 'packagegroup-core-boot', 'update-alt=
ernatives-opkg', 'bash']<br /><br />However, the documentation recommends t=
he global ban and does not mention the per-image variant?<br /><a href=3D"h=
ttps://docs.yoctoproject.org/ref-manual/images.html" target=3D"_blank" rel=
=3D"noopener">https://docs.yoctoproject.org/ref-manual/images.html</a><br /=
><a href=3D"https://docs.yoctoproject.org/ref-manual/variables.html#term-IN=
COMPATIBLE_LICENSE" target=3D"_blank" rel=3D"noopener">https://docs.yoctopr=
oject.org/ref-manual/variables.html#term-INCOMPATIBLE_LICENSE</a><br /><br =
/>Out of curiosity, why does the per image variant work, but not the global=
 ban?<br />And how should one know to use the pn- prefix? i.e. <br />this: =
INCOMPATIBLE_LICENSE:pn-core-image-minimal<br />not this: INCOMPATIBLE_LICE=
NSE:core-image-minimal?<br /><br />Thank you<br />-- Peter</p>

--cV15U1bDrNZx2e0rnXJa--

