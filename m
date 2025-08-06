Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADA6C87FD3
	for <webhook@archiver.kernel.org>; Wed,  6 Aug 2025 15:41:53 +0000 (UTC)
Subject: Re: [yocto] Extended SDK installation fails during git fetch of kernel source hosted on private repo
To: "Andrea Galbusera" <gizero@gmail.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Shakopee, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Aug 2025 08:41:52 -0700
References: <CAC+thW16nHpv48PKw3BMUtq19i7VHxPUq3iTFu_6wV26GSFLsQ@mail.gmail.com>
In-Reply-To: <CAC+thW16nHpv48PKw3BMUtq19i7VHxPUq3iTFu_6wV26GSFLsQ@mail.gmail.com>
Message-ID: <6834.1754494912820088673@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DvX96tX0zVqRPkvJHjdN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Aug 2025 15:41:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65736

--DvX96tX0zVqRPkvJHjdN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I just came across this same issue while attempting to install an eSDK.

So if AUTOREV can cause this behavior, is it possible to determine you're b=
itbaking an SDK/eSDK and alter AUTOREV into what the latest, for example, g=
it hash is? That way, when installing the SDK, it'll just reference those s=
tatic hashes at the time the SDK was built and this can be avoided?

--DvX96tX0zVqRPkvJHjdN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I just came across this same issue while attempting to install an eSDK=
.</div>
<div>&nbsp;</div>
<div>So if AUTOREV can cause this behavior, is it possible to determine you=
're bitbaking an SDK/eSDK and alter AUTOREV into what the latest, for examp=
le, git hash is? That way, when installing the SDK, it'll just reference th=
ose static hashes at the time the SDK was built and this can be avoided?</d=
iv>

--DvX96tX0zVqRPkvJHjdN--

