Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524DEC25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 19:55:10 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.23703.1715889307702246167
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 12:55:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=knrS2wVd;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-523b017a5c6so1917283e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 12:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715889306; x=1716494106; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wir5OpCakt49GD5KB3Dz5pNIKWRSNMfw9G6/KxN99Lo=;
        b=knrS2wVdN8l/1bN8WH27wJJAOkKkfRhiAK7bSKps3Ec7jCM+wpbRr5jwJYWXC+rrU+
         8Dm4bJwypUixqsnTEosBFulm6AeSVp8/2mujoi/Df3un2B5dU2md9tAUhgB4URZsmPAs
         35OK5Etcm6Dpg9HgTlVYlYq5upBWjr+daBePlCweTMTVWzEqRrKs0CzPJYqs7+/bEu8s
         vq4mt5h2M2X+QMJ2thNJKbS39CmCLsuNlJOIjAjiEj0eHXSGx1WRaTpOcbeyVNVpwMR/
         BWSm6LedYoD+xkGdJkXCiX94puopn9P8E9re05L3F8qua29INJyb0DL5woJJ5blN4cyo
         EvJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715889306; x=1716494106;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wir5OpCakt49GD5KB3Dz5pNIKWRSNMfw9G6/KxN99Lo=;
        b=fkSOPFZYI49quZyYP/swMWO9oomfW75lU4cZat1z7lGb72RdjzujwawvZQGodaODTf
         J8vLw3iBWh3EBJnP7HIaTIw8ylkjBLCdZq3M+QypdzAsfiHM5Rczh7pjbeqcEcE6y8Qx
         VU2KsXZFeJrTwEvgt1XbusydC73P5y0pqUFx7WWaHZkVZ1zLw2e4yZ1lsG3zCC+Mj68h
         Ja8AOf9qTG2HiN+61TpMjMHEVelUyhyi+KuVo6EsuPvLoQNW82BRvgV75I9gX6YQJriO
         +4FDl5lhWI7dnwrOJ3/0c286QU28rvYgxMBdslGlZdSbToCT1F9jiN90Bp7XoHdpkAzW
         8gaw==
X-Gm-Message-State: AOJu0YxUPjfOI+Klt1q4YajSprUK5GUqg/CDp6PImBFcHd/Q+JG7XK2H
	TDWdkHDAfcSDWwulJx6WQq+3iSUGnv34sZiYlL4980nEV9LxRxE5xzcvi/yUG/5ERviAvgK2DND
	DG1I9rHhAI9gS4rtFfiT9zZgBKXyiBw==
X-Google-Smtp-Source: AGHT+IF5Kh/+Y4c6g/EIZ6Df/XMeLHO8IOz8dHbJRX+XiYnBEJVd6lXTd2aNbp2jBIbtZMRwGQOV/PlV2vj7AOi2gxs=
X-Received: by 2002:a05:6512:4003:b0:522:221:d19d with SMTP id
 2adb3069b0e04-5220fd7bfccmr19256225e87.15.1715889305475; Thu, 16 May 2024
 12:55:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
In-Reply-To: <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 16 May 2024 21:54:50 +0200
Message-ID: <CA+chaQdFtjos0jHY71mO-dy-MneHoP9-Mmp4FEm9rSBoLCx14A@mail.gmail.com>
Subject: Re: [yocto] packages not generated in output folder
To: yocto@lists.yoctoproject.org, simonkbaby@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 19:55:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63125

You probably inherit rm_work somewhere, use bitbake-getvar to find out
where and remove it if you don't want the files to be removed after
the build is finished.

On Thu, May 16, 2024 at 9:28=E2=80=AFPM SIMON BABY via lists.yoctoproject.o=
rg
<simonkbaby=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I am building some applications in 5.15.0-102-generic #112~20.04.1-Ubuntu=
. My yocto recipes aeh building successfully but I am unable to see any pac=
kage folders under the tmp directory. I see only log files under temp are c=
reated. Nothing else. Can I know if I am missing any configuration?
>
> tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0=
$ ls -ll
> total 12
> drwxr-xr-x 2 sbaby sbaby 12288 May 16 12:26 temp
>
> This is valid for other recipes as well.
>
> /build/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/libgcc/11.4.0-=
r0$ ls
> temp
>
>
> Regards
> Simon
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63124): https://lists.yoctoproject.org/g/yocto/messag=
e/63124
> Mute This Topic: https://lists.yoctoproject.org/mt/106141357/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

