Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04D37C4345F
	for <webhook@archiver.kernel.org>; Thu, 18 Apr 2024 08:50:12 +0000 (UTC)
Subject: Re: [yocto] Implicit RPROVIDES somewhere ?
To: "Quentin Schulz" <quentin.schulz@theobroma-systems.com>, yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: FR (37.66.58.207)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 18 Apr 2024 01:50:02 -0700
References: <0b73263e-6a9d-4c89-be79-b3644c9e02a9@theobroma-systems.com>
In-Reply-To: <0b73263e-6a9d-4c89-be79-b3644c9e02a9@theobroma-systems.com>
Message-ID: <5531.1713430202698837297@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9vE2u4uxI8ymC7lEJmYx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Apr 2024 08:50:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62959

--9vE2u4uxI8ymC7lEJmYx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Quentin,

Yes not uncommon setup except my prebuilt libraries don't match the initial=
 expectations:
1. The filename must have the version appended, for example: libbar.so.1.2.=
3. (can be easily renamed by the way)
2.=C2=A0The library must have the ELF tag SONAME set to the major version o=
f the library, for example: libbar.so.1. (it has no SONAME at all and it's =
not possible to have it, and not wanted to patch the library before using i=
t to build libfoo).

My customer don't want me to add the bar libraries in the rootfs. he ask me=
 to add only the foo libraries, for both architectures aarch64 and arm. Yes=
 I have bar libraries pre-compiled for both aarch64 and arm too. So this is=
 lib32-bar and bar.

>=20
> I assume that the automagic RDEPENDS got broken for lib32-foo and you are
> not seeing it because of INSANE_SKIP:${PN} +=3D "file-rdeps"
> It's probably trying to locate a multilib lib32 package containing
> libbar.so but cannot find any and complains about it. The aarch64 package
> does find a package for libbar.so so it adds it automatically.
>=20

Interesting remark. Maybe I have to play with the INSANE_SKIP(s).
So the "file-rdeps" skip breaks the RDEPENDS on lib32-foo, which permit me =
to not integrate lib32-bar in the rootfs (what I want), but it's maybe not =
working with aarch64 ? Is there a "aarch64-file-rdeps" or similar (I don't =
think so) that could help to break the RDEPENDS of my library foo on the li=
brary bar ?

Joel

--9vE2u4uxI8ymC7lEJmYx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Quentin,<br /><br />Yes not uncommon setup except my prebuilt librari=
es don't match the initial expectations:<br />1. The filename must have the=
 version appended, for example: libbar.so.1.2.3. (can be easily renamed by =
the way)<br />2.&nbsp;The library must have the ELF tag SONAME set to the m=
ajor version of the library, for example: libbar.so.1. (it has no SONAME at=
 all and it's not possible to have it, and not wanted to patch the library =
before using it to build libfoo).<br /><br />My customer don't want me to a=
dd the bar libraries in the rootfs. he ask me to add only the foo libraries=
, for both architectures aarch64 and arm. Yes I have bar libraries pre-comp=
iled for both aarch64 and arm too. So this is lib32-bar and bar.<br /><br /=
>
<blockquote><span style=3D"white-space-collapse: preserve;">I assume that t=
he automagic RDEPENDS got broken for lib32-foo and you are not seeing it be=
cause of</span><span style=3D"white-space-collapse: preserve;">INSANE_SKIP:=
${PN} +=3D "file-rdeps"<br /></span><span style=3D"white-space-collapse: pr=
eserve;">It's probably trying to locate a multilib lib32 package containing=
 libbar.so but cannot find any and complains about it. The aarch64 package =
does find a package for libbar.so so it adds it automatically.<br /></span>=
</blockquote>
Interesting remark. Maybe I have to play with the INSANE_SKIP(s).<br />So t=
he "file-rdeps" skip breaks the RDEPENDS on lib32-foo, which permit me to n=
ot integrate lib32-bar in the rootfs (what I want), but it's maybe not work=
ing with aarch64 ? Is there a "aarch64-file-rdeps" or similar (I don't thin=
k so) that could help to break the RDEPENDS of my library foo on the librar=
y bar ?<br /><br />Joel

--9vE2u4uxI8ymC7lEJmYx--

