Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02D4C369BA
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 16:56:35 +0000 (UTC)
Received: from mail-24427.protonmail.ch (mail-24427.protonmail.ch [109.224.244.27])
 by mx.groups.io with SMTP id smtpd.web10.25068.1744822592262003712
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 09:56:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=LLLmilJR;
 spf=pass (domain: protonmail.com, ip: 109.224.244.27, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1744822590; x=1745081790;
	bh=+LE+UtFmr5Y6lSGca+7gxFkKc6YcS0ozMS0Qaq/UlFc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=LLLmilJRvp6zS3yOvKODDhRK8A4fZnKnNQo//odTaRjGqCMW7/f1qQ3Gm/L5MgjBt
	 KQcNDvcmfLVu7XduF10G/CHOrTkTyA1AHt8mwj4P0Ubyxf0FQnSAlVeehoWfZZWW6b
	 iUaRxcM4IyCjUqMOy5ok1t+6ziJ9e8tmkTUE+FaqHnHmauKJA2CwjKlWK51d29gvq7
	 0T5QqMOyRdVh5aaEPVN4OezCY7Q/7dc+KYDHPfxozr6JDfGIHk4arKFHrYOX0kQFuH
	 1rfh1qQNh7JKZhfMFG/nvSrJdrMZPlhMsFK37DajtRWTC1DKp+oUY7BwJNi3Em/Ohq
	 snThddGBzAG4w==
Date: Wed, 16 Apr 2025 16:56:26 +0000
To: yocto@lists.yoctoproject.org
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
Subject: Re: [yocto] UBoot recipe not building automatically
Message-ID: <KvbzuyT57agzWx_BFzZzmELDgwgAMPC7KtbQGqt8fSokmuDiEpU698TqMGebIuE5Lr3V7ivR55Xb1GpjhnabjnK7DSMknB0-QtTiL7g2nKI=@protonmail.com>
In-Reply-To: <vmsUTvIprxl0fZcOGriz5LcwHMjSuk5yKUnAr97SrHBWZs8CQwyt6iPHIhXtunmWbB5SakFrj7uoPfmbYyvgPixvx7Ek0oDBxhJZV9C9V00=@protonmail.com>
References: <15TiFE3blEYpDlN-95PaXhc_iS4UkmfSypi_lej7jVMERSuUKRsO4Uc3J5vnY0vYrmyDxozFIiK5NMI_JV8o3g12v966iF4io0XxmxiGuN8=@protonmail.com> <d19ccf3f-ed2f-4f6f-942a-f99afdf62f43@gmail.com> <T5GFYDFeXeCfprONT5vN3PkmUMzUuP2EKqZ-0huMiFiG12kwNrT_ijXv07yg8Du5RPvQIU9vfLH-MZDTP8hEAnMOSTq7rJE6IX6BuIJvUx0=@protonmail.com> <9939c58e-ff63-4177-b3e9-38022ecd73a3@gmail.com> <vmsUTvIprxl0fZcOGriz5LcwHMjSuk5yKUnAr97SrHBWZs8CQwyt6iPHIhXtunmWbB5SakFrj7uoPfmbYyvgPixvx7Ek0oDBxhJZV9C9V00=@protonmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: 5dae287a1c14ce50acc362250da66a2353f0d8b0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 16:56:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65198

I have a question, why did it automatically build the linux kernel but not =
the uboot? I haven't mentioned EXTRA_IMAGEDEPENDS for the kernel and it sti=
ll gets built automatically.

> Thanks!
> It worked now.
>=20
> > I suggest adding EXTRA_IMAGEDEPENDS as an addition to the existing conf=
ig.
>=20

Cheers,
Kanak Shilledar

