Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74085C8303C
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 17:04:47 +0000 (UTC)
Subject: Re: [yocto] CMake + native devtool recipe seems lost #cmake #devtool
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Jul 2025 10:04:38 -0700
References: <CAMKF1sq9JBGFxZQs18cF4o-hfPUfGReu9AL=P4FHmEob1Xui9g@mail.gmail.com>
In-Reply-To: <CAMKF1sq9JBGFxZQs18cF4o-hfPUfGReu9AL=P4FHmEob1Xui9g@mail.gmail.com>
Message-ID: <18523.1751389478816434853@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LzwSuttlARivIRHNQsXJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 17:04:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65581

--LzwSuttlARivIRHNQsXJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It's a legacy file/mechansim in our codebase at the root of the repo. It al=
so wasn't working with . ./sourceme.env and that's when I started looking a=
t the directory structure and realized I was not in the directory I should =
be in.

Even without the weird 'source' file(there needs to be a different name for=
 a file you 'source' with 'source') I'm definitely not seeing my CMakeLists=
.txt file.

Maybe a hint to what's going on: I think the implicit do_configure that a c=
make build does is what is changing the directory, I just need to find a ${=
variable} that points back to my source code.

--LzwSuttlARivIRHNQsXJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div id=3D"msgbody254396148" class=3D"user-content">
<div class=3D"forcebreak" dir=3D"auto">
<div>
<div id=3D"msgbody254393292" class=3D"user-content">
<div class=3D"forcebreak">
<div>It's a legacy file/mechansim in our codebase at the root of the repo. =
It also wasn't working with . ./sourceme.env and that's when I started look=
ing at the directory structure and realized I was not in the directory I sh=
ould be in.</div>
<div>&nbsp;</div>
<div>Even without the weird 'source' file(there needs to be a different nam=
e for a file you 'source' with 'source') I'm definitely not seeing my CMake=
Lists.txt file.<br /><br /></div>
<div>Maybe a hint to what's going on: I think the implicit do_configure tha=
t a cmake build does is what is changing the directory, I just need to find=
 a ${variable} that points back to my source code.</div>
</div>
</div>
</div>
</div>
</div>
</div>

--LzwSuttlARivIRHNQsXJ--

