Return-Path: <anirudh@astranis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5543BCCD183
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 00:51:56 +0000 (UTC)
Subject: Re: [yocto] Building u-boot with clang
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "Anirudh Mathukumilli" <anirudh@astranis.com>
X-Originating-Location: San Francisco, California, US (24.130.57.81)
X-Originating-Platform: Linux Chrome 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Oct 2025 17:51:55 -0700
References: <CAMKF1srraguxbAXrVbfJDfv69=TShjSgjKmzpvDw7-3zi0wQpg@mail.gmail.com>
In-Reply-To: <CAMKF1srraguxbAXrVbfJDfv69=TShjSgjKmzpvDw7-3zi0wQpg@mail.gmail.com>
Message-ID: <6098.1760662315745193739@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7KEeVT5EKiTCLbD4oTxG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 00:51:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65941

--7KEeVT5EKiTCLbD4oTxG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the quick response!

My issue actually is that the GCC compiler removed support for the chipset =
I'm targeting in GCC 9. So, I either have to somehow pin yocto to using GCC=
 8, or use clang to build everything. Utilizing clang seemed like the more =
resilient option moving forward, especially if we want to use newer C++ ver=
sions, but if we need gcc-cross-powerpc to compile glibc and compiler-rt th=
en that's not a viable option. Are there any plans to support for these com=
ponents moving forward?

If not, then I think I'll just have to try and use an older GCC version - i=
s there a way to tell yocto to use GCC version 8.5.2 (or just any version b=
efore GCC 9) when compiling the u-boot recipe?

--7KEeVT5EKiTCLbD4oTxG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks for the quick response!</div>
<div>&nbsp;</div>
<div>My issue actually is that the GCC compiler removed support for the chi=
pset I'm targeting in GCC 9. So, I either have to somehow pin yocto to usin=
g GCC 8, or use clang to build everything. Utilizing clang seemed like the =
more resilient option moving forward, especially if we want to use newer C+=
+ versions, but if we need gcc-cross-powerpc to compile glibc and compiler-=
rt then that's not a viable option. Are there any plans to support for thes=
e components moving forward?</div>
<div>&nbsp;</div>
<div>If not, then I think I'll just have to try and use an older GCC versio=
n - is there a way to tell yocto to use GCC version 8.5.2 (or just any vers=
ion before GCC 9) when compiling the u-boot recipe?</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--7KEeVT5EKiTCLbD4oTxG--

