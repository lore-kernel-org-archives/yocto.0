Return-Path: <ashujoshi35@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 041FBC54E67
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 14:41:07 +0000 (UTC)
Subject: No module named pkgconfig
To: yocto@lists.yoctoproject.org
From: ashujoshi35@gmail.com
X-Originating-Location: US (136.226.232.163)
X-Originating-Platform: Windows Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 14 Mar 2024 07:40:57 -0700
Message-ID: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="w7Z6apsW3YGufiKC4YjL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 14:41:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62762

--w7Z6apsW3YGufiKC4YjL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to install wirepas_gateway package from pypi. It fails with error no=
 module named pkgconfig. Below is the error

File "setup.py", line 17, in <module>
|=C2=A0 =C2=A0 =C2=A0import pkgconfig
| ModuleNotFoundError: No module named 'pkgconfig'

SUMMARY =3D "Recipe to install Python PiP Package wirepas_gateway"
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e9f4d8=
"

inherit pypi setuptools3
PYPI_PACKAGE =3D "wirepas_gateway"
SRC_URI[md5sum] =3D "941a4407513445c64f16b57a1474fc43"

It is not able to locate pkgconfig. tried to export the path as found in on=
e of the link using below, even that didn't worked out:
export PKG_CONFIG =3D "${STAGING_BINDIR_NATIVE}/pkg-config"

Any idea how to make pkgconfig available to the setup.py file

--w7Z6apsW3YGufiKC4YjL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to install wirepas_gateway package from pypi. It fails with error no=
 module named pkgconfig. Below is the error<br /><br />
<div>File "setup.py", line 17, in &lt;module&gt;</div>
<div>|&nbsp; &nbsp; &nbsp;import pkgconfig</div>
<div>| ModuleNotFoundError: No module named 'pkgconfig'</div>
<br />
<div>SUMMARY =3D "Recipe to install Python PiP Package wirepas_gateway"</di=
v>
<div>LICENSE =3D "Apache-2.0"</div>
<div>LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e=
9f4d8"</div>
<div>&nbsp;</div>
<div>inherit pypi setuptools3</div>
<div>PYPI_PACKAGE =3D "wirepas_gateway"</div>
<div>SRC_URI[md5sum] =3D "941a4407513445c64f16b57a1474fc43"<br /><br />It i=
s not able to locate pkgconfig. tried to export the path as found in one of=
 the link using below, even that didn't worked out:<br />export PKG_CONFIG =
=3D "${STAGING_BINDIR_NATIVE}/pkg-config"<br /><br />Any idea how to make p=
kgconfig available to the setup.py file</div>
<div>&nbsp;</div>

--w7Z6apsW3YGufiKC4YjL--

