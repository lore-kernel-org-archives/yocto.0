Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CF57C04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 10:37:43 +0000 (UTC)
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 May 2024 03:37:34 -0700
References: <74C61590-150A-46AF-BC48-98C18C756BAC@arm.com>
In-Reply-To: <74C61590-150A-46AF-BC48-98C18C756BAC@arm.com>
Message-ID: <31804.1715683054202213560@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4N5pdoDWj0FLa5I5REMI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 10:37:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63091

--4N5pdoDWj0FLa5I5REMI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 14, 2024 at 02:37 AM, Ross Burton wrote:

>=20
> On 14 May 2024, at 08:55, Altous, Salahaldeen via lists.yoctoproject.org
> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
>> Hi All,
>> I have one yocto recipe which is using libsqlite3, the compile task is O=
K
>> but I got this error with do_package_qa
>> /usr/lib/libexample.so.0.2.3 contained in package example requires
>> libsqlite3.so()(64bit), but no providers found in RDEPENDS:example.?
>> [file-rdeps]
>>=20
>> I have added this to the example recipe RDEPENDS but still the problem i=
s
>> not solved, any idea?
>> DEPENDS +=3D " sqlite3"
>> RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit)=E2=80=9D
>=20
> Does this recipe contain precompiled binaries?

No, I build this example library as shared lib from source

>=20
> Ross

Regards,

Salah

--4N5pdoDWj0FLa5I5REMI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 14, 2024 at 02:37 AM, Ross Burton wrote:<br />
<blockquote>On 14 May 2024, at 08:55, Altous, Salahaldeen via lists.yoctopr=
oject.org &lt;Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org&=
gt; wrote:<br />
<blockquote>Hi All,<br />I have one yocto recipe which is using libsqlite3,=
 the compile task is OK but I got this error with do_package_qa<br />/usr/l=
ib/libexample.so.0.2.3 contained in package example requires libsqlite3.so(=
)(64bit), but no providers found in RDEPENDS:example.? [file-rdeps]<br /><b=
r />I have added this to the example recipe RDEPENDS but still the problem =
is not solved, any idea?<br />DEPENDS +=3D " sqlite3"<br />RDEPENDS_${PN} +=
=3D " libsqlite3.so()(64bit)&rdquo;</blockquote>
Does this recipe contain precompiled binaries?</blockquote>
No, I build this example library as shared lib from source<br />
<blockquote>Ross</blockquote>
<p>Regards,</p>
<p>Salah</p>

--4N5pdoDWj0FLa5I5REMI--

