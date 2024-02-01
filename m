Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 248D7C4828F
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 14:12:02 +0000 (UTC)
Subject: Re: [yocto] Multiple images on the same hardware
To: Mike Looijmans <mike.looijmans@topic.nl>,yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: CH (147.161.250.87)
X-Originating-Platform: Windows Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Feb 2024 06:11:55 -0800
References: <1139818a-0492-4feb-9d72-caee7217fea2@topic.nl>
In-Reply-To: <1139818a-0492-4feb-9d72-caee7217fea2@topic.nl>
Message-ID: <23652.1706796715918426659@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GrOV4Y6Ll2KKv2u8PoWM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 14:12:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62365

--GrOV4Y6Ll2KKv2u8PoWM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Why don't you just have multiple image recipes?
>=20

The initial question was not related to image recipes, but rather to the on=
e linux-kernel recipe. Within the recipe there's no variable I could use to=
 specify which modules get compiled.

>=20
> Many images bluntly install "kernel-modules" which throws in everything
> that got built by the kernel recipe. Omit that and you can install kernel
> modules based on exact system requirements.
>=20

This is something I will take a look at, thanks for the idea. One "issue" I=
 see with it is that this won't work for built-in modules, however, those "=
special" scenarios can be covered with modules loaded on demand.

Aleksandar

--GrOV4Y6Ll2KKv2u8PoWM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span style=3D"white-space-collapse: preserve;">Why don't you j=
ust have multiple image recipes?<br /></span></blockquote>
The initial question was not related to image recipes, but rather to the on=
e linux-kernel recipe. Within the recipe there's no variable I could use to=
 specify which modules get compiled.<br /><br />
<blockquote><span style=3D"white-space-collapse: preserve;">Many images blu=
ntly install "kernel-modules" which throws in everything that got built by =
the kernel recipe. Omit that and you can install kernel modules based on ex=
act system requirements.<br /></span></blockquote>
This is something I will take a look at, thanks for the idea. One "issue" I=
 see with it is that this won't work for built-in modules, however, those "=
special" scenarios can be covered with modules loaded on demand.<br /><br /=
>Aleksandar

--GrOV4Y6Ll2KKv2u8PoWM--

