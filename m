Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26CEAC4345F
	for <webhook@archiver.kernel.org>; Tue, 16 Apr 2024 17:09:55 +0000 (UTC)
Subject: Re: [yocto] Implicit RPROVIDES somewhere ?
To: "Quentin Schulz" <quentin.schulz@theobroma-systems.com>, yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: FR (37.66.58.207)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Apr 2024 10:09:45 -0700
References: <4720216d-bcf7-4cb6-af82-22de63e0953b@theobroma-systems.com>
In-Reply-To: <4720216d-bcf7-4cb6-af82-22de63e0953b@theobroma-systems.com>
Message-ID: <22839.1713287385608688409@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pNwlsbBREi6VlHhjO8kk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Apr 2024 17:09:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62940

--pNwlsbBREi6VlHhjO8kk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Quentin,

Thanks for the quick reply on this question!

The reason of this organisation is that my customer is responsible of provi=
ding library "bar" (he cannot share the source code with me), and we are re=
sponsible of providing library "foo". It's not confortable for sure, but it=
's the actual state. So my customer provides me the "bar" libraries (arm an=
d aarch64) compiled (so files), that I copy/paste in my layer. And then I b=
uild "foo" libraries that are linked to "bar" and additionally I have to in=
stall only the "foo" libraries in the rootfs.

The library that is building "foo" have nothing specific to the architectur=
e. The IMAGE_INSTALL has "lib32-foo" and "foo".
But something to mention that may have an impact here : because of this org=
anization above my recipe that is building "foo" have the following (else I=
 don't succeed to build):

>=20
> FILES_SOLIBSDEV =3D ""
> INSANE_SKIP:${PN} +=3D "dev-so"
> INSANE_SKIP:${PN} +=3D "file-rdeps"
>=20

I checked the SONAME / NEEDED of the libraries with readelf for arm and aar=
ch64 "foo" libraries:

>=20
> readelf -d path/to/image/1.0-r0/rootfs/usr/lib/libfoo.so
>=20
> Dynamic section at offset 0xad3c contains 31 entries:
> Tag=C2=A0 =C2=A0 =C2=A0 =C2=A0 Type=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Name/Value
> 0x00000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [libcrypto.so.3]
> 0x00000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [libbar.so]
> 0x00000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [libc.so.6]
> 0x00000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [ld-linux.so.3]
> 0x0000000e (SONAME)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Library soname: [libfoo.so]
>=20
>=20
>=20

etc (details removed for brevity)

>=20
> readelf -d path/to/image/1.0-r0/rootfs/usr/lib64/libfoo.so
>=20
> Dynamic section at offset 0xfa58 contains 32 entries:
> Tag=C2=A0 =C2=A0 =C2=A0 =C2=A0 Type=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Name/Value
> 0x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Shared library: [libcrypto.so.3]
> 0x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Shared library: [libbar.so]
> 0x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Shared library: [libc.so.6]
> 0x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Shared library:
> [ld-linux-aarch64.so.1]
> 0x000000000000000e (SONAME)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Library soname: [libfoo.so]
>=20

etc (details removed for brevity)

So actually this doesn't helped me to understand the implicit RDEPENDS on a=
arch64 that is not present on arm arch because both indicate the need libba=
r.so.

Joel

--pNwlsbBREi6VlHhjO8kk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Quentin,<br /><br />Thanks for the quick reply on this question!<br /=
><br />The reason of this organisation is that my customer is responsible o=
f providing library "bar" (he cannot share the source code with me), and we=
 are responsible of providing library "foo". It's not confortable for sure,=
 but it's the actual state. So my customer provides me the "bar" libraries =
(arm and aarch64) compiled (so files), that I copy/paste in my layer. And t=
hen I build "foo" libraries that are linked to "bar" and additionally I hav=
e to install only the "foo" libraries in the rootfs.<br /><br />The library=
 that is building "foo" have nothing specific to the architecture. The IMAG=
E_INSTALL has "lib32-foo" and "foo".<br />But something to mention that may=
 have an impact here : because of this organization above my recipe that is=
 building "foo" have the following (else I don't succeed to build):<br /><b=
r />
<blockquote>
<div>FILES_SOLIBSDEV =3D ""</div>
<div>INSANE_SKIP:${PN} +=3D "dev-so"</div>
<div>INSANE_SKIP:${PN} +=3D "file-rdeps"</div>
</blockquote>
<br />I checked the SONAME / NEEDED of the libraries with readelf for arm a=
nd aarch64 "foo" libraries:<br /><br />
<blockquote>
<div>readelf -d path/to/image/1.0-r0/rootfs/usr/lib/libfoo.so&nbsp;</div>
<div>&nbsp;</div>
<div>Dynamic section at offset 0xad3c contains 31 entries:</div>
<div>&nbsp; Tag&nbsp; &nbsp; &nbsp; &nbsp; Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Name/Value</d=
iv>
<div>&nbsp;0x00000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;Shared library: [libcrypto.so.3]</div>
<div>&nbsp;0x00000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;Shared library: [libbar.so]</div>
<div>&nbsp;0x00000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;Shared library: [libc.so.6]</div>
<div>&nbsp;0x00000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;Shared library: [ld-linux.so.3]</div>
<div>&nbsp;0x0000000e (SONAME)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;Library soname: [libfoo.so]<br /><br /></div=
>
</blockquote>
<div>etc (details removed for brevity)<br /><br />
<blockquote>
<div>readelf -d path/to/image/1.0-r0/rootfs/usr/lib64/libfoo.so&nbsp;&nbsp;=
</div>
<div>&nbsp;</div>
<div>Dynamic section at offset 0xfa58 contains 32 entries:</div>
<div>&nbsp; Tag&nbsp; &nbsp; &nbsp; &nbsp; Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Name/Value</d=
iv>
<div>&nbsp;0x0000000000000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;Shared library: [libcrypto.so.3]</div>
<div>&nbsp;0x0000000000000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;Shared library: [libbar.so]</div>
<div>&nbsp;0x0000000000000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;Shared library: [libc.so.6]</div>
<div>&nbsp;0x0000000000000001 (NEEDED)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;Shared library: [ld-linux-aarch64.so.1]</div>
<div>&nbsp;0x000000000000000e (SONAME)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;Library soname: [libfoo.so]</div>
</blockquote>
etc (details removed for brevity)<br /><br />So actually this doesn't helpe=
d me to understand the implicit RDEPENDS on aarch64 that is not present on =
arm arch because both indicate the need libbar.so.<br /><br />Joel</div>

--pNwlsbBREi6VlHhjO8kk--

