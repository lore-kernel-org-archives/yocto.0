Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46B56C7EE30
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 15:46:31 +0000 (UTC)
Subject: Re: [yocto] CMake + native devtool recipe seems lost #cmake #devtool
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Jul 2025 08:46:30 -0700
References: <CAMKF1sq9JBGFxZQs18cF4o-hfPUfGReu9AL=P4FHmEob1Xui9g@mail.gmail.com>
In-Reply-To: <CAMKF1sq9JBGFxZQs18cF4o-hfPUfGReu9AL=P4FHmEob1Xui9g@mail.gmail.com>
Message-ID: <18523.1751384790180380720@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bjlOIeiAtYE3ZTR9YIqY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 15:46:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65578

--bjlOIeiAtYE3ZTR9YIqY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It's a legacy file/mechansim in our codebase at the root of the repo. It al=
so wasn't working with . ./sourceme.env and that's when I started looking a=
t the directory structure and realized I was in the directory I should be i=
n. Even without the weird 'source' file(there needs to be a different name =
for a file you 'source' with 'source') I'm definitely not seeing my CMakeLi=
sts.txt file.

--bjlOIeiAtYE3ZTR9YIqY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>It's a legacy file/mechansim in our codebase at the root of the repo. =
It also wasn't working with . ./sourceme.env and that's when I started look=
ing at the directory structure and realized I was in the directory I should=
 be in. Even without the weird 'source' file(there needs to be a different =
name for a file you 'source' with 'source') I'm definitely not seeing my CM=
akeLists.txt file.</div>

--bjlOIeiAtYE3ZTR9YIqY--

