Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D6F7C10F15
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 08:16:39 +0000 (UTC)
Subject: Re: [yocto] Installing Multiple Versions of the Same Library with a single recipe
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Apr 2024 01:16:33 -0700
References: <CANNYZj__fSRwHRNhg8pL3wr8C7GK5RHxMymLgvzBXyOobVocbQ@mail.gmail.com>
In-Reply-To: <CANNYZj__fSRwHRNhg8pL3wr8C7GK5RHxMymLgvzBXyOobVocbQ@mail.gmail.com>
Message-ID: <25936.1714032993891718853@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="20TkSF87SiW6q1GgeDPW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 08:16:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63000

--20TkSF87SiW6q1GgeDPW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex

On Thu, Apr 25, 2024 at 12:29 AM, Alexander Kanavin wrote:

>=20
> You should find out why people want same that library in different
> versions in the first place. This indicates some kind of dysfunction
> in the product development process.

the reason behind that, that this company have one external module which de=
velopment in the past with an early version of this library and currently t=
here is a new module which developed with the new version.

I know the right way is to rewrite the old module with the new lib version =
but for some reasons (no access to source code/no resources!!) this company=
 want to reuse the old module as it is.

Salah

>=20
>=20
> Alex
>=20
> On Wed, 24 Apr 2024 at 16:59, Altous, Salahaldeen via
> lists.yoctoproject.org
> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
>> Hi,
>>=20
>> can I install Multiple Versions of the Same shared Library with single
>> recipe? by provide different tag
>>=20
>> or should i make a new recipe for every lib version?
>>=20
>> Regards,
>>=20
>> Salahaldeen
>>=20
>>=20
>>=20
>=20
>

--20TkSF87SiW6q1GgeDPW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Alex</p>
<p>On Thu, Apr 25, 2024 at 12:29 AM, Alexander Kanavin wrote:</p>
<blockquote>You should find out why people want same that library in differ=
ent<br />versions in the first place. This indicates some kind of dysfuncti=
on<br />in the product development process.</blockquote>
<p>the reason behind that, that this company have one external module which=
 development in the past with an early version of this library and currentl=
y there is a new module which developed with the new version.</p>
<p>I know the right way is to rewrite the old module with the new lib versi=
on but for some reasons (no access to source code/no resources!!) this comp=
any want to reuse the old module as it is.</p>
<p>Salah</p>
<blockquote><br />Alex<br /><br />On Wed, 24 Apr 2024 at 16:59, Altous, Sal=
ahaldeen via<br />lists.yoctoproject.org<br />&lt;Salahaldeen.Altous=3Dleic=
a-camera.com@lists.yoctoproject.org&gt; wrote:<br />
<blockquote>Hi,<br /><br />can I install Multiple Versions of the Same shar=
ed Library with single recipe? by provide different tag<br /><br />or shoul=
d i make a new recipe for every lib version?<br /><br />Regards,<br /><br /=
>Salahaldeen<br /><br /><br /></blockquote>
</blockquote>

--20TkSF87SiW6q1GgeDPW--

