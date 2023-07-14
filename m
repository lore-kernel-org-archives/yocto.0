Return-Path: <ltg_tony@163.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9743EB64DA
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 09:30:02 +0000 (UTC)
Subject: How to use "mkfs.ext4 -d" in my custom recipe?
To: yocto@lists.yoctoproject.org
From: ltg_tony@163.com
X-Originating-Location: US (63.221.140.231)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 14 Jul 2023 02:29:54 -0700
Message-ID: <BLwA.1689326994683518678.YP8r@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UebHTSFYVCjrf2LMfqIB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 09:30:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60577

--UebHTSFYVCjrf2LMfqIB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.

I want to use mkfs.ext4 in my recipe. I found that in meta/classes-recipe/i=
mage_types.bbclass , line 96 contains "mkfs.ext4 -d" option to create ext4 =
image from a directory ($IMAGE_ROOTFS).

I'd like to know if it's possible to use this "-d" option in my recipe. I c=
an call "/sbin/mkfs.ext4", but it does not support "-d".

Thanks in advance.

--UebHTSFYVCjrf2LMfqIB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.<br /><br />I want to use mkfs.ext4 in my recipe. I found that in&nbsp;<=
em>meta/classes-recipe/image_types.bbclass</em>, line 96 contains "mkfs.ext=
4 -d" option to create ext4 image from a directory ($IMAGE_ROOTFS).&nbsp;<b=
r /><br />I'd like to know if it's possible to use this "-d" option in my r=
ecipe. I can call "/sbin/mkfs.ext4", but it does not support "-d".<br /><br=
 />Thanks in advance.

--UebHTSFYVCjrf2LMfqIB--

