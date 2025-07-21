Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E777C83F25
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 16:00:34 +0000 (UTC)
Subject: Re: [yocto] Generating 32-bit x86 native lib while MACHINE is set to ARM(essentially) #bitbake
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Jul 2025 09:00:27 -0700
References: <3F6BCBA6-5354-4CA7-81DE-9F7E967681E8@arm.com>
In-Reply-To: <3F6BCBA6-5354-4CA7-81DE-9F7E967681E8@arm.com>
Message-ID: <23575.1753113627850759573@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IrdKHV54gtJZwC0fh77C"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 16:00:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65692

--IrdKHV54gtJZwC0fh77C
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have some native bins that need to be generated to perform some code gene=
ration before moving onto the openBMC/ARM portion of the build.

For one, it has to be configured in CMAKE via set_target_properties(genEvt =
PROPERTIES COMPILE_OPTIONS "-m32" LINK_FLAGS "-m32") to build in 32-bit, na=
tively.

As of now, I'm mostly succeeding with 'DEPENDS =3D "openssl-native"', but g=
et a 'libssl.so: error adding symbols: file in wrong format' error because =
of the incompatibility.

So I need to somehow generate the native/x86 32-bit openssl binaries but th=
e MULTILIBS documentation doesn't seem to cover this edge case.

--IrdKHV54gtJZwC0fh77C
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have some native bins that need to be generated to perform some code=
 generation before moving onto the openBMC/ARM portion of the build.</div>
<div>&nbsp;</div>
<div>For one, it has to be configured in CMAKE via set_target_properties(ge=
nEvt PROPERTIES COMPILE_OPTIONS "-m32" LINK_FLAGS "-m32") to build in 32-bi=
t, natively.</div>
<div>&nbsp;</div>
<div>As of now, I'm mostly succeeding with 'DEPENDS =3D "openssl-native"', =
but get a 'libssl.so: error adding symbols: file in wrong format' error bec=
ause of the incompatibility.</div>
<div>&nbsp;</div>
<div>So I need to somehow generate the native/x86 32-bit openssl binaries b=
ut the MULTILIBS documentation doesn't seem to cover this edge case.</div>

--IrdKHV54gtJZwC0fh77C--

