Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B94C3DA61
	for <webhook@archiver.kernel.org>; Wed, 24 Jul 2024 14:31:40 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.4706.1720779684631794359
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jul 2024 03:21:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dcDARNNZ;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2c96170d23eso1437882a91.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 03:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720779684; x=1721384484; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vlKYyr7YpnoyaV7SBVC1dI7vuiIMIjE0cFDAef6XbLU=;
        b=dcDARNNZsCG7XnoburBCWPit5Oq82f4j/bgPa5BuL0Mzh8Y4M9EbLK8MqzqQgbjrgZ
         A4quK6HSLodjG9SIng4UxPjD6i/MPL7r7q/DH4WqFjbdPMyt9k+ebys5hO0uIA7Xf0cO
         VYAdlP1KsMOId3Wyrm1L5ny912jo8uOKDSiW+GxMQgUs2IyR5Wcixgh89zhqcebx/xyK
         LoxdxBHOGg3UoZmCrciZ1QA+U1FGAl4r/fLUM9KDYWUi/tWty1AyPQ/zxxtupR+1+DM2
         koAhQAbF2cu9LXhOCZkDwBkR6kn/caaampmLw/eilhyWLBnNIfYiDY77MOQv3nigV8Rh
         zwOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720779684; x=1721384484;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlKYyr7YpnoyaV7SBVC1dI7vuiIMIjE0cFDAef6XbLU=;
        b=iUlfjC12bb2A+eHYnBY1+Jo8UrNbqarBLeZUIDRbVaHbRb6gHIucXkyFAL1ZRl0BkN
         9GlCyn2fm5cylb5Rtwc673EGzGMOXRrtRz4JFlWG4+NDo1q5g4z/wINIZkHIfS1nb6JZ
         AdSLUdicGMEuww2DB3Ou1sp1h7YFxH24geob7BRDO3C5O6MRx8ZvnDkS/aK6/Qk5b2aT
         Jut/g8xHhycdmDQCNZBNTNuzy8ZjmYQ//S8fz2aWSE4D2Jlyep+0HBfmEXcpZhJNe7kV
         1Ma68Yoe0/49JHp1cyvKBQytkdUAhFMfKjc06ih7S18znHVmbpM5dqWg4y6ZgG8Wuy0V
         310A==
X-Gm-Message-State: AOJu0YzmP2bWdjrcnBUquvtTk4WMe061S9uCDRZlgAdlWIyY3o69R7Tz
	Fs5SwIPMawN3lTtjYi/H8jn2mkYS7la833u86bs1sEXQ3jlRLTQeYPWL2YKOQzVSS6yNJMafAIp
	HhHLVpYDLbi7+4jkUnf5SGsc9Fcku9gbLbx0=
X-Google-Smtp-Source: AGHT+IFuITiynt1fKdwxC6zy8dtJhl/I7Yj0lj50FFbRhcP6ekmKOPzh2aoQd6UCTcb7tuZt17duwmFg6EOEc2J6R6A=
X-Received: by 2002:a17:90a:4b88:b0:2c9:3526:630b with SMTP id
 98e67ed59e1d1-2ca35c32dccmr8675796a91.13.1720779683656; Fri, 12 Jul 2024
 03:21:23 -0700 (PDT)
MIME-Version: 1.0
References: <CA+5Uccmt8J-j3VkMFgcD13pbAWkW36WiAAQK0eAbnq77gvwq7g@mail.gmail.com>
In-Reply-To: <CA+5Uccmt8J-j3VkMFgcD13pbAWkW36WiAAQK0eAbnq77gvwq7g@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 12 Jul 2024 12:21:12 +0200
Message-ID: <CAGAf8Lzjaivz+2_LazO7qVnMuSZqtPRUXV7nv5QLt2Scrsq90A@mail.gmail.com>
Subject: Re: [yocto] Help in booting The board
To: yocto@lists.yoctoproject.org, ganeshsamunuri015@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 14:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63565

I will suggest to check what is in your local.conf as the variable:

MACHINE ?=3D "cycloneV"

Or similar (do you have correct MACHINE variable set).

Then, if you do have the correct MACHINE, follow the manual, and build
just a u-boot:
https://www.rocketboards.org/foswiki/view/Documentation/GSRD131GettingStart=
edYocto

Then download ONLY u-boot on SDcard and see if u-boot comes to u-boot monit=
or.

Step by step debugging.

Zee
_______


On Fri, Jul 12, 2024 at 7:20=E2=80=AFAM Ganesh Samunuri via
lists.yoctoproject.org
<ganeshsamunuri015=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Ganesh Samunuri <ganeshsamunuri015@gmail.com>
>
> 10:40 (8 minutes ago)
> to main
> Hey as iam new to yocto project,
>
> I downloaded Yocto project (kirkstone) in cyclone v by adding met-altera =
layer and meta-openembedded layers,
>  i did everything according to online article provided and able to bitbak=
e it , after bitbake i flashed my .wic  file into the SD card but it missin=
g some files like u-boot.scr and .rbf files, even i tried to boot with the =
image file i got but it's not booting .
>
> I am Hoping if anyone can help me with these problem and help me to boot =
the board
>
> Thank you.
>
>=20
>

