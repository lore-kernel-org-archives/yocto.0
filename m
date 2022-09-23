Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AA72C04A95
	for <webhook@archiver.kernel.org>; Fri, 23 Sep 2022 22:24:39 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web08.1189.1663971869666873619
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 15:24:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GUciSkwN;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id k10so2349493lfm.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 15:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=MJ2Mdb/krwAE7LtMT18BrCgu9xES6+7ZmGlEK2lpmdw=;
        b=GUciSkwNazX/j3f/5VQQgtaqtOhz/bJvUCA+zcVGnlG5PX7PE1hI4VVKlW7aHRAe+g
         GpvpRBn/oRG2BUyRzuRW+MLxXpkNFXnhsjTeiiYrXcTID0d75FPUw9RlME6OV4kMLphz
         AtpWojCUAD+GBaDOv0tWTWH9havLwluQCZSgCC4EzCD0BQwN44iKqy1ymXGkYsOlk4/Y
         A6+TGEQfLfTd/K4+imzQOtQK5woMA9bUuMo3zdBelHEwTO5+b662aDpRR5s9431Gv/n/
         FQSW3MGQ6qUTBhHJVasSD+EYAmVfn/ZzZuelvc3NMNxYIhHDIGwYtpV5Usj5QR6IrTQk
         JuzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=MJ2Mdb/krwAE7LtMT18BrCgu9xES6+7ZmGlEK2lpmdw=;
        b=xIhlR1BQYx1CG9rvzBKu3+wZaTFzwnH7pSXGaYcn24vQyw13OstsdESUfGenJbYPCJ
         kRXwzX+vNnSOScFr1cP12i88kp1QJ4KgSn3xf7zlh3xdAtXn++5hbK7nrbqBuHBdw+9y
         vket9sTGjv/p8pfWTUn+nS+DDxXcjBgcBa6hrfC+8YIG9WBAaoeO/uQprJAlLeVhBwbl
         JjV4mjfsCCGGhfXkC92aG+TXrWqCElSPr6P7HU9uOYfHhazAKBKNoj0VpD6sEt+MsLOL
         cdp7GntRnydL0Ylhkk2JsIJnhbQ6InZyjkYfBBd5zyWaZQNEuSh4m3qEWdyaE8Q5rlLQ
         KDEw==
X-Gm-Message-State: ACrzQf1Me0mjQZZvM+G8o641ndmfNiy5bXNk0V55V+WSh2FN3sjUcRz2
	SQkFkBqsN6jXzYegb2ZXSWK7RkJHu36aDhp8EWc=
X-Google-Smtp-Source: 
 AMsMyM6MSlb4dN+N9FQlNHwmg5pYXx2BNRI3Ln03bzE1GMOCmwNU0DuHTYLKK+fNY5AsosrfOvWdA3GfPeyVeqxyUdM=
X-Received: by 2002:a05:6512:3612:b0:499:aea7:8bed with SMTP id
 f18-20020a056512361200b00499aea78bedmr3879833lfs.26.1663971867862; Fri, 23
 Sep 2022 15:24:27 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB18354240D7ECB34DC1D1F61CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-eH--escv13Q1nAEBzZqRkZbP7D8sMWqyRQFPJzB8fZA@mail.gmail.com>
 <PH0PR84MB1835A49FD63B22A0E89B966CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835A49FD63B22A0E89B966CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 24 Sep 2022 00:24:16 +0200
Message-ID: 
 <CANNYZj-4Y5JYUkTr36rXKx=_He8gU9kd5AzO-8H0go7+5LJKwQ@mail.gmail.com>
Subject: Re: [yocto] Building vulkan-samples
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Sep 2022 22:24:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58148

vulkan-samples recipe is simply using the standard cmake installation
routine from cmake.bbclass, so all questions should be aimed to
upstream. And upstream doesn't want you to run installation at all, it
wants you to execute the samples directly from the build tree. You may
want to check CMakeLists.txt to really understand what happens.

The path should be ${B}/app/bin/${HOST_ARCH}, it will be substituted
to actual values by bitbake when parsing the recipe, not by shell when
running the task.

Alex

On Fri, 23 Sept 2022 at 19:24, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Thanks for looking at this.
> Can you tell me why the vulkan-samples_git.bb manages to install spirv-cr=
oss but not vulkan_samples although the third_party directory lies directly=
 next to app? I'm puzzled what the standard conform solution would be to ge=
nerate the path to build/app/bin/aarch64 for the install command as I can n=
ot find an environment variable that has it.
>
> Regards
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Friday, September 23, 2022 1:45 PM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] Building vulkan-samples
>
> I finally got a moment to look at this. The binary with the samples is
> being built (you can find it in
> $WORKDIR/build/app/bin/x86_64/vulkan_samples), but is not installed.
> So if you want to get it packaged for targets you need to adjust the
> recipe and add a do_install:append() section that does it (plenty of
> examples in poky/meta). Patches welcome.
>
> It's also a bit sad that no one has actually used recipe until now,
> otherwise we'd know sooner.
>
> Alex
>
> On Fri, 23 Sept 2022 at 15:11, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > I added vulkan-samples to CORE_IMAGE_EXTRA_INSTALL but it only installs=
 spirv-cross not any of the samples am I missing something? Regards
> > --
> > Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et.
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58145): https://lists.yoctoproject.org/g/yocto/mess=
age/58145
> > Mute This Topic: https://lists.yoctoproject.org/mt/93869516/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

