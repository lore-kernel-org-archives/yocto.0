Return-Path: <anirudh@astranis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB8F9CCD199
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 05:23:37 +0000 (UTC)
Subject: Re: [yocto] Building u-boot with clang
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "Anirudh Mathukumilli" <anirudh@astranis.com>
X-Originating-Location: San Francisco, California, US (24.130.57.81)
X-Originating-Platform: Linux Chrome 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Oct 2025 22:23:31 -0700
References: <CAMKF1sr=5mwdmpN039EPpJzwgO=RpjpMYZqNHKFwaL8-35YHXw@mail.gmail.com>
In-Reply-To: <CAMKF1sr=5mwdmpN039EPpJzwgO=RpjpMYZqNHKFwaL8-35YHXw@mail.gmail.com>
Message-ID: <26514.1760678611269066030@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RcBiIz7L2NMGV7n6DHjF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 05:23:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65945

--RcBiIz7L2NMGV7n6DHjF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After spending some time poking around this evening, it seemed to me that c=
hanging the GCC recipes in poky/recipes-devtools/gcc to use an older versio=
n would work. Is there a problem with this approach? I figure I might need =
to mess with the patches and some of the other settings in that recipe, but=
 it seemed promising. What am I missing?

If it's not possible to use an older GCC version in modern Yocto, is my onl=
y option to try and use an earlier version of yocto that uses an earlier ve=
rsion of GCC?

--RcBiIz7L2NMGV7n6DHjF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>After spending some time poking around this evening, it seemed to me t=
hat changing the GCC recipes in poky/recipes-devtools/gcc to use an older v=
ersion would work. Is there a problem with this approach? I figure I might =
need to mess with the patches and some of the other settings in that recipe=
, but it seemed promising. What am I missing?&nbsp;</div>
<div>&nbsp;</div>
<div>If it's not possible to use an older GCC version in modern Yocto, is m=
y only option to try and use an earlier version of yocto that uses an earli=
er version of GCC?&nbsp;</div>

--RcBiIz7L2NMGV7n6DHjF--

