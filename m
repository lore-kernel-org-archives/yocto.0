Return-Path: <miriam.rico@enigmedia.es>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B2A4C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 07:20:09 +0000 (UTC)
Subject: Re: [yocto] Yocto Kirkstone VPP compilation
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: miriam.rico@enigmedia.es
X-Originating-Location: FR (193.70.58.171)
X-Originating-Platform: Linux Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Feb 2024 23:20:08 -0800
References: <1599BD52-3B26-4688-A82A-F1AC31369B67@arm.com>
In-Reply-To: <1599BD52-3B26-4688-A82A-F1AC31369B67@arm.com>
Message-ID: <21276.1709018408156858522@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="d5CWVFFZSas4zyMzPxX4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 07:20:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62618

--d5CWVFFZSas4zyMzPxX4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you for your reply. I already tried to use cmake instead of autotools=
 but the error I got was that there was no CMakeLists for the compilation.

Then I tried to set:
>=20
>=20
> OECMAKE_GENERATOR =3D "Unix Makefiles"
>=20

But another error appears:

>=20
> Error: Unsupported flag --build=3Dx86_64-linux
>=20

I think the only option is to use autotools and see if the problems can be =
solved.

--d5CWVFFZSas4zyMzPxX4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />Thank you for your reply. I already tried to use cmake inste=
ad of autotools but the error I got was that there was no CMakeLists for th=
e compilation. <br /><br />Then I tried to set:
<blockquote><span class=3D"n" style=3D"font-family: SFMono-Regular, Menlo, =
Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, monospace; fon=
t-size: 12px;"><br />OECMAKE_GENERATOR</span><span style=3D"background-colo=
r: #f5f5f5; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberati=
on Mono', 'Courier New', Courier, monospace; font-size: 12px;"> </span><spa=
n class=3D"o" style=3D"font-family: SFMono-Regular, Menlo, Monaco, Consolas=
, 'Liberation Mono', 'Courier New', Courier, monospace; font-size: 12px; co=
lor: #666666;">=3D</span><span style=3D"background-color: #f5f5f5; font-fam=
ily: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier N=
ew', Courier, monospace; font-size: 12px;"> </span><span class=3D"s2" style=
=3D"font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono'=
, 'Courier New', Courier, monospace; font-size: 12px; color: #ba2121;">"Uni=
x Makefiles"<br /></span></blockquote>
But another error appears:<br />
<blockquote><span class=3D"s2" style=3D"font-family: SFMono-Regular, Menlo,=
 Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, monospace; fo=
nt-size: 12px; color: #ba2121;"><span style=3D"color: #000000;"><span style=
=3D"color: #ba2121; font-family: SFMono-Regular, Menlo, Monaco, Consolas, L=
iberation Mono, Courier New, Courier, monospace;"><span style=3D"font-size:=
 12px;">Error: Unsupported flag --build=3Dx86_64-linux<br /></span></span><=
/span></span></blockquote>
I think the only option is to use autotools and see if the problems can be =
solved.<br /><span class=3D"s2" style=3D"font-family: SFMono-Regular, Menlo=
, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, monospace; f=
ont-size: 12px; color: #ba2121;"></span>

--d5CWVFFZSas4zyMzPxX4--

