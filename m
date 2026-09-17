Return-Path: <wanwizard@openpli.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A440C982D2
	for <webhook@archiver.kernel.org>; Thu, 17 Sep 2026 10:40:36 +0000 (UTC)
Subject: Re: Hashserve OEEquivHash unihash issue
To: yocto@lists.yoctoproject.org
From: "Harro Verton" <wanwizard@openpli.org>
X-Originating-Location: Stafford, England, GB (194.164.227.192)
X-Originating-Platform: Linux Firefox 154
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 17 Sep 2026 03:40:31 -0700
References: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org> <307014.1789069815176190258@lists.yoctoproject.org> <CAJdd5GYmUEJjWnVCYC1y_g+_0gMFASHw4M+ZjHnGBOZHTKocVw@mail.gmail.com> <307014.1789144839597694168@lists.yoctoproject.org> <308852.1789145315543998896@lists.yoctoproject.org>
In-Reply-To: <308852.1789145315543998896@lists.yoctoproject.org>
Message-ID: <546192.1789641631826272563@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JYSu3hCrY1vnfG8StGZa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 10:40:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66729

--JYSu3hCrY1vnfG8StGZa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Took a lot of digging but the issue was found.

Turned out someone added a bbappend for openssl.bb, and included a PACKAGE_=
ARCH =3D $MACHINE_ARCH.

The caused openssl to be rebuild for every MACHINE, which in turn triggered=
 a rebuild of every package dependend on openssl.

Thanks for the pointers!

--JYSu3hCrY1vnfG8StGZa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Took a lot of digging but the issue was found.</div>
<div>&nbsp;</div>
<div>Turned out someone added a bbappend for openssl.bb, and included a PAC=
KAGE_ARCH =3D $MACHINE_ARCH.</div>
<div>&nbsp;</div>
<div>The caused openssl to be rebuild for every MACHINE, which in turn trig=
gered a rebuild of every package dependend on openssl.</div>
<div>&nbsp;</div>
<div>Thanks for the pointers!</div>

--JYSu3hCrY1vnfG8StGZa--

