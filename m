Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03535C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 11:29:20 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web08.35535.1653910157692944109
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 04:29:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FDLMOZ4d;
 spf=pass (domain: gmail.com, ip: 209.85.167.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id j10so16193446lfe.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 04:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pDzzLcDY9DLEWHCYaaXXwk/FgmOwK/Pswhb6K6zY5Yg=;
        b=FDLMOZ4dAv+SCFCvTgQ+Nbu1CO1Y8Pxv8T8S5piVRIehYBN5SBI6PNyTHzDAqtyCJC
         uSTWIFc74lPhYqq1YeLi19pLNMpwHpdSJkrPZGC9rEDeemoxyFKJ6LIRCxag53UZKnFV
         k5qfIvPCUvp56sMFHlY3xDiOZ9H38LMDPqyBKY/9BgcuyoSqcm89yMxBKnwdZIh40uli
         70qI9EfCPbvR5bCRMkZ38uAePH/3yQjsidu7kUvO2IMJZC3bw6PoaBaxM7AZzHMGVTfM
         4PvN2aZNrqcyOdnz38AUyoZbm4cBTEk1OLRBRQg9tH/kHocgydcHpU9OBabp6XhQDKeV
         jIBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pDzzLcDY9DLEWHCYaaXXwk/FgmOwK/Pswhb6K6zY5Yg=;
        b=sQrC26GSMtvJYRukDGpzQCkqG8jnS4LuFQTx7Xc0bc5f/Uhl7FPtF8fv+DxsI4JtJ4
         D5Y6up6o4c+z/1fHJ1Lq6FBhssUv02oJAgq7aIyxcGgoYsUg+Lc93Ex7eVhiCGdp0KHC
         wXoxbDEw9AXmb+B9UVaC8oSvVLfkd0p+9XxDnEpifYV38wIqxL20MNeFXhCkt7Rk+6Vq
         T2XQJAxBlq0e2HzpbHtyduJkt1yDnvUrk6VIci/KUWfWw+V1nW2OGSM40zZ23hMQJRWw
         8hemEgaFkI43TQlzYosYB5xVEEDhwtpBUxQxWaA/hux8qC9SnWetmvBaB9/VqzTq3o7e
         UoMQ==
X-Gm-Message-State: AOAM530rQqXXfWS6obTQfoQPGSHzWcBppg5sHPFGh0nZc+CUYYwqemHS
	W/SDXLZpvmjcYnsDb1Fi3xEXp0UXZrS8Bw4Xq/8=
X-Google-Smtp-Source: 
 ABdhPJxskmKtvQ64knnqWLUlD+Ss2puK9OKBzfSk8FEZJWy8eUTrD/VlpA718VVZ4LPvv2bdSO05J17u3Jj5jXCnJdc=
X-Received: by 2002:a05:6512:e93:b0:478:70ed:6dfb with SMTP id
 bi19-20020a0565120e9300b0047870ed6dfbmr25544313lfb.358.1653910155432; Mon, 30
 May 2022 04:29:15 -0700 (PDT)
MIME-Version: 1.0
References: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
In-Reply-To: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 30 May 2022 13:29:04 +0200
Message-ID: 
 <CANNYZj9Lr+1edD9Ha4wMYGuEYgZX6y9D=wn26YOH0J0SMH0H=g@mail.gmail.com>
Subject: Re: [yocto] How to modify an existing file from an optional recipe?
To: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 11:29:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57212

You can do this with a postinst scriptlet, or with an image post
processing task, but generally this looks like a hack regardless of
how you do it. What is the file for, and why does it need to be
replaced?

Alex

On Mon, 30 May 2022 at 13:23, Cardenas Jose Antonio (JCARDENA)
<joseantonio.cardenas@niko.eu> wrote:
>
> Hi all,
>
>
>
> I have a recipe that is built only with the SDK that modifies the content=
 of an existing file in the rootfs by doing =E2=80=9Cinstall -m 644 ${WORKD=
IR}/my_file ${D}${sysconfdir}/my_file=E2=80=9D but this command is returnin=
g next error:
>
>
>
> Error: Transaction check error:
>
>   file /etc/my_file between attempted installs of my_recipe-1.0-r0.7.armv=
7ahf_neon and initial_script-1.0-r155.1.armv7ahf_neon
>
>
>
> I have seen that the best practice to modify an existing file is to creat=
e a .bbappend but this modification would be done for all builds, not only =
for the SDK. So what would be the best way to do this?
>
>
>
> Regards.
>
> Jose
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57211): https://lists.yoctoproject.org/g/yocto/messag=
e/57211
> Mute This Topic: https://lists.yoctoproject.org/mt/91428591/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

