Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEB62CF259D
	for <webhook@archiver.kernel.org>; Mon, 14 Oct 2024 05:39:31 +0000 (UTC)
Subject: Re: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
To: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.251.105)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 13 Oct 2024 22:39:26 -0700
References: <303.1728768044201363035@lists.yoctoproject.org>
In-Reply-To: <303.1728768044201363035@lists.yoctoproject.org>
Message-ID: <303.1728884366289157353@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Gry0Cvla9CZI0xsAiEi6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Oct 2024 05:39:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64016

--Gry0Cvla9CZI0xsAiEi6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 12, 2024 at 11:20 PM, Aleksandar Nikolic wrote:

>=20
> While writing this, it occurred to me whether we really need to export th=
e
> Deps.cmake file and especially find_package(PkgConfig) line. So I just
> performed two tests: (1) I removed the find_package(PkgConfig) line from
> our Deps.cmake file and (2) I completely removed the export of the
> Deps.cmake file. The result: the Yocto build works in both cases, so I am
> wondering why we even export the Deps.cmake file through Config.cmake...
> Maybe because we also build on Windows/Ubuntu and export our packages wit=
h
> Conan, I'll double check with my colleagues next week.
>=20
>=20

I stand corrected. If I completely remove the export of the Deps.cmake file=
, the build fails because of transient calls in cmake Macros/Function. For =
example project A calls macroB() defined in project B, while macroB() furth=
er calls macroC() defined in project C. So if BConfig.cmake (which is inclu=
ded by A) does not contain find_package(C) (which it would if exporting Dep=
s.cmake which contains that call), building A fails, because macroC() is no=
t defined, as no one calls find_package(C)-

>=20
>=20
> Aleksandar
>=20
>=20
>> Alex
>=20
>=20
>

--Gry0Cvla9CZI0xsAiEi6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Sat, Oct 12, 2024 at 11:20 PM, Aleksandar Nikolic wrote:</div>
<div>
<blockquote>
<div>While writing this, it occurred to me whether we really need to export=
 the Deps.cmake file and especially find_package(PkgConfig) line. So I just=
 performed two tests: (1) I removed the find_package(PkgConfig) line from o=
ur Deps.cmake file and (2) I completely removed the export of the Deps.cmak=
e file. The result: the Yocto build works in both cases, so I am wondering =
why we even export the Deps.cmake file through Config.cmake... Maybe becaus=
e we also build on Windows/Ubuntu and export our packages with Conan, I'll =
double check with my colleagues next week.</div>
<div>&nbsp;</div>
</blockquote>
I stand corrected. If I completely remove the export of the Deps.cmake file=
, the build fails because of transient calls in cmake Macros/Function. For =
example project A calls macroB() defined in project B, while macroB() furth=
er calls macroC() defined in project C. So if BConfig.cmake (which is inclu=
ded by A) does not contain find_package(C) (which it would if exporting Dep=
s.cmake which contains that call), building A fails, because macroC() is no=
t defined, as no one calls find_package(C)-&nbsp;</div>
<div><br />
<blockquote>
<div>&nbsp;</div>
<div>Aleksandar</div>
<div><br />
<blockquote>Alex</blockquote>
</div>
</blockquote>
</div>

--Gry0Cvla9CZI0xsAiEi6--

