Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58868C25B75
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 07:56:00 +0000 (UTC)
Subject: requires libsqlite3.so()(64bit), but no providers found in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 May 2024 00:55:58 -0700
Message-ID: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tHf7KLxbeKdY0eUWEnCO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 07:56:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63083

--tHf7KLxbeKdY0eUWEnCO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I have one yocto recipe which is using libsqlite3, the compile task is OK b=
ut I got this error with do_package_qa

/usr/lib/libexample.so.0.2.3 contained in package example requires libsqlit=
e3.so()(64bit), but no providers found in RDEPENDS:example.? [file-rdeps]

I have added this to the example recipe RDEPENDS but still the problem is n=
ot solved, any idea?

DEPENDS +=3D " sqlite3"
RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit)"

Regards,

Salahaldeen

--tHf7KLxbeKdY0eUWEnCO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p>
<p>I have one yocto recipe which is using libsqlite3, the compile task is O=
K but I got this error with do_package_qa</p>
<p>/usr/lib/libexample.so.0.2.3 contained in package example requires libsq=
lite3.so()(64bit), but no providers found in RDEPENDS:example.? [file-rdeps=
]</p>
<p>&nbsp;</p>
<p>I have added this to the example recipe RDEPENDS but still the problem i=
s not solved, any idea?</p>
<p>DEPENDS +=3D " sqlite3"<br />RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit=
)"</p>
<p>&nbsp;</p>
<p>Regards,</p>
<p>Salahaldeen</p>

--tHf7KLxbeKdY0eUWEnCO--

