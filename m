Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 711D0EB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 22:04:55 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web10.1174.1687557894568230454
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 15:04:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=mGPaC5KF;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1aa291b3fc4so983699fac.0
        for <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 15:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687557894; x=1690149894;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pM0JXO6WP1X7gt7amVkuLuYRGnGu0tYr6kjYgChflno=;
        b=mGPaC5KF0j6RrllwhVs97vwgflFinKlwFp8Cm54aYT8/hC8fxcOHFdusqCkt8rVHtg
         FFeT+d+kFv+GounghabGkPzptai/Kufy5whLsuP3Ec4DWHBVknoptvV0acxT61skx59e
         WN7lEwjnI4VC6agU2VUh8eYQMWYKHH4M0IYwF00nf2yaCuQ8qxbbIdVcivzMTdxf+5I2
         4COhEb4sfGzX74JHHsldyHTHz9kQFYaAXYPCCbRfd8IT0OH6EbduMkQNCy2CBJ4PaeKT
         F2VuHhcwLKncrv6vOe3XZh06VlUxpay1JctODTaO80rTTYykSfAx7lIf+1Knv8mA7N0q
         dQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687557894; x=1690149894;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pM0JXO6WP1X7gt7amVkuLuYRGnGu0tYr6kjYgChflno=;
        b=FUrQh/ja5SoYe3YHcUvU1LfLyKykeP4uEJZ8bi5l9q4fdUe/tVzAslMQSWNf/4wu5h
         e/f4C5m9Frghp20Szzaob/jt7ViK3vW3hiu94mvsE5CfH+5mHrjkCfMS7ouDIBb3stcd
         ZhVhs3BQB31Cd2K0HHi3RdwQYVGTAlldCPVGrgxmPoNi8lFO0nYnj+Fj0j1L7lL5haMX
         A23kCFICt5HcPu7HjRZs1rQYzvGuDvU+qkHBnEuaxud6985BtkFjiEBK143meGaNsZNS
         nQmYqPq9kyiVEEkUT20yaUo0U3Cgxnjr83hhkPEqvXG9yvexFMzKIfrMTGQaswUeYnCF
         BbLQ==
X-Gm-Message-State: AC+VfDzevlI9ibwDxMRbVpV1T+PokKkH5odlAbzfojTu+4BacJA9KLWD
	0uSIidfcRkeGcSKTnJocibV5rDWMNGh3IevXK58=
X-Google-Smtp-Source: ACHHUZ59XQkadppkU4+mjpU4s+R/BTsHT1P5WFdNYPs3PQfa5+LhAdHltHAKkdCB6SJV1FwPgpvRxDo1mVVdmNACI6U=
X-Received: by 2002:a05:6870:c356:b0:1a3:7645:c9c0 with SMTP id
 e22-20020a056870c35600b001a37645c9c0mr13177179oak.18.1687557893498; Fri, 23
 Jun 2023 15:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
In-Reply-To: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 23 Jun 2023 15:04:27 -0700
Message-ID: <CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 22:04:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60422

On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreither <ManWag@fastmai=
l.fm> wrote:
>
> Hi users of meta-raspberrypi,
>
> I'd like to ask around if for you people vc4-kms-v3d (opposed to vc4-fkms=
-v3d) *really* is the working way to get vc4 support on a Raspberry Pi 4 Mo=
del B.
>
> Both on master and kirkstone, vc4-kms-v3d is the default. It's defined in=
 /conf/machine/raspberrypi4-64.conf:
>
> VC4DTBO ?=3D "vc4-kms-v3d"
>
> I was mildly surprised to find this, because on my system (running Kirkst=
one) I can get the screen to work only if I specify vc4-fkms-v3d.
>
> Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build. The c=
ommit message further suggests that vc4-Fkms-v3d is broken, while vc4-kms-v=
3d is not. So I'm wondering:hy is it exactly the other way round on my mach=
ine?
>
>     raspberrypi4: Use full kms (vc4-kms-v3d) DT overlay
>
>     With latest 5.10 kernel fkms version fails to bring up VC4 and we do =
not
>     get dri device initialized ( /dev/dri ) is empty, which means we can =
not
>     launch wayland componsitors.
>

We have moved away from 5.10 kernel to 5.15 and then 6.1, so its
possible that fkms is working fine again.
If you test it with both vc4graphics and userland graphics do both work ?

> Best regards,
> Manuel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60421): https://lists.yoctoproject.org/g/yocto/messag=
e/60421
> Mute This Topic: https://lists.yoctoproject.org/mt/99727959/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

