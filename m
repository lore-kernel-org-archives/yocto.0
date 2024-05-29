Return-Path: <lukas.weiss@janitza.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A17CC27C43
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 13:27:30 +0000 (UTC)
Subject: Bad lib symlink in Host SDK
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?THVrYXMgV2Vpw58=?= <lukas.weiss@janitza.de>
X-Originating-Location: =?UTF-8?B?S2FybHNydWhlLCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (77.179.240.151)
X-Originating-Platform: Linux Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 May 2024 06:27:27 -0700
Message-ID: <I2xT.1716989247423336592.A9So@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="prl9LIvMDX8OOxFPnAFa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 13:27:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63227

--prl9LIvMDX8OOxFPnAFa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi together,

i have a question about Yocto SDK generation. We use the Yocto-SDK not only=
 for generation of target binaries outside the Yocto Build process, but als=
o for generation of the same binaries *for the host* (nativesdk). This way =
we are able to run our applications as Simulations or Unit-Tests in our CI =
process without the need to install dev- and runtime libs on the host syste=
m (also the libs have the same build configuration as on target).

Unfortunately, the SDK doesn't really seem to be designed for this. The BB =
classes for the native/nativesdk are also missing for most libraries. And l=
ast but not least, I still have the feeling that I haven't really found the=
 "right" way to define the SDK. Whatever.

I'm currently trying to add the libudev (yes, i know that its probably not =
the best idea to add a system lib to host sdk ;-). I added an eudev_%.bbapp=
end file containing
>=20
>=20
> BBCLASSEXTEND =3D "native nativesdk"

and appended "nativesdk-eudev" and "nativesdk-eudev-dev" to the RDEPENDS of=
 my nativesdk-packagegroup-sdk-host recipe.

This works, but unfortunately the resulting installed SDK has a wrong symli=
nk for the hosts libudev.so:

>=20
>=20
>=20
> /home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/libudev.so
> ->
> ../../../../../../home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/l=
ib/libudev.so.1.6.3
>=20
>=20
>=20

The correct link would be
>=20
> /home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/libudev.so
> -> ../../lib/libudev.so.1.6.3

This must happen on SDK installation, as the install path is not known befo=
re. All other links in SDK ( *including the link for target libudev.so* ) a=
re correct.
Do you have any hints for me how i can dig into this? All debug methods i k=
now belong to built process itself, not the install.

My Yocto version is "yocto-5.0" Tag in Repo.

--prl9LIvMDX8OOxFPnAFa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi together,&nbsp;<br /><br />i have a question about Yocto SDK generation.=
 We use the Yocto-SDK not only for generation of target binaries outside th=
e Yocto Build process, but also for generation of the same binaries <strong=
>for the host</strong> (nativesdk). This way we are able to run our applica=
tions as Simulations or Unit-Tests in our CI process without the need to in=
stall dev- and runtime libs on the host system (also the libs have the same=
 build configuration as on target).&nbsp;<br /><br />Unfortunately, the SDK=
 doesn't really seem to be designed for this. The BB classes for the native=
/nativesdk are also missing for most libraries. And last but not least, I s=
till have the feeling that I haven't really found the "right" way to define=
 the SDK. Whatever.<br /><br />I'm currently trying to add the libudev (yes=
, i know that its probably not the best idea to add a system lib to host sd=
k ;-). I added an eudev_%.bbappend file containing&nbsp;
<blockquote>BBCLASSEXTEND =3D "native nativesdk"</blockquote>
<p>and appended "nativesdk-eudev" and "nativesdk-eudev-dev" to the RDEPENDS=
 of my <em>nativesdk-packagegroup-sdk-host</em> recipe.<br /><br />This wor=
ks, but unfortunately the resulting installed SDK has a wrong symlink for t=
he hosts libudev.so:</p>
<blockquote>
<p>/home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/libudev.s=
o -&gt; ../../../../../../home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-l=
inux/lib/libudev.so.1.6.3</p>
</blockquote>
The correct link would be
<blockquote>/home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/=
libudev.so -&gt; ../../lib/libudev.so.1.6.3</blockquote>
This must happen on SDK installation, as the install path is not known befo=
re. All other links in SDK (<strong>including the link for target libudev.s=
o</strong>) are correct. <br />Do you have any hints for me how i can dig i=
nto this? All debug methods i know belong to built process itself, not the =
install.<br /><br />My Yocto version is "yocto-5.0" Tag in Repo.

--prl9LIvMDX8OOxFPnAFa--

