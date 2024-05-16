Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D11C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 19:59:20 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web11.24071.1715889552248096165
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 12:59:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nCpD/cv0;
 spf=pass (domain: gmail.com, ip: 209.85.210.53, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6f0f87f9545so390310a34.2
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 12:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715889551; x=1716494351; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5tCpvS3mOYeWrCkWQqeZJD/JgL9ebuypsGjPass71YU=;
        b=nCpD/cv0GUdpC6prWZlo6jZzkQ9bC/gF+eMcwW/NslBchOOObqhpMst8wyPvQ8AOa2
         AT9VYXeV4ZUPaSDPeuVCcGN8eqvIGo+7NFHem6UzlLCmcE5q/l9yrR4z06Gwc9DILbdu
         CkBVmCYKwpgWzoJx0RBhT9etLJvr4LEzOKr5wMJo6Gg3MjJfKnJQhTC53qywNDPCF7zZ
         e7QgaiYzGUFcz7oBxKHJdtwZikDdxc5PCJt/otgzzJB0ESg7sIqFj+jpSsqP9qh38vtx
         7YwmQU4DeMk3Kp3s996o69VMyhesbDgzjfEiAVjKvXUhzCe5PgjXbKaSA8QWcb6ptPNq
         NjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715889551; x=1716494351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5tCpvS3mOYeWrCkWQqeZJD/JgL9ebuypsGjPass71YU=;
        b=DcBlDdAVOMQcNBApj6502ABy8luwubwI91a/p9lOtS+h5hSLb8NmOh/Qvo8K2yvUkZ
         d53+2s3tnnKlSO9wKUbkmAhbue2aCbEW16xmHK9Ywa1r50Xb/oy0OkEq6qJ96cLHYWlf
         w+GwQZh9HYNQmJTA2pqzyAnrNgZeuHoumKTj/emGN1Gwko/Ff0EPowH18iuWL+C6hVEO
         P0Hw1bEB8yKA1PCmgD+tjzm3lnG/pbq3oRM3itv7zp4/C2E4dN8loejwu0ZWSX4+DxE1
         b/qwIYyZEU8Z8s/zMK2Fbe7bah52UaVdn4DsEpCb0BTwVMMMYkiDptePEwO7tDDnfu6C
         za+Q==
X-Gm-Message-State: AOJu0Yw6Zx/2/1IzRhF7KiSXrk/H1jsqk/IYMR1dKNBRj6unxYFFLO98
	qC2eZ2qAx2rZI/o1179CjC69P1ir4+L9LwM9DhRKLpPoHHHLgj9ATfLV5bGnm66tqA8+9DxpZ80
	f9pCsaGDq/uuPW+B1anLZ9TLowgJeV1xdvzp6nA==
X-Google-Smtp-Source: AGHT+IF2is0hGJrEaZUt9tOEJmPCcsh2Xr1MUtSmGq4IONUBAM9DrjObYasYKe1/odxykTWNdqAPSt8lpa8v+2BD1pE=
X-Received: by 2002:a05:6870:2101:b0:23c:b686:f5b with SMTP id
 586e51a60fabf-24172a63f8cmr22096838fac.15.1715889551062; Thu, 16 May 2024
 12:59:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
 <CA+chaQdFtjos0jHY71mO-dy-MneHoP9-Mmp4FEm9rSBoLCx14A@mail.gmail.com>
In-Reply-To: <CA+chaQdFtjos0jHY71mO-dy-MneHoP9-Mmp4FEm9rSBoLCx14A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 May 2024 12:58:45 -0700
Message-ID: <CAMKF1sot7rL7oU7XzmcGAEOVFqbNNdFpC+dB4-+Tzu-BsHScnQ@mail.gmail.com>
Subject: Re: [yocto] packages not generated in output folder
To: yocto@lists.yoctoproject.org, martin.jansa@gmail.com
Cc: simonkbaby@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 19:59:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63127

On Thu, May 16, 2024 at 12:55=E2=80=AFPM Martin Jansa via
lists.yoctoproject.org <martin.jansa=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> You probably inherit rm_work somewhere, use bitbake-getvar to find out
> where and remove it if you don't want the files to be removed after
> the build is finished.

right, thats perhaps the real reason for the intermediate build
objects being removed
it could also be inherited globally in conf file via local.conf or such

INHERIT +=3D "rm_work"



>
> On Thu, May 16, 2024 at 9:28=E2=80=AFPM SIMON BABY via lists.yoctoproject=
.org
> <simonkbaby=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello,
> >
> > I am building some applications in 5.15.0-102-generic #112~20.04.1-Ubun=
tu. My yocto recipes aeh building successfully but I am unable to see any p=
ackage folders under the tmp directory. I see only log files under temp are=
 created. Nothing else. Can I know if I am missing any configuration?
> >
> > tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-=
r0$ ls -ll
> > total 12
> > drwxr-xr-x 2 sbaby sbaby 12288 May 16 12:26 temp
> >
> > This is valid for other recipes as well.
> >
> > /build/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/libgcc/11.4.=
0-r0$ ls
> > temp
> >
> >
> > Regards
> > Simon
> >
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63125): https://lists.yoctoproject.org/g/yocto/messag=
e/63125
> Mute This Topic: https://lists.yoctoproject.org/mt/106141357/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

