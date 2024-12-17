Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE39FE7717F
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 14:25:18 +0000 (UTC)
Subject: Re: [yocto] Building wmbusmeters with Yocto
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Daniel Kampert" <kontakt@daniel-kampert.de>
X-Originating-Location: Munich, Bavaria, DE (88.217.175.74)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Dec 2024 06:25:14 -0800
References: <00D01491-DA14-4808-93F5-E08DD1E55F95@arm.com>
In-Reply-To: <00D01491-DA14-4808-93F5-E08DD1E55F95@arm.com>
Message-ID: <13203.1734445514336837198@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BkChN3WxFoSKron0JOSt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 14:25:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64459

--BkChN3WxFoSKron0JOSt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

thanks. After changing it I got the error

>=20
> fatal error: unicode/ucnv.h: No such file or directory
>=20
>=20

So I had to add "icu" as dependency. The complete recipe looks like this

inherit autotools-brokensep

SUMMARY =3D "wmbusmeters integration"
HOMEPAGE =3D "https://github.com/wmbusmeters/wmbusmeters"

LICENSE =3D "GPLv3"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-3.0;md5=3Dc79ff39f19=
dfec6d293b95dea7b07891"

# Use version 1.18.0
SRC_URI =3D "git://github.com/wmbusmeters/wmbusmeters;protocol=3Dhttps;bran=
ch=3Dmaster"
SRC_URI[sha256sum] =3D "57ecd94793ba5c985dc412876253a7b0d8a006f0c8e440f1b1f=
146d4c30da2b7"
SRCREV =3D "2f2720d9d8e043304a366d11d933be9d535e17a5"

DEPENDS =3D "rtlsdr icu"
RDEPENDS_${PN} =3D "rtlsdr icu"

S =3D "${WORKDIR}/git"

FILES_${PN} +=3D " ${systemd_system_unitdir}/wmbusmeters.service"

Now I get this error

>=20
> QA Issue: File '/usr/bin/wmbusmeters' from wmbusmeters was already
> stripped, this will prevent future debugging!
>

--BkChN3WxFoSKron0JOSt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Ross,</div>
<div>&nbsp;</div>
<div>thanks. After changing it I got the error&nbsp;</div>
<blockquote>
<div>fatal error: unicode/ucnv.h: No such file or directory</div>
<div>&nbsp;</div>
</blockquote>
<div>So I had to add "icu" as dependency. The complete recipe looks like th=
is</div>
<div>&nbsp;</div>
<div>
<div>inherit autotools-brokensep</div>
<div>&nbsp;</div>
<div>SUMMARY =3D "wmbusmeters integration"<br />HOMEPAGE =3D "https://githu=
b.com/wmbusmeters/wmbusmeters"</div>
<div>&nbsp;</div>
<div>LICENSE =3D "GPLv3"<br />LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE=
_DIR}/GPL-3.0;md5=3Dc79ff39f19dfec6d293b95dea7b07891"</div>
<div>&nbsp;</div>
<div># Use version 1.18.0<br />SRC_URI =3D "git://github.com/wmbusmeters/wm=
busmeters;protocol=3Dhttps;branch=3Dmaster"<br />SRC_URI[sha256sum] =3D "57=
ecd94793ba5c985dc412876253a7b0d8a006f0c8e440f1b1f146d4c30da2b7"<br />SRCREV=
 =3D "2f2720d9d8e043304a366d11d933be9d535e17a5"</div>
<div>&nbsp;</div>
<div>DEPENDS =3D "rtlsdr icu"<br />RDEPENDS_${PN} =3D "rtlsdr icu"</div>
<div>&nbsp;</div>
<div>S =3D "${WORKDIR}/git"</div>
<div>&nbsp;</div>
<div>FILES_${PN} +=3D " ${systemd_system_unitdir}/wmbusmeters.service"</div=
>
<div>&nbsp;</div>
<div>Now I get this error</div>
<div>&nbsp;</div>
<blockquote>
<div>&nbsp;QA Issue: File '/usr/bin/wmbusmeters' from wmbusmeters was alrea=
dy stripped, this will prevent future debugging!&nbsp;</div>
</blockquote>
</div>

--BkChN3WxFoSKron0JOSt--

