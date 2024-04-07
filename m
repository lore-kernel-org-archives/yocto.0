Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B4CD1292
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 20:11:07 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web10.90922.1712520662136200512
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 13:11:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Dj55SHEb;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-221a9e5484aso2477832fac.0
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 13:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712520661; x=1713125461; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=inq4ci2KHiDb4fqelY3/8KIa4W1/KisUrOY/qJzQXQo=;
        b=Dj55SHEb6szr/ZqJDhKCvJELTpAHYcjFJIOXARhUSLVd3fjfzVCmDP5cdplDT+0jh7
         YiU08qw7jgGF5Bh1fVrk8TOf8ndygTTl/FnxMZ33wMykS+K+dYv3j97t9blpK+CdT0SE
         8EsLFz4X3kUdwUSKdN1Sl5RzDDcQ4T+l0SvRmh2KLLlJ2L8YZLvqsopY/50rV5zs928/
         hGpbFqctd7aWlM+Bsv4In6Y3p44hnTGw8v1+AB9rEWurc3hp+2PKyrw6imm2xl/JSxu5
         8rJM8vq9ZgS4m9Ygkwp963+s136pAAj6cahXNAH1Lms0uArPhnQuGXC/XN0Jc8AqTHNU
         V4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712520661; x=1713125461;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=inq4ci2KHiDb4fqelY3/8KIa4W1/KisUrOY/qJzQXQo=;
        b=taxDXijiYwFMdaZmytFeP5Mzh5dLMW1k/3hTlwz/b1GTVZO6uuyFwyAjuhhKyvWicZ
         SCd5us44QUrpqifK/S181p7cIMfJJLWD+BFcE75tLb45QEZDEYlLKch6x8yqnWWOLkrX
         opiDpyZHukVNfnUH5bq8sgZidAVDz1aeVv2cq6/kqphcOhJpDZRoKhuduGzg25qEXFcs
         cTtcKRP2ASjtH8OCR5m4VMCmPCPYjJqENgIgqKsjr65FR5Cio9Cfb+niUxJJO1r2bSxJ
         /JKT925iPhfhQmS4vG8YzSGFqJHjYLqgYlBeaucmpFF1lffG2LFrCaSHRTdEibx+oFTm
         +B9Q==
X-Gm-Message-State: AOJu0YxRoc/5bMwWSsWZ0Pl/I3lZkuFnCxOyxNopNcJ5Ijv9UoLzXzgA
	NcFVWmd/cz0WE7+IeXxyDFE/0fLk+9cS9qfBrLbCYALPEqeWfBa1nY6cuNRimZE1mqSoKE/Pmfw
	sOsFLASk3v/asZdQEHtelBf7I2HP/gmPH
X-Google-Smtp-Source: AGHT+IHF+PW51IOkFHKWGDXIqUOd2A98Oo44w7+AwendWscrvtjo5qUPbBlEca2FOcDSGBKkJgFt0IEtm+OsPUAkPzM=
X-Received: by 2002:a05:6870:64a4:b0:22a:828b:57ea with SMTP id
 cz36-20020a05687064a400b0022a828b57eamr7108639oab.53.1712520661193; Sun, 07
 Apr 2024 13:11:01 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1712518899.git.tim.orling@konsulko.com>
In-Reply-To: <cover.1712518899.git.tim.orling@konsulko.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 7 Apr 2024 13:10:34 -0700
Message-ID: <CAMKF1sr-jARNHK4c1nW-idjuCj=tXfb1fDg8vf4kViE7XsAkMg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 0/3] Initial u-boot support for raspberrypi5
To: yocto@lists.yoctoproject.org, tim.orling@konsulko.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 20:11:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62895

I think it would be better if you opened a github PR so it can run through =
CI

On Sun, Apr 7, 2024 at 12:54=E2=80=AFPM Tim Orling <tim.orling@konsulko.com=
> wrote:
>
> Enable u-boot for the raspberrypi5 via the meta-lts-mixins 'scarthgap/u-b=
oot' branch.
>
> This is initial support for raspberrypi5, not all features (usb, ethernet=
) are enabled
> in u-boot yet.
>
> You may need to have a UART dongle plugged into the 'UART' port between '=
HDMI0' and
> 'HDMI1' to get the kernel to boot. Your mileage may vary.
>
> The following changes since commit d072cc8a48571a4af40a937f98e173b5c9468c=
4f:
>
>   rpi-base: Add hifiberry-dacplusadc overlay (2024-03-28 03:35:31 +0000)
>
> are available in the Git repository at:
>
>   https://github.com/moto-timo/meta-raspberrypi scarthgap/raspberrypi5_u-=
boot
>   https://github.com/moto-timo/meta-raspberrypi/tree/scarthgap/raspberryp=
i5_u-boot
>
> Tim Orling (3):
>   layer.conf: rpi5 recommends lts-u-boot-mixin
>   u-boot: re-enable rapsberrypi5
>   raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT
>
>  conf/layer.conf                      | 3 +++
>  conf/machine/raspberrypi5.conf       | 6 ++++++
>  recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---
>  3 files changed, 9 insertions(+), 3 deletions(-)
>
> --
> 2.43.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62891): https://lists.yoctoproject.org/g/yocto/messag=
e/62891
> Mute This Topic: https://lists.yoctoproject.org/mt/105388889/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

