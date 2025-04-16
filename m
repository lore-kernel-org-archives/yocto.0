Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB356C369C2
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 13:30:04 +0000 (UTC)
Received: from mail-43166.protonmail.ch (mail-43166.protonmail.ch [185.70.43.166])
 by mx.groups.io with SMTP id smtpd.web11.19273.1744810195356607489
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 06:29:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=XXh7o4Ij;
 spf=pass (domain: protonmail.com, ip: 185.70.43.166, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1744810192; x=1745069392;
	bh=dSmWf9MBPiMK6LUdynxe3oWg3IP1A5ZJVP35EtnElHU=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=XXh7o4Ij51q12T5QNDUtlQ/GeiIGWcl8266zYxK/qpZ+AhzRmWm4nr7WVmxrzUUga
	 8J81z6bLskh3nPyN2cFcR7ZL3KGwf3iAFpLtGsfz4ZeB3XvC0nylhWiqRkWmlWSOqK
	 jAsxF/bmQCRxezDd7deugxfI2orWy1uy+TgStI7YvdiL7Gu/XRpwCeBMwGhCp7SPQS
	 KW8MJ+3ERr2/KUJrTH5aAABrTONiplrt9kIGHq4ZOJxP5OnFd3oeRCzxH2iqSoIvPG
	 0n8umZsO7xoX9vg4dw0unmy+ZgQBiDTBrKf4xESKRAWc0O1jqfBd3y/rNYCzj/sG2X
	 DadFicCm6q6Ug==
Date: Wed, 16 Apr 2025 13:29:45 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: UBoot recipe not building automatically
Message-ID: <15TiFE3blEYpDlN-95PaXhc_iS4UkmfSypi_lej7jVMERSuUKRsO4Uc3J5vnY0vYrmyDxozFIiK5NMI_JV8o3g12v966iF4io0XxmxiGuN8=@protonmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: 3d220907bd9be09dbc6c1c51d43c603b649a280f
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 13:30:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65191

Hi,
I am trying to fix the support for beaglev-ahead in meta-riscv. When I am t=
rying to do a fresh build of core-image-minimal, it is not building the ubo=
ot and I have to trigger it manually. [u-boot-beaglev-ahead.bb](https://git=
hub.com/riscv/meta-riscv/blob/master/recipes-bsp/u-boot/u-boot-beaglev-ahea=
d.bb).=20
board configuration file: [beaglev-ahead.conf](https://github.com/riscv/met=
a-riscv/blob/master/conf/machine/beaglev-ahead.conf)

How can I make it to build automatically?

Thanks and Regards,
Kanak Shilledar

