Return-Path: <oobitots@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCACDEB64D9
	for <webhook@archiver.kernel.org>; Tue,  4 Jul 2023 11:41:28 +0000 (UTC)
Subject: Re: File magic/sdk relocation
To: yocto@lists.yoctoproject.org
From: "Oleksiy Obitotskyy" <oobitots@cisco.com>
X-Originating-Location: Bagshot, England, GB (64.103.40.23)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 04 Jul 2023 04:41:25 -0700
References: <CANNYZj_afvzRhqwtS5axmkffaBKRvaOZKYSdCgO76F6G8jKX1A@mail.gmail.com>
In-Reply-To: <CANNYZj_afvzRhqwtS5axmkffaBKRvaOZKYSdCgO76F6G8jKX1A@mail.gmail.com>
Message-ID: <13866.1688470885605260345@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hlbCoxo0ulyxg7k27DG8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 11:41:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60511

--hlbCoxo0ulyxg7k27DG8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander.

We already use temporary fix, like:
>=20
>=20
> diff --git a/meta/recipes-devtools/file/file_5.44.bb
> b/meta/recipes-devtools/file/file_5.44.bb
> index 3090d346ed..3a23e7721d 100644
> --- a/meta/recipes-devtools/file/file_5.44.bb
> +++ b/meta/recipes-devtools/file/file_5.44.bb
> @@ -45,10 +45,8 @@ do_install:append:class-native() {
> }
>=20
> do_install:append:class-nativesdk() {
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${D}${SDKPATHNATIVE}/envir=
onment-setup.d
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat <<- EOF > ${D}${SDKPATHNATIVE}/=
environment-setup.d/file.sh
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 export
> MAGIC=3D"$OECORE_NATIVE_SYSROOT${datadir}/misc/magic.mgc"
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 EOF
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 create_cmdline_wrapper ${D}/${bindi=
r}/file \
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --magic-file ${datadir}/misc/magic.mgc
> }

I would like to ask if it possible to have in upstream both MAGIC variable =
exported and wrapper for file.
If another binaries use MAGIC it's ok, but if we have to use file in sub-sh=
ell it must work too.

Regards,
Oleksiy

--hlbCoxo0ulyxg7k27DG8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander.<br aria-hidden=3D"true" /><br aria-hidden=3D"true" />We alrea=
dy use temporary fix, like:
<blockquote><br aria-hidden=3D"true" />diff --git a/meta/recipes-devtools/f=
ile/file_5.44.bb b/meta/recipes-devtools/file/file_5.44.bb<br aria-hidden=
=3D"true" />index 3090d346ed..3a23e7721d 100644<br aria-hidden=3D"true" />-=
-- a/meta/recipes-devtools/file/file_5.44.bb<br aria-hidden=3D"true" />+++ =
b/meta/recipes-devtools/file/file_5.44.bb<br aria-hidden=3D"true" />@@ -45,=
10 +45,8 @@ do_install:append:class-native() {<br aria-hidden=3D"true" />&n=
bsp;}<br aria-hidden=3D"true" />&nbsp;<br aria-hidden=3D"true" />&nbsp;do_i=
nstall:append:class-nativesdk() {<br aria-hidden=3D"true" />-&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d<br=
 aria-hidden=3D"true" />-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cat &lt;&lt;-=
 EOF &gt; ${D}${SDKPATHNATIVE}/environment-setup.d/file.sh<br aria-hidden=
=3D"true" />-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; export MAGIC=3D"$OECORE_NATIVE_SYSROOT${datadir}/mis=
c/magic.mgc"<br aria-hidden=3D"true" />-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; EOF<br aria-hidden=3D"true" />+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; creat=
e_cmdline_wrapper ${D}/${bindir}/file \<br aria-hidden=3D"true" />+&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; --magic-file ${datadir}/misc/magic.mgc<br aria-hidden=3D"true" />&nbsp;}<=
/blockquote>
I would like to ask if it possible to have in upstream both MAGIC variable =
exported and wrapper for file. <br aria-hidden=3D"true" />If another binari=
es use MAGIC it's ok, but if we have to use file in sub-shell it must work =
too.<br aria-hidden=3D"true" /><br aria-hidden=3D"true" />Regards,<br aria-=
hidden=3D"true" />Oleksiy

--hlbCoxo0ulyxg7k27DG8--

