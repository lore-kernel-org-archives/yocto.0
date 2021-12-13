Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60262C433EF
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 17:21:43 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web12.14302.1639416101979311382
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 09:21:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.200,
 mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 927D020004;
	Mon, 13 Dec 2021 17:21:33 +0000 (UTC)
Date: Mon, 13 Dec 2021 18:21:30 +0100
From: Quentin Schulz <foss@0leil.net>
To: yocto@lists.yoctoproject.org,
 =?ISO-8859-1?Q?Beek=2C_L=E9on_van_de?= <l.v.d.beek@student.tue.nl>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_Is_it_possible_to_run_a_read-only?=
 =?US-ASCII?Q?_fs_without_IMAGE=5FFEATURE_=3D_=22read-only-rootfs=22?=
In-Reply-To: 
 <AM0PR09MB414814992DC0FEF845E33BB3AC749@AM0PR09MB4148.eurprd09.prod.outlook.com>
References: 
 <AM0PR09MB414814992DC0FEF845E33BB3AC749@AM0PR09MB4148.eurprd09.prod.outlook.com>
Message-ID: <EE643FC7-9EB3-4CB0-A2B1-C6B480D37BD2@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 17:21:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55561

Hi L=C3=A9on,

On December 13, 2021 3:40:05 PM GMT+01:00, "Beek, L=C3=A9on van de" <l=2Ev=
=2Ed=2Ebeek@student=2Etue=2Enl> wrote:
>Dear all,
>
>Currently I have created an image which upon boot mounts my rootfs as rea=
donly in an overlay with my data partition=2E I set out to change the FS ty=
pe of my rootfs to something that is actuall read-only like squashfs, howev=
er I am getting a kernel panic whenever I boot saying:
>
>"Not syncing: vfs: Unable to mount root fs on unknown-blick(179,2)"
>
>The steps I took to convert to a read-only rootfs:
>
>  *   Change -fstype in =2Ewks file to squashfs
>  *   Changed IMAGE_FSTYPE=3D "squashfs wic=2Ebz2", in local=2Econf, howe=
ver I do not believe this is necessary actually
>

Did you check that your kernel actually supports squashfs as rootfs? There=
 is a Kconfig option for it IIRC=2E

>Are there steps I am missing? I believe that IMAGE_FEATURE =3D "read-only=
-rootfs" should not be necessary as I am mounting the rootfs in an overlay =
before starting /sbin/init , but I might be wrong=2E
>

Since it's an image feature, it's not going to impact anything outside of =
the image recipe but I don't know exactly what this is doing from memory=2E

Cheers,
Quentin

>Kind regards,
>
>L=C3=A9on van de Beek

