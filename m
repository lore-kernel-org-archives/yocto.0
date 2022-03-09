Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3804EC433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 12:49:48 +0000 (UTC)
Subject: Re: Howto build packages for dependencies of an out of image recipe
 build.
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Mar 2022 04:49:47 -0800
References: 
 <CADkTA4OdRRtb=AbFt2ed2JHkbbBX86yUpH2Av6huRXsfVVJRLg@mail.gmail.com>
In-Reply-To: 
 <CADkTA4OdRRtb=AbFt2ed2JHkbbBX86yUpH2Av6huRXsfVVJRLg@mail.gmail.com>
Message-ID: <3501.1646830187806955501@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="q7OEmrbzM84A3DIBfC5U"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 12:49:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56406

--q7OEmrbzM84A3DIBfC5U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yes, in RDPENDS, here's an example of an attempt at the equivalent of Ubunt=
u's build-essential package:

DESCRIPTION =3D "Informational list of build-essential pacakages"

inherit packagegroup

PACKAGES =3D "\
${PN} \
"

RDEPENDS:${PN} =3D "\
libc6-dev \
g++ \
gcc \
make \
"

INSANE_SKIP:${PN} =3D "dev-deps"

--q7OEmrbzM84A3DIBfC5U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"line-height: 1.42857;">Yes, in RDPENDS, here's an example of =
an attempt at the equivalent of Ubuntu's build-essential package:<br /><br =
/>DESCRIPTION =3D "Informational list of build-essential pacakages"</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">inherit packagegroup</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">PACKAGES =3D "\</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; ${PN} \</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; "</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">RDEPENDS:${PN} =3D "\</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; libc6-dev \</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; g++ \</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; gcc \</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; make \</div>
<div style=3D"line-height: 1.42857;">&nbsp; &nbsp; "</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">INSANE_SKIP:${PN} =3D "dev-deps"</div>

--q7OEmrbzM84A3DIBfC5U--

