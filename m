Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89244C41513
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 09:10:40 +0000 (UTC)
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 May 2024 02:10:38 -0700
References: <CANNYZj_nzmmCVt5U+pbHbCGCPBSxPAkDj3jowKOhAW8g_7aVLA@mail.gmail.com>
In-Reply-To: <CANNYZj_nzmmCVt5U+pbHbCGCPBSxPAkDj3jowKOhAW8g_7aVLA@mail.gmail.com>
Message-ID: <3449.1715677838777156403@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="04nYwr005PqXImVemQMI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 09:10:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63086

--04nYwr005PqXImVemQMI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Tue, May 14, 2024 at 01:33 AM, Alexander Kanavin wrote:

>=20
> Can you show the complete recipe?
>=20
>=20

inherit component-versions
inherit cmake

SRC_URI =3D "${GIT_URI_YOCTO}${EXT_EXAMPLE_GIT_URI};protocol=3Dssh;branch=
=3D${EXT_EXAMPLE_GIT_BRANCH}"

PV =3D "${SRCREV}+git${SRCPV}"
#SRCREV =3D "${AUTOREV}"
SRCREV =3D "${EXT_EXAMPLE_GIT_TAG}"

S =3D "${WORKDIR}/git"

DEPENDS +=3D " sqlite3"
RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit)"

SKIPTESTS =3D "true"
export SKIPTESTS

EXTRA_OECMAKE +=3D "-DBUILD_SHARED_LIBS=3DON "

Regards,

Salah

>=20
>=20
>=20
> Alex
>=20
> On Tue 14. May 2024 at 9.56, Altous, Salahaldeen via lists.yoctoproject.o=
rg
> ( http://lists.yoctoproject.org ) <Salahaldeen.Altous=3D leica-camera.com=
@lists.yoctoproject.org
> > wrote:
>=20
>>=20
>>=20
>> Hi All,
>>=20
>>=20
>>=20
>> I have one yocto recipe which is using libsqlite3, the compile task is O=
K
>> but I got this error with do_package_qa
>>=20
>>=20
>>=20
>> /usr/lib/libexample.so.0.2.3 contained in package example requires
>> libsqlite3.so()(64bit), but no providers found in RDEPENDS:example.?
>> [file-rdeps]
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> I have added this to the example recipe RDEPENDS but still the problem i=
s
>> not solved, any idea?
>>=20
>>=20
>>=20
>> DEPENDS +=3D " sqlite3"
>> RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit)"
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>>=20
>> Regards,
>>=20
>>=20
>>=20
>> Salahaldeen
>>=20
>>=20
>>=20
>>=20
>=20
>=20
>

--04nYwr005PqXImVemQMI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Alex,</p>
<p>On Tue, May 14, 2024 at 01:33 AM, Alexander Kanavin wrote:</p>
<blockquote>
<div dir=3D"auto">Can you show the complete recipe?</div>
<div dir=3D"auto">&nbsp;</div>
</blockquote>
<p>inherit component-versions<br />inherit cmake<br /><br />SRC_URI =3D "${=
GIT_URI_YOCTO}${EXT_EXAMPLE_GIT_URI};protocol=3Dssh;branch=3D${EXT_EXAMPLE_=
GIT_BRANCH}"<br /><br />PV =3D "${SRCREV}+git${SRCPV}"<br />#SRCREV =3D "${=
AUTOREV}"<br />SRCREV =3D "${EXT_EXAMPLE_GIT_TAG}"<br /><br />S =3D "${WORK=
DIR}/git"<br /><br />DEPENDS +=3D " sqlite3"<br />RDEPENDS_${PN} +=3D " lib=
sqlite3.so()(64bit)"<br /><br />SKIPTESTS =3D "true"<br />export SKIPTESTS<=
br /><br />EXTRA_OECMAKE +=3D "-DBUILD_SHARED_LIBS=3DON "</p>
<p>&nbsp;</p>
<p>Regards,</p>
<p>Salah</p>
<p>&nbsp;</p>
<blockquote>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">Alex</div>
<div><br />
<div class=3D"gmail_quote">
<div class=3D"gmail_attr" dir=3D"ltr">On Tue 14. May 2024 at 9.56, Altous, =
Salahaldeen via <a href=3D"http://lists.yoctoproject.org">lists.yoctoprojec=
t.org</a> &lt;Salahaldeen.Altous=3D<a href=3D"mailto:leica-camera.com@lists=
.yoctoproject.org">leica-camera.com@lists.yoctoproject.org</a>&gt; wrote:</=
div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; borde=
r-left-width: 1px; border-left-style: solid; padding-left: 1ex; border-left=
-color: #cccccc;">
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
<br /><br /></blockquote>
</div>
</div>
</blockquote>

--04nYwr005PqXImVemQMI--

