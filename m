Return-Path: <dchvs11@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECB7C636CC
	for <webhook@archiver.kernel.org>; Mon, 13 Feb 2023 17:21:39 +0000 (UTC)
Subject: Re: Adding backported driver to the kernel
To: yocto@lists.yoctoproject.org
From: "Daniel" <dchvs11@gmail.com>
X-Originating-Location: Columbus, Ohio, US (52.95.4.12)
X-Originating-Platform: Linux Firefox 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Feb 2023 09:21:35 -0800
References: <83UU.1676296192066475347.KRRR@lists.yoctoproject.org>
In-Reply-To: <83UU.1676296192066475347.KRRR@lists.yoctoproject.org>
Message-ID: <18425.1676308895844140676@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="brF6MigIwBnsa6IAtzRY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Feb 2023 17:21:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59218

--brF6MigIwBnsa6IAtzRY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Probably you have two packages that provides that Kernel module. Kernel's d=
efault one via kernel-module-split BBClass, and yours with your recipe.

Try telling Yocto you have your own runtime provider for that driver. Into =
the recipe add this as well:

RPROVIDES:${PN} =3D " kernel-module-cfg80211-${KERNEL_VERSION}"

--brF6MigIwBnsa6IAtzRY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Probably you have two packages that provides that Kernel module. Kernel'=
s default one via kernel-module-split BBClass, and yours with your recipe.<=
/p>
<p>Try telling Yocto you have your own runtime provider for that driver. In=
to the recipe add this as well:</p>
<p>RPROVIDES:${PN} =3D " kernel-module-cfg80211-${KERNEL_VERSION}"</p>
<p>&nbsp;</p>

--brF6MigIwBnsa6IAtzRY--

