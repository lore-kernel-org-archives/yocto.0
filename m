Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04E6C369BA
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 16:51:15 +0000 (UTC)
Received: from mail-4319.protonmail.ch (mail-4319.protonmail.ch [185.70.43.19])
 by mx.groups.io with SMTP id smtpd.web10.24936.1744822274009163983
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 09:51:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=mnB246BD;
 spf=pass (domain: protonmail.com, ip: 185.70.43.19, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1744822272; x=1745081472;
	bh=hNtzlwoswFule8b9ccGHdyD1/NfcHOcgMAc0tJivgRU=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=mnB246BDaygE0xK3q94RfgOcRNtzGTGRC9pOE75DIicyaP/D62j2byUkz5eAk6sYI
	 zZIuv/WsSlL9ZAmomvWIT2y3CZbfPbWvaKl2q57PhwAA7+eUgL7rbbvYVeh4eLwQcK
	 EvD8V1U1nEe8NWFBMm/ipdsyR56PtepA7r3C3mUU/1h2zPjDGkbRxNa4wt3AnDz18Y
	 dEEnDic9CfIsmDhxUeWeZ4eS0anRZg41CplkvbiAQO6bxE72sR2ygFRDUuxGNWQ+Ju
	 QJo4LbCcRVGVn19BzmbdwVdj7v7iI010UDuhznWUWmN4A1sUOjB7CC2O05AQoh9BVL
	 18fmIB5SxSB+w==
Date: Wed, 16 Apr 2025 16:51:06 +0000
To: yocto@lists.yoctoproject.org
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: Re: [yocto] UBoot recipe not building automatically
Message-ID: <vmsUTvIprxl0fZcOGriz5LcwHMjSuk5yKUnAr97SrHBWZs8CQwyt6iPHIhXtunmWbB5SakFrj7uoPfmbYyvgPixvx7Ek0oDBxhJZV9C9V00=@protonmail.com>
In-Reply-To: <9939c58e-ff63-4177-b3e9-38022ecd73a3@gmail.com>
References: <15TiFE3blEYpDlN-95PaXhc_iS4UkmfSypi_lej7jVMERSuUKRsO4Uc3J5vnY0vYrmyDxozFIiK5NMI_JV8o3g12v966iF4io0XxmxiGuN8=@protonmail.com> <d19ccf3f-ed2f-4f6f-942a-f99afdf62f43@gmail.com> <T5GFYDFeXeCfprONT5vN3PkmUMzUuP2EKqZ-0huMiFiG12kwNrT_ijXv07yg8Du5RPvQIU9vfLH-MZDTP8hEAnMOSTq7rJE6IX6BuIJvUx0=@protonmail.com> <9939c58e-ff63-4177-b3e9-38022ecd73a3@gmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: f292da3d31f3b314ca79f76db64a4180023065d7
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 16:51:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65197

Thanks!
It worked now.

> I suggest adding EXTRA_IMAGEDEPENDS as an addition to the existing config=
.
>

Cheers,
Kanak Shilledar

