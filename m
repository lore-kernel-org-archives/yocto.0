Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63217C7EE25
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:15:47 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.6920.1686140144731369551
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:15:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=DlGK+Psq;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-4f505aace48so9161962e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 05:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686140142; x=1688732142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2TUxrRwDON1QEaV8XH7RI2t0tDnFSf5wMA/GdJHbd/Y=;
        b=DlGK+Psq5G+z9oRyWQWrk85kAfZVjyUTiKGIC/0IKkq2lZPi/pm+YC9OMfVkpGCUMt
         To2G+Cui53P+w8ImnOhDjsKom0ihS/ZcF8UaH5YIaQeODOmet3EKUnLQ1K8TAnPKBq8V
         nvfmMcHoQo3qPP0ff8f9zMLA+HiCmKg2Jy75li+a9kiD/Q7sgeYs7vRaAQftz22o5oft
         NdznGZ8Bkp7Q7bi91ZCYzHhi4Lv85fHGNV6KwCGhRPsZ4dJU+Fo9T/2gtBfZlj6zNlKm
         ggis0UDrk1Webvc8+nEU+Jlx2jaQ+UhnwFmF3fJycFD5ck1KHOFFK0O5O2N4xcKUmlf0
         RRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686140142; x=1688732142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2TUxrRwDON1QEaV8XH7RI2t0tDnFSf5wMA/GdJHbd/Y=;
        b=MqGkCUawd/4ljGYzcbOx3kVMS9hsXN0D+nbBLt/QVkOBzaMFh0wAWM48s2IPsEQcUn
         fgRTsJM9CUZ9PkgFYignuAxtNwObs0rs4n54yBM1J2Sw6B03kvWgAoYeKNivo131WzVS
         RBpn4EKdUchNcFzdjsJ+pp4J5iKaaVr42D6rTI50xeCmVvVgyKOYR/z0pGzcwqIjVGtq
         Jizz4CrIMSscGhBWyFxy73FSBG+fQsQpJFGtT4AC7K3heFThLcOdg/wHmee3G8ClUS3F
         QWfFlWfjSsNiSMoqC3Wv2uVgQn/h32gZQ3hvYn1cFJMoDEra3PDJNvoWXbvq7Shq6ZQ8
         7N+w==
X-Gm-Message-State: AC+VfDytMGuPh1Q2RkbXF1+VbRxYet49p1o9qUK0XATD3KCag5BdVrSP
	inwHPyELoj6p0ZQivdKC3ScyPe4m64glTjLkA9s=
X-Google-Smtp-Source: ACHHUZ7IHoJpIUttdBSon62Bznbo3rgwPDEz6LwtgI0U5GUkf5F9QwyocT9aCE3YvzaKDqaVrDXMj1H7RqcklXr32BE=
X-Received: by 2002:a2e:7210:0:b0:2a7:974d:a461 with SMTP id
 n16-20020a2e7210000000b002a7974da461mr2286943ljc.34.1686140142192; Wed, 07
 Jun 2023 05:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <ZIB0W0oQNaSQ7oxi@aglaia.inside-m2m.de>
In-Reply-To: <ZIB0W0oQNaSQ7oxi@aglaia.inside-m2m.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 7 Jun 2023 14:15:30 +0200
Message-ID: <CANNYZj_qehN1O+wCswYOhgQGrZGAaf1bBkHGQAkv7gynMRykVA@mail.gmail.com>
Subject: Re: [yocto] Approach for generating two WIC files at once
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:15:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60204

The easiest is probably to make two image recipes pointing to
different wic files, but sharing everything else via .inc.

Alex

On Wed, 7 Jun 2023 at 14:13, Konstantin Kletschke
<konstantin.kletschke@inside-m2m.de> wrote:
>
>
> Can the build system be extended to generate two WIC files for on run,
> is that possible?
>
> I need the same rootfs once with a boot partition
>
> part /boot
> part /
>
> and one image only with rootfs
>
> part /
>
> so I can write sdcards with same rootfs for older systems expecting root
> on mmcblk0p1 (BBB debian based) and newer ones expecting it on mmcblk0p2
> (BBB yocto based).
>
> Is that possible, how could one approach such a config?
>
> Kind Regards
> Konstantin
>
>
> --
> INSIDE M2M GmbH
> Konstantin Kletschke
> Berenbosteler Stra=C3=9Fe 76 B
> 30823 Garbsen
>
> Telefon: +49 (0) 5137 90950136
> Mobil: +49 (0) 151 15256238
> Fax: +49 (0) 5137 9095010
>
> konstantin.kletschke@inside-m2m.de
> http://www.inside-m2m.de
>
> Gesch=C3=A4ftsf=C3=BChrung: Michael Emmert, Derek Uhlig
> HRB: 111204, AG Hannover
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60203): https://lists.yoctoproject.org/g/yocto/messag=
e/60203
> Mute This Topic: https://lists.yoctoproject.org/mt/99383108/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

