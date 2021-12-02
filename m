Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DEBAC433F5
	for <webhook@archiver.kernel.org>; Thu,  2 Dec 2021 16:30:30 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web08.10512.1638462629246286360
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 08:30:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VRM1YmbC;
 spf=pass (domain: gmail.com, ip: 209.85.222.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id d2so419643qki.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 08:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0FI0p4bxNXhH7AJSunQYVJq2fQWvBCtcWicgnK9/4UM=;
        b=VRM1YmbC0F5f1cc9QCGEzRXRWf5AduENYNcGEhnpgCeM3XmzVRBkPv7X3O0FBitAnC
         WVgSTVzCRNg+l0HiYLzzWZB7uFv7IZLXU5T8AYkTULROgJRkdAW96fSbaYlOQxl3js2V
         tL2ECaujjYUaafyg08IW+EwlS05Mpj4abKyDwvp/strwj735mE5yKOOdJoowWTXn5rTp
         vOFWHvF8ihCe3SjfYGNm8WoorISIhNb2ikFsEoSFljtvNyMwSx7at2t7HmNeXkqrs43S
         o8k4FnCyMRbd3UcnMDESoc9/3h53TeBL3OLpPXTerIUj8YsHqNSGxw6z7ZvHisxqEKQo
         DBZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0FI0p4bxNXhH7AJSunQYVJq2fQWvBCtcWicgnK9/4UM=;
        b=ZMW1h2yeGUu8mIfsIKuI3F5U9zgCzvylBOucXQZiGwNZpFF6KuQsRxfXR1/O+k3vlP
         LyvJeP4TrZi6jtLLLFg/PCRZ7GGsw8GmhgjljxOzaO4bFXdOUdPt+n7pwIxzKGXYKpTA
         SgZOSkHKgUJMXCWlmPAZXOlCIs26liEcc9QKG02ErW6rjGVYuhLz2MedqvVNFBRTEfAF
         +3Ol+lA0ZfqMQjHQvRYEFZJpY8BEr8a9lKsLgRfqwxT1kIuXzE73nJvV1QSXupmMszqd
         6iRSbasa0Gb8UM/SFObi3jk5OKExi9x5dUrB8A3ivYLIkD4JyaRWsRHzQLYYMOCclCbZ
         Hn+Q==
X-Gm-Message-State: AOAM5325ZDkwMuz2tZp3IlxaY91P/2QEr2Tt8uhM+npokUFKaCh/nzGt
	3I2BnmUu+01owfPkUAXPrRneQRb6l0Z63Xl31Wc=
X-Google-Smtp-Source: 
 ABdhPJzAIOtmNxHgzCVf5X4lDO87kguXE+A9OS8gckCfjIHBcpg+pxe4I3nybNKKsAykvzcyFkRtPFxrlsRPDRlJnbw=
X-Received: by 2002:a05:620a:f94:: with SMTP id
 b20mr13054304qkn.463.1638462628280;
 Thu, 02 Dec 2021 08:30:28 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAEj=YVLNh5Msw-LOn+zW_dW5cSRbQSu6j+iQW5vrXMpCMoXdww@mail.gmail.com>
In-Reply-To: 
 <CAEj=YVLNh5Msw-LOn+zW_dW5cSRbQSu6j+iQW5vrXMpCMoXdww@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 2 Dec 2021 08:30:02 -0800
Message-ID: 
 <CAMKF1srM3qePtQvV_M9fQ50ynyCvc3rQ=XYH=z4gaj4svj7qRA@mail.gmail.com>
Subject: Re: [yocto] raspberrypi0-2w
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Dec 2021 16:30:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55467

On Thu, Dec 2, 2021 at 7:08 AM safouane maaloul
<maaloulsafouane@gmail.com> wrote:
>
> Hello, I  writed a conf file  to get the raspberrypi0-2 to work in 32 mod=
e to have the camera packages raspivid. It works just fine. But the problem=
 I don't have wlan0 interface. I tried everything but I didn't succeed in g=
etting to work. Here is my conf file:
>
> #@TYPE: Machine
> #@NAME: RaspberryPi0 2 Wifi Development Board
> #@DESCRIPTION: Machine configuration for the RaspberryPi0 2 Wifi in 32 bi=
ts mode
>
> include conf/machine/raspberrypi3.conf
>
> MACHINEOVERRIDES :=3D "${@'${MACHINEOVERRIDES}'
> .replace(':${MACHINE}',':raspberrypi3:${MACHINE}')}"
>
> MACHINE_EXTRA_RRECOMMENDS +=3D "\
>     linux-firmware-rpidistro-bcm43436 \
>     linux-firmware-rpidistro-bcm43436s \
>     bluez-firmware-rpidistro-bcm43430b0-hcd \
>     linux-firmware-rpidistro-bcm43430 \
> "
>

also add following to machine conf file.

RPI_KERNEL_DEVICETREE =3D " \
    broadcom/bcm2710-rpi-zero-2.dtb \
    "


>
>
>
> Best regards,
>
> --
> SAFOUANE MAALOUL
> maaloulsafouane@gmail.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55465): https://lists.yoctoproject.org/g/yocto/messag=
e/55465
> Mute This Topic: https://lists.yoctoproject.org/mt/87454331/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

