Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A328CD1292
	for <webhook@archiver.kernel.org>; Thu,  4 Apr 2024 13:11:44 +0000 (UTC)
Subject: Re: [yocto] Add json-c package to yocto sdk
To: "Jacob Avraham" <jacob.avraham@auto-talks.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: CH (147.161.250.96)
X-Originating-Platform: Windows Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Apr 2024 06:11:41 -0700
References: <CAD_Sx11CVX9LBpg3402JwdoWzvnmOCewhRAWLa-tHHNfBJAs=g@mail.gmail.com>
In-Reply-To: <CAD_Sx11CVX9LBpg3402JwdoWzvnmOCewhRAWLa-tHHNfBJAs=g@mail.gmail.com>
Message-ID: <6447.1712236301843418862@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4PVVVCIActqyufVjhwc9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Apr 2024 13:11:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62888

--4PVVVCIActqyufVjhwc9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> I want to create a yocto sdk for arm64 architecture that includes the jso=
n-c library package.

After running 'source oe-init-build-env' in the poky directory, I did the f=
ollowing changes to the local.conf file: MACHINE ??=3D "qemuarm64"
IMAGE_INSTALL +=3D " json-c"

I am not sure if adding a package to IMAGE_INSTALL will affect the SDK, sin=
ce no other recipe really depends on it.=C2=A0You could try to add it manua=
lly to your SDK by using something like.
```
TOOLCHAIN_TARGET_TASK:append =3D "json-c"
```
If you need the `-dev`=C2=A0or `-staticdev` packages, you can add them as w=
ell.

--4PVVVCIActqyufVjhwc9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

&gt;&nbsp;<span style=3D"color: #0c0d0e; font-size: 15px;">I want to create=
 a yocto sdk for arm64 architecture that includes the json-c library packag=
e.</span>
<p style=3D"font-size: 15px; color: #0c0d0e;">After running 'source oe-init=
-build-env' in the poky directory, I did the following changes to the local=
.conf file: MACHINE ??=3D "qemuarm64"<br />IMAGE_INSTALL +=3D " json-c"</p>
I am not sure if adding a package to IMAGE_INSTALL will affect the SDK, sin=
ce no other recipe really depends on it.&nbsp;You could try to add it manua=
lly to your SDK by using something like.<br />```<br />TOOLCHAIN_TARGET_TAS=
K:append =3D "json-c"<br />```<br />If you need the `-dev`&nbsp;or `-static=
dev` packages, you can add them as well.

--4PVVVCIActqyufVjhwc9--

