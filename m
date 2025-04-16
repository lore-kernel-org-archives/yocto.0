Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A12C369BA
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 16:41:55 +0000 (UTC)
Received: from mail-106103.protonmail.ch (mail-106103.protonmail.ch [79.135.106.103])
 by mx.groups.io with SMTP id smtpd.web10.24541.1744821706846914306
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 09:41:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=I2r0OPgk;
 spf=pass (domain: protonmail.com, ip: 79.135.106.103, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1744821704; x=1745080904;
	bh=osZBAOrWoxI7Tfl5GD/XKUtdG04aphAqv3nzqnq3Sd8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=I2r0OPgk9FB9VYSxBugQKjcQMKvqKoGNOQB/2BXD2Jpq1qmIgREqG8vxde4atqmug
	 ZW5sCULjGQc86unlReQXtMoMEmelVBzDh/zqRRNVV7tVDVpFtrTun0N6739UQmz9ZL
	 SMS7vKn6iKJnXDUjP7igM8xGKT5+C3sguZcPfcsiFW+LS+yhlhi79fIGmSz+XS46Kg
	 bOxV6feIpnAiRwVC1/PciBMiaYSt7udACV+idvj2yYgffzEN7K+RPdMI9KD7tbj/mG
	 p2rc7GDUFF7zaY7sR5DzQebcDMkatHJwKJWrZ4KjRHRKU0Ww89D+Z9/RjDLe4j/xKX
	 C26LLe+i1nEmg==
Date: Wed, 16 Apr 2025 16:41:41 +0000
To: yocto@lists.yoctoproject.org
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
Subject: Re: [yocto] UBoot recipe not building automatically
Message-ID: <T5GFYDFeXeCfprONT5vN3PkmUMzUuP2EKqZ-0huMiFiG12kwNrT_ijXv07yg8Du5RPvQIU9vfLH-MZDTP8hEAnMOSTq7rJE6IX6BuIJvUx0=@protonmail.com>
In-Reply-To: <d19ccf3f-ed2f-4f6f-942a-f99afdf62f43@gmail.com>
References: <15TiFE3blEYpDlN-95PaXhc_iS4UkmfSypi_lej7jVMERSuUKRsO4Uc3J5vnY0vYrmyDxozFIiK5NMI_JV8o3g12v966iF4io0XxmxiGuN8=@protonmail.com> <d19ccf3f-ed2f-4f6f-942a-f99afdf62f43@gmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: 1ddf18c0c5cd742f1f9fd266b9b484fedddb5187
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 16:41:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65195

I have
PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot-beaglev-ahead"
in my machine's configuration file.=20

I don't have the EXTRA_IMAGEDEPENDS anywhere set in my configs. Do you sugg=
est removing that PREFFERED_PROVIDER after adding EXTRA_IMAGEDEPENDS?

On Wednesday, April 16th, 2025 at 10:06 PM, Gyorgy Sarvari via lists.yoctop=
roject.org <skandigraun=3Dgmail.com@lists.yoctoproject.org> wrote:

> Do you have
> EXTRA_IMAGEDEPENDS +=3D "virtual/bootloader"
> or
> EXTRA_IMAGEDEPENDS +=3D "u-boot-beaglev-ahead"
> in the config somewhere?
>=20
> Usually it's in machine config, but maybe you have it somewhere
> else. If you don't have it, add it to the machine config, and give it a
> test build.
>=20
> See also:
> https://docs.yoctoproject.org/ref-manual/variables.html#term-EXTRA_IMAGED=
EPENDS


Thanks and Regards,
Kanak Shilledar

