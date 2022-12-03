Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAF0C352A1
	for <webhook@archiver.kernel.org>; Sat,  3 Dec 2022 16:54:00 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web10.108167.1670086431123206526
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Dec 2022 08:53:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.231, mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 1E32D100005;
	Sat,  3 Dec 2022 16:53:47 +0000 (UTC)
Date: Sat, 03 Dec 2022 17:53:44 +0100
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org, majid.nasiry65@gmail.com
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_Removing_package-management_fr?= =?US-ASCII?Q?om_conf/local=2C_still_yocto_create_packages?=
In-Reply-To: <Fx55.1670058380299826593.fFtE@lists.yoctoproject.org>
References: <Fx55.1670058380299826593.fFtE@lists.yoctoproject.org>
Message-ID: <8D194DCD-3710-4A7F-82BA-78C5A8DE5626@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Dec 2022 16:54:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58723

Hi,

On December 3, 2022 10:06:20 AM GMT+01:00, majid=2Enasiry65@gmail=2Ecom wr=
ote:
>Hi
>Thank you for your supporting
>I don't use packages (dep, rmp, ipk) in my project and I want disable mak=
ing packages by yocto because it's take storage and time=2E
>I delete EXTRA_IMAGE_FEATURES +=3D "package-management" from my conf/loca=
l file but it's not worked for me and yocto is creating packages=2E
>
>Please tell me how can I do this? Is package manager required any way?

Yocto creates your root filesystem out of packages=2E It basically run apt=
/opkg/rpm locally to create this filesystem with the packages Bitbake creat=
ed=2E As such, those packages are required and an essential part of the bui=
ld system=2E You find those packages in build/tmp/deploy/{ipk/deb/rpm}/ if =
I remember correctly=2E

What you removed is the ability to run apt/opkg/rpm from your running targ=
et to install packages at runtime=2E Which is a different thing=2E Also a f=
riendly reminder than it's not because you have apt/opkg/rpm that you can i=
nstall packages from Debian/OpenWRT/Fedora/etc=2E=2E package feeds=2E

Cheers,
Quentin

