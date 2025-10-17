Return-Path: <anirudh@astranis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10CA5CCD183
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 03:11:57 +0000 (UTC)
Subject: Re: [yocto] Building u-boot with clang
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "Anirudh Mathukumilli" <anirudh@astranis.com>
X-Originating-Location: San Francisco, California, US (24.130.57.81)
X-Originating-Platform: Linux Chrome 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Oct 2025 20:11:56 -0700
References: <CAMKF1spph3_i8074mkFHz7GGn9gR7qprxexRCCxvzigvBz9Ncw@mail.gmail.com>
In-Reply-To: <CAMKF1spph3_i8074mkFHz7GGn9gR7qprxexRCCxvzigvBz9Ncw@mail.gmail.com>
Message-ID: <26514.1760670716178104579@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="921mu9tZajxWNT95Aap3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 03:11:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65943

--921mu9tZajxWNT95Aap3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Oh cool, I might be able to use that for u-boot

Eventually though I am going to need to build the fully poky distribution, =
is there anyway to generalize the hack to use an older version of GCC with =
a modern yocto release (I tried setting GCCVERSION in my local.conf but tha=
t did not seem to do much).

--921mu9tZajxWNT95Aap3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Oh cool, I might be able to use that for u-boot</div>
<div>&nbsp;</div>
<div>Eventually though I am going to need to build the fully poky distribut=
ion, is there anyway to generalize the hack to use an older version of GCC =
with a modern yocto release (I tried setting GCCVERSION in my local.conf bu=
t that did not seem to do much).</div>

--921mu9tZajxWNT95Aap3--

