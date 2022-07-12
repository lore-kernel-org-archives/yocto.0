Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76EE0CCA47C
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 12:15:29 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.8298.1657628123115540502
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 05:15:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WM+qpacR;
 spf=pass (domain: gmail.com, ip: 209.85.222.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id f14so6073246qkm.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 05:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Xp2xHoxOf+V5BpXp1IYmxQ7AoCwlfAKxbjZ05W5nMoI=;
        b=WM+qpacRGFkGtzhstcY2YCUnDLV7A+0IJCM+2MOZqSANiz8Ttv8lzouJeq/7ATVorF
         xAXfv2sdINy3xio6oeMujlZ5WSXU+Si0R1wwzPTLhr+xtNbt3wrefoXhiz9uSjJD76S3
         JEnAlHyfTh2oJewFASASobnRKqt0ZBuuR7aPkvkwooBT61C1jAO6Z/J9ce9YK22R/3LB
         6eNEF/qPd7MU0qT6N3jXxS5VeWMM54YOk7t4cOgAOobkjdFMeqpbRgGRPygQZ845DrwI
         QfO1OqnhyeK6ssIO1xedFacKw0KSDTmUMJ0F3Fr9iqw7kdh2NYfIISzP5EMGuI9zqSbG
         jrLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Xp2xHoxOf+V5BpXp1IYmxQ7AoCwlfAKxbjZ05W5nMoI=;
        b=hJQAWaqtIA3aczQs1Q1Nr9c+N3CEXwkIiiAS2mar6MhdXrHZmIHKKSayChzAsmM1iJ
         +sUZv4mySoMlSdk1MykevYI7gGD9psD7YQ0tDpDiHRRXfiiVmb23s5udImD2LBi46vE4
         b+HJkmqDcrQdm9Bh6ZE5TFcl6Dfn2B7foTBY934OYbpReHphqJyyJay/3tln2txYUlsf
         9bPBMsdaGip9sQEQaq/VMb2U/rMkKArG+Icx0fUaRPkmgaZEagP9ndtDxo1NSv/HyA7O
         RLqEVpmsn/0gY48stIfY0Y1T6Z+ATJitBuX8bVXmkq9vKwcrFGd5bRGIl5+mVg2PGuAU
         Ueww==
X-Gm-Message-State: AJIora/szX766d9PP2/5uu2zWrC9vtTs8p1KOoLC9x8jgNcBWI5KJbc2
	4Yz7NkJPY3XYEthZ3whjrb1U1MGsEyxZu7NiGmQ=
X-Google-Smtp-Source: 
 AGRyM1ve5jMX36fm7h66f6w9n3qf7AviokoOgcmGN7/JHglHN6MgZ9g9qAgavrBoOpGQY2WzYRfL3rvi2NJSTDShPy8=
X-Received: by 2002:a05:620a:1728:b0:6af:59d0:d87f with SMTP id
 az40-20020a05620a172800b006af59d0d87fmr14883144qkb.149.1657628121962; Tue, 12
 Jul 2022 05:15:21 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAKBdzwuDB5E8=TPVCPY-ULyNRnA-BfGe3F-3a_j07N2OrJq3Bg@mail.gmail.com>
In-Reply-To: 
 <CAKBdzwuDB5E8=TPVCPY-ULyNRnA-BfGe3F-3a_j07N2OrJq3Bg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Jul 2022 13:14:55 +0100
Message-ID: 
 <CAMKF1soWVUNaF=LRJe+sN0fTxqpjSNug4wSjtgNY8QR6Og0=xw@mail.gmail.com>
Subject: Re: [yocto] Customizing SERIAL_CONSOLES
To: chris yocto <chrisyocto2022@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 12:15:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57506

On Tue, Jul 12, 2022 at 12:41 PM chris yocto <chrisyocto2022@gmail.com> wro=
te:
>
> Hi,
>
>
>
> I=E2=80=99m trying to customize the SERIAL_CONSOLES variable. In another =
thread I read this can be done by adding a machine-extra.conf file too my c=
ustom layer. So I added =E2=80=9C SERIAL_CONSOLES =3D "115200;ttymxc0" =E2=
=80=9D to my machine-extra.conf, but when I  bitbake my custom image, no ch=
anges are found.
>
> In the conf file from the bsp for the board I=E2=80=99m using I found =E2=
=80=9CSERIAL_CONSOLES =3D "115200;ttymxc2", when I change this to SERIAL_CO=
NSOLES ?=3D "115200;ttymxc2" my changes are being applied.
>
> This off course is not ideal since I then still don=E2=80=99t have all ch=
anges in my own layer.
>
> Is there a way I can solve this?
>

there can be multiple entries in SERIAL_CONSOLES so you might try
adding instead of replacing

 SERIAL_CONSOLES +=3D "115200;ttymxc0"

might work

>
>
> Kind regards,
>
>
>
> Chris
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57505): https://lists.yoctoproject.org/g/yocto/messag=
e/57505
> Mute This Topic: https://lists.yoctoproject.org/mt/92330831/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

