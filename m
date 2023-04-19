Return-Path: <paulo.sogari@vorwerk.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC9B8C6FD18
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 12:26:09 +0000 (UTC)
Subject: nativesdk-packagegroup-sdk-host - allarch vs arch-specific
To: yocto@lists.yoctoproject.org
From: paulo.sogari@vorwerk.de
X-Originating-Location: Wuppertal, North Rhine-Westphalia, DE (217.253.132.47)
X-Originating-Platform: Mac Safari 16.4
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Apr 2023 05:26:02 -0700
Message-ID: <gl2l.1681907162566537744.TMbw@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CnX6AhidTNDas4BCKH2D"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 12:26:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59729

--CnX6AhidTNDas4BCKH2D
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I=E2=80=99m currently facing an issue when trying to build an SDK for an aa=
rch64 host also with an aarch64 target board on Kirkstone. I=E2=80=99ve app=
ended both nativesdk-protobuf and nativesdk-protobuf-compiler to nativesdk-=
packagegroup-sdk-host. When building the SDK for an x86 host, everything wo=
rks as expected, but for the aarch64 host, the following error occurs:

>=20
>=20
>=20
> ERROR: nativesdk-packagegroup-sdk-host-1.0-r12 do_package_write_rpm: An
> allarch packagegroup shouldn=E2=80=99t depend on packages which are dynam=
ically
> renamed (nativesdk-protobuf to nativesdk-libprotobuf30)
> ERROR: nativesdk-packagegroup-sdk-host-1.0-r12 do_package_write_rpm: An
> allarch packagegroup shouldn=E2=80=99t depend on packages which are dynam=
ically
> renamed (nativesdk-protobuf-compiler to nativesdk-libprotobuf-compiler)
>=20
>=20

When searching for this issue, I found the patch that defines this error: h=
ttps://lists.openembedded.org/g/openembedded-core/message/158230
As stated in the error message, it is caused by the dynamic renaming of the=
 package when it is part of an allarch packagegroup. I=E2=80=99m not famili=
ar with the dynamic renaming process itself, but I found it weird that the =
packagegroup would be allarch instead of aarch64.
The patch description states:

>=20
>=20
>=20
> If you run into this issue you either need to remove the dependency from
> the
> packagegroup or mark the packagegroup as tune specific, i.e. set:
>=20
>=20
>=20
> PACKAGE_ARCH =3D =E2=80=9C${TUNE_PKGARCH}=E2=80=9D
>=20
>=20
>=20
> before the packagegroup inherit.
>=20
>=20

Indeed, packagegroup.bbclass makes a weak assignment of PACKAGE_ARCH? =3D =
=E2=80=9Call=E2=80=9D. This value is immediately assigned to PACKAGE_ARCH_E=
XPANDED (before any overrides), which in turn causes allarch.bbclass to be =
inherited. This is also confirmed when analyzing the build environment:

>=20
>=20
>=20
> # $PACKAGE_ARCH [4 operations]
> #=C2=A0=C2=A0 set /home/sog/build/sdk/sources/poky/meta/conf/bitbake.conf=
:182
> #=C2=A0=C2=A0=C2=A0 [_defaultval] =E2=80=9C${TUNE_PKGARCH}=E2=80=9D
> #=C2=A0=C2=A0 set /home/sog/build/sdk/sources/poky/meta/conf/documentatio=
n.conf:309
> #=C2=A0=C2=A0=C2=A0 [doc] =E2=80=9CThe architecture of the resulting pack=
age or packages.=E2=80=9D
> #=C2=A0=C2=A0 set?
> /home/sog/build/sdk/sources/poky/meta/classes/packagegroup.bbclass:12
> #=C2=A0=C2=A0=C2=A0 =E2=80=9Call=E2=80=9D
> #=C2=A0=C2=A0 set /home/sog/build/sdk/sources/poky/meta/classes/nativesdk=
.bbclass:24
>=20
> #=C2=A0=C2=A0=C2=A0 =E2=80=9C${SDK_ARCH}-${SDKPKGSUFFIX}=E2=80=9D
> # pre-expansion value:
> #=C2=A0=C2=A0 =E2=80=9C${SDK_ARCH}-${SDKPKGSUFFIX}=E2=80=9D
> PACKAGE_ARCH=3D=E2=80=9Caarch64-nativesdk=E2=80=9D
>=20
>=20
>=20
> # $PACKAGE_ARCH_EXPANDED
> #=C2=A0=C2=A0 immediate
> /home/sog/build/sdk/sources/poky/meta/classes/packagegroup.bbclass:15
> #=C2=A0=C2=A0=C2=A0 =E2=80=9C${PACKAGE_ARCH}=E2=80=9D
> PACKAGE_ARCH_EXPANDED=3D=E2=80=9Call=E2=80=9D
>=20
>=20

The problem does not occur at all if I change nativesdk-packagegroup-sdk-ho=
st.bb to first inherit =E2=80=9Cnativesdk=E2=80=9D, and lastly =E2=80=9Cpac=
kagegroup=E2=80=9D. In this case, PACKAGE_ARCH_EXPANDED is also set to =E2=
=80=9Caarch64-nativesdk=E2=80=9D, which prevents allarch.bbclass from being=
 inherited.
Also, I can avoid the issue completely by defining a separate packagegroup =
and adding protobuf there, but I wanted to clarify: should nativesdk-packag=
egroup-sdk-host really be defined as allarch? Or should it assume the archi=
tecture defined in nativesdk.bbclass?

Kind regards,

Paulo Sogari

--CnX6AhidTNDas4BCKH2D
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi all,</p>
<p>I&rsquo;m currently facing an issue when trying to build an SDK for an a=
arch64 host also with an aarch64 target board on Kirkstone. I&rsquo;ve appe=
nded both nativesdk-protobuf and nativesdk-protobuf-compiler to nativesdk-p=
ackagegroup-sdk-host. When building the SDK for an x86 host, everything wor=
ks as expected, but for the aarch64 host, the following error occurs:</p>
<blockquote>
<p>ERROR: nativesdk-packagegroup-sdk-host-1.0-r12 do_package_write_rpm: An =
allarch packagegroup shouldn&rsquo;t depend on packages which are dynamical=
ly renamed (nativesdk-protobuf to nativesdk-libprotobuf30)<br />ERROR: nati=
vesdk-packagegroup-sdk-host-1.0-r12 do_package_write_rpm: An allarch packag=
egroup shouldn&rsquo;t depend on packages which are dynamically renamed (na=
tivesdk-protobuf-compiler to nativesdk-libprotobuf-compiler)</p>
</blockquote>
<p>When searching for this issue, I found the patch that defines this error=
:&nbsp;<a href=3D"https://lists.openembedded.org/g/openembedded-core/messag=
e/158230">https://lists.openembedded.org/g/openembedded-core/message/158230=
</a><br />As stated in the error message, it is caused by the dynamic renam=
ing of the package when it is part of an allarch packagegroup. I&rsquo;m no=
t familiar with the dynamic renaming process itself, but I found it weird t=
hat the packagegroup would be allarch instead of aarch64.<br />The patch de=
scription states:</p>
<blockquote>
<p>If you run into this issue you either need to remove the dependency from=
 the<br />packagegroup or mark the packagegroup as tune specific, i.e. set:=
</p>
<p>PACKAGE_ARCH =3D &ldquo;${TUNE_PKGARCH}&rdquo;</p>
<p>before the packagegroup inherit.</p>
</blockquote>
<p>Indeed, packagegroup.bbclass makes a weak assignment of PACKAGE_ARCH? =
=3D &ldquo;all&rdquo;. This value is immediately assigned to PACKAGE_ARCH_E=
XPANDED (before any overrides), which in turn causes allarch.bbclass to be =
inherited. This is also confirmed when analyzing the build environment:</p>
<blockquote>
<p># $PACKAGE_ARCH [4 operations]<br />#&nbsp;&nbsp; set /home/sog/build/sd=
k/sources/poky/meta/conf/bitbake.conf:182<br />#&nbsp;&nbsp;&nbsp; [_defaul=
tval] &ldquo;${TUNE_PKGARCH}&rdquo;<br />#&nbsp;&nbsp; set /home/sog/build/=
sdk/sources/poky/meta/conf/documentation.conf:309<br />#&nbsp;&nbsp;&nbsp; =
[doc] &ldquo;The architecture of the resulting package or packages.&rdquo;<=
br />#&nbsp;&nbsp; set? /home/sog/build/sdk/sources/poky/meta/classes/packa=
gegroup.bbclass:12<br />#&nbsp;&nbsp;&nbsp; &ldquo;all&rdquo;<br />#&nbsp;&=
nbsp; set /home/sog/build/sdk/sources/poky/meta/classes/nativesdk.bbclass:2=
4<br />#&nbsp;&nbsp;&nbsp; &ldquo;${SDK_ARCH}-${SDKPKGSUFFIX}&rdquo;<br />#=
 pre-expansion value:<br />#&nbsp;&nbsp; &ldquo;${SDK_ARCH}-${SDKPKGSUFFIX}=
&rdquo;<br />PACKAGE_ARCH=3D&ldquo;aarch64-nativesdk&rdquo;</p>
<p># $PACKAGE_ARCH_EXPANDED<br />#&nbsp;&nbsp; immediate /home/sog/build/sd=
k/sources/poky/meta/classes/packagegroup.bbclass:15<br />#&nbsp;&nbsp;&nbsp=
; &ldquo;${PACKAGE_ARCH}&rdquo;<br />PACKAGE_ARCH_EXPANDED=3D&ldquo;all&rdq=
uo;</p>
</blockquote>
<p>The problem does not occur at all if I change nativesdk-packagegroup-sdk=
-host.bb to first inherit &ldquo;nativesdk&rdquo;, and lastly &ldquo;packag=
egroup&rdquo;. In this case, PACKAGE_ARCH_EXPANDED is also set to &ldquo;aa=
rch64-nativesdk&rdquo;, which prevents allarch.bbclass from being inherited=
.<br />Also, I can avoid the issue completely by defining a separate packag=
egroup and adding protobuf there, but I wanted to clarify: should nativesdk=
-packagegroup-sdk-host really be defined as allarch? Or should it assume th=
e architecture defined in nativesdk.bbclass?</p>
<p>&nbsp;</p>
<p>Kind regards,</p>
<p>Paulo Sogari</p>

--CnX6AhidTNDas4BCKH2D--

