Return-Path: <oleg@kaa.org.ua>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C6AC433EF
	for <webhook@archiver.kernel.org>; Sat, 19 Mar 2022 21:20:43 +0000 (UTC)
Received: from smtp.220.in.ua (smtp.220.in.ua [89.184.67.205])
 by mx.groups.io with SMTP id smtpd.web12.11750.1647724841116909088
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Mar 2022 14:20:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: kaa.org.ua, ip: 89.184.67.205, mailfrom: oleg@kaa.org.ua)
Received: from [192.168.0.103] (unknown [91.234.25.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.220.in.ua (Postfix) with ESMTPSA id CF43C1A22981;
	Sat, 19 Mar 2022 23:20:36 +0200 (EET)
Message-ID: <d2862cc6-dd65-7378-f1fd-175a15000131@kaa.org.ua>
Date: Sat, 19 Mar 2022 23:20:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
Subject: Re: Multiconfig dependency
Content-Language: uk
From: Oleh Kravchenko <oleg@kaa.org.ua>
To: JPEWhacker@gmail.com
References: <4392d158-e0cb-0776-93c3-62972ed28431@kaa.org.ua>
Cc: yocto@lists.yoctoproject.org
In-Reply-To: <4392d158-e0cb-0776-93c3-62972ed28431@kaa.org.ua>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Mar 2022 21:20:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56506


Hello Joshua,
Could you please help me with multiconfig?

Currently I've found this workaround:
 > do_install[nostamp] =3D "1"

For all tasks that have "do_install[mcdepends]".

17.03.22 22:29, Oleh Kravchenko =D0=BF=D0=B8=D1=88=D0=B5:
> Hello guys!
> Could you please help me with Multiconfig setup?
>=20
> I=E2=80=99ve "default" configuration with SystemD by default.
> And "initramfs" configuration with Busybox and other settings.
>=20
> I use next targets/recipes with initramfs configuration:
> 1. core-image-rootfs - packs core-image-minimal ext4 image to debian=20
> package;
> 2. initramfs-flasher-image - image that has core-image-rootfs;
>=20
> Default configuration:
> 1. core-image-minimal - main rootfs;
> 2. flasher - packs initramfs-flasher-image squashfs image to debian=20
> package;
> 3. app-flasher - special application that has inside squashfs file from=
=20
> flasher package.
>=20
> Everything works fine if I do clean build.
> If I change somethings for core-image-minial (like IMAGE_INSTALL), it=20
> builds core-image-minial only:
>=20
>> bitbake app-flasher
> But no updates for core-image-rootfs, initramfs-flasher-image, flasher=20
> and app-flasher.
>=20
> Here how my multiconfig dependency in core-image-rootfs.bb:
>=20
>  > do_install[mcdepends] =3D=20
> "mc:initramfs::core-image-minimal:do_image_complete"

