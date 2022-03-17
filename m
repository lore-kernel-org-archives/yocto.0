Return-Path: <oleg@kaa.org.ua>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F57C433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 20:29:52 +0000 (UTC)
Received: from smtp.220.in.ua (smtp.220.in.ua [89.184.67.205])
 by mx.groups.io with SMTP id smtpd.web12.1316.1647548990497570883
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 13:29:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: kaa.org.ua, ip: 89.184.67.205, mailfrom: oleg@kaa.org.ua)
Received: from [192.168.0.103] (unknown [91.234.25.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.220.in.ua (Postfix) with ESMTPSA id 14BB81A25E2E
	for <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 22:29:47 +0200 (EET)
Message-ID: <4392d158-e0cb-0776-93c3-62972ed28431@kaa.org.ua>
Date: Thu, 17 Mar 2022 22:29:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
From: Oleh Kravchenko <oleg@kaa.org.ua>
Subject: Multiconfig dependency
To: yocto@lists.yoctoproject.org
Content-Language: uk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 20:29:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56485

Hello guys!
Could you please help me with Multiconfig setup?

I=E2=80=99ve "default" configuration with SystemD by default.
And "initramfs" configuration with Busybox and other settings.

I use next targets/recipes with initramfs configuration:
1. core-image-rootfs - packs core-image-minimal ext4 image to debian=20
package;
2. initramfs-flasher-image - image that has core-image-rootfs;

Default configuration:
1. core-image-minimal - main rootfs;
2. flasher - packs initramfs-flasher-image squashfs image to debian packa=
ge;
3. app-flasher - special application that has inside squashfs file from=20
flasher package.

Everything works fine if I do clean build.
If I change somethings for core-image-minial (like IMAGE_INSTALL), it=20
builds core-image-minial only:

> bitbake app-flasher
But no updates for core-image-rootfs, initramfs-flasher-image, flasher=20
and app-flasher.

Here how my multiconfig dependency in core-image-rootfs.bb:

 > do_install[mcdepends] =3D=20
"mc:initramfs::core-image-minimal:do_image_complete"

