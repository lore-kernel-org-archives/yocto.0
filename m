Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF04BFA1FC5
	for <webhook@archiver.kernel.org>; Wed, 22 Apr 2026 16:11:13 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.86576.1776874263995914658
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2026 09:11:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=ZjNMjMWu;
 spf=pass (domain: smile.fr, ip: 209.85.128.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-488a14c31eeso44781025e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2026 09:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1776874262; x=1777479062; darn=lists.yoctoproject.org;
        h=in-reply-to:references:subject:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RzZikSGrGoAXsV1+lXvj9qjCcq3WuvbK9AD5AvZV8Wo=;
        b=ZjNMjMWupAlSEmBf8QYdl/Q/jV+kg3XjYp36dLIbybktJVXi1scktauakiRL4PwXLO
         /D3Aa/dc0jXUEeDGGOPGeOrg0FvKVOWH73U0nlyNEP5HwXc9CabjdZpV45h8DlMJBF4V
         MNjAvp5z7D5lQY2BJtsGpvU5tzDKsi2glbiy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776874262; x=1777479062;
        h=in-reply-to:references:subject:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RzZikSGrGoAXsV1+lXvj9qjCcq3WuvbK9AD5AvZV8Wo=;
        b=jjDv/TX7hmCBGoqR/L7MlRnWW6Ch6YPN26Fe1RHawb0Yl5Jla/4aoZLHC/s5R7iyDg
         A/gaGvm2P2qcxijG287Caj4j/8KQsqlqXHybCo25ItMAx+q/GwAEiv0f25lgDdP53wmV
         DL8vvJU4/PqzQx+gp42jjYzlTLl1urXsx2bYJMNqVZAsf3+o6RCzMBlITkONGRgsWQEk
         mDJwDl88TOaPfWOV+8F/mdcy+mdicLNbSHLHgswMsUoKRba1dNr/n7EWzbwIcYj05DAs
         /SC7HplhGKRfNedOwu6JUIRXtYo9fvoN4kJMKZUu67Oh+IGIgS3AWZE07LbCZjPzc+Pa
         F2pg==
X-Forwarded-Encrypted: i=1; AFNElJ93Z5BMiW6FM8ZnkKv9Mr9jJlsYLKMBYWcEm5hbK2hi/M4QPAhzbH+tcpQyvB+WaKvC7qRaYw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yxv2zQH8aniEamjP99Gn/ovGFh03s4UA4wBMPUozzBVaozPDp5S
	mfQ9SXthNSsbp5NFS1ChrPFbTLIS0ztOaGiv4GEbAdxAty46vbRlAKaTqV0e0n0s+Rg=
X-Gm-Gg: AeBDieuvVXPy74C6/T+DQclfb80U9FRAA+xRGy2sr/nkblaB2QUj0FvOeL+Y8yYuOio
	fsKv+vJbtLbqpJCiPnqOZulAk5mJTXbnZFZHE8AFthT9+LR8UQ//Zg9C4Sy4vyx1un3nqH2OL2S
	2Jj0lxWTHTYl1fbAZkC+H8XALYOR31PTZVUSW7qFqK+UY3kGDLft6eMAsdciCYV0QBUND/zZWei
	qQBvvZhOt2+cnL9d/AkxEkIh0GE+5izJvwC94BfS+JNtb0p+ge57TgzzCi8HYMAL9doSEgQ6MIT
	i1YrPbdaCDjdUwyR3hxXafWpPZU72xafHs+h3cr1piX0zXgt+cq3C/+uwR2GszrP396K/mMmvAL
	Ps/s5EhYs77K3SDMy5Wm/9EIJg9ni2IkvqYHvLKfwlf48b+YSC4NVRwJOiCySRNZUG8pdQOWVLu
	hNOrfZitQEhwAz9S+YwAK8kGCaxkLTCPhVN+sezImTY6Bh4zTL+pLNa7RMTRBu/nJQ3b9tI1qAH
	lV9lV02ZCTkuicKO1MDMw==
X-Received: by 2002:a05:600c:34c3:b0:485:41c4:e2e4 with SMTP id 5b1f17b1804b1-488fb792dd0mr320576235e9.23.1776874262081;
        Wed, 22 Apr 2026 09:11:02 -0700 (PDT)
Received: from localhost (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a575ad67asm104516485e9.2.2026.04.22.09.11.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 09:11:01 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Apr 2026 18:11:00 +0200
Message-Id: <DHZTCUC2ZEWH.3JDOYJJVYIHW6@smile.fr>
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3.4.rc2)
X-Mailer: aerc 0.20.0
References: <0101019db5b9c9c6-54bc1bde-c822-4bd3-97ef-cb495b537099-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019db5b9c9c6-54bc1bde-c822-4bd3-97ef-cb495b537099-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2026 16:11:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66432

On Wed Apr 22, 2026 at 5:05 PM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
>     A build flagged for QA (yocto-5.3.4.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.3.4.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3711
>
>     Build hash information:=20
>
>     bitbake: 713fbbdb9ecc195ceb2216a2345e0d79dbee2135
> meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce
> meta-arm: 4dc2a7bf29c1853b95dda53d9527f0a23049295f
> meta-aws: c570c7c325a60e4da29a28db014769be0f7f621e
> meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
> meta-intel: fc9bc44c9da5e7e7bae38313615aaff5873b843f
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: 8bcdb0cc1dab116253b409e78fb868ced7d8397c
> meta-qcom: 96edf508b3f2b83c10cc2f80cee5396af360cff4
> meta-virtualization: 8f03a0cc8950ef5d5e4f11d9ae494946d1991e45
> meta-yocto: 3f2e6b6fadfa542f0fe3738375a2f9fcbd4c1f6e
> oecore: 8751ec83421192fc0f8495fb95798f9eb7be77a0
> yocto-docs: 10818445a22c524de0934901547cf676256c2b9d

This build had a failling ptest in
https://autobuilder.yoctoproject.org/valkyrie/#/builders/61/builds/3537
Caused by 16241 =E2=80=93 AB-INT PTEST: util-linux ptest failure: timeout
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16241

QA can ignore this build, I've restarted it.

Regards,

>
>
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#695): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/695
> Mute This Topic: https://lists.yoctoproject.org/mt/118956302/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


