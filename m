Return-Path: <kaiwan.billimoria@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D46ECC27C77
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 11:39:20 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.9018.1718192353336332732
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 04:39:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GweGUael;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: kaiwan.billimoria@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-57a1fe63947so3048597a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 04:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718192352; x=1718797152; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1X+XaQvkktPF+3CiGfmm3JyKVyK6s6OiKQW8GqOSU+k=;
        b=GweGUaeldHy4YTP6YHe5aU/ilXxDCzsn03tMDutUDhuYBs/1LdYB4VzuqWOulyCIeZ
         gqZDsyNVX90BczumNbcYDNMGUREuiHUqJGkKmciDPZYeAixHIOd2S47yF0Z8s/rLdxwH
         GCfAOHzl6OUB8G/w1qaRkftBdz1jFCO3/kP9ocjUzgEdhxb2HhxPK9Kaq0a19rOdp3E9
         jm7kgTAdCKL4KN3CDDmC8mDPptKmsxuPV671LGUJ6ty4goGU5VUxw4llJ4haG2S1eaqe
         F4mmLXLRG8X4D4u/Ivma7+TnDxJkzpZIo7sJPqx/7ciCWh07MxdetcjPJwwGk2roDKYF
         Drew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718192352; x=1718797152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1X+XaQvkktPF+3CiGfmm3JyKVyK6s6OiKQW8GqOSU+k=;
        b=eio+SFV0ZnOSVW/G11ZCa+1dBjLoIDQTfj+i8CHgr1cLPCOSCEMMSOJHhF7yGNw1r1
         NSYH0LUZQ0VAGtDHQFSeXqkXSlhdETAx7bBrsk1V4/4kd1tKcE2NDLrVkZiJOZdi/3dW
         WECI3AILLbRpcK/5i/7zyZHaDxBfxh4PqaQyVkZGC06lgCTbZfrOwFUdKPQ7DJkbDRaa
         ky58NcQd7vqf+I+O1GYwmkVYKR5T2OICL96GRSZwntyzxxU05uxDaG0lHeopbfpN7Mbq
         pUik1yir0GcXO9hwVO/+p/xDJTc5JCcOyO4W6Py6AZnqOC5wttUeW9uqQSm6216FYpzl
         HXTQ==
X-Gm-Message-State: AOJu0YxSPwN/6+IRZEVwls9ubnGLgjHMFlNCe9zc4OIugrkVUGSOwUIY
	OGugjF02dmBivJcpeZ6Iapo/upNROLQ0wYeq/GLPHRZRo3MJglD55GtrAOnnDVVyQu6DiXvyOKI
	V7YLEUkXj6lxn5U8x0uFgDKSxXNo=
X-Google-Smtp-Source: AGHT+IENlbCsYRumU0pNbJoSIMb7PNhVayFe4dqJmbIGX3O+LZ/LOQJ5lxFwRZyO+6QxeFaHj2m3SoWERFW/a3kkesM=
X-Received: by 2002:a50:d698:0:b0:57c:8065:4aa5 with SMTP id
 4fb4d7f45d1cf-57caaacbb37mr1084490a12.28.1718192351338; Wed, 12 Jun 2024
 04:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
 <591DCA78-8AA3-4D14-9075-1C262B393630@arm.com>
In-Reply-To: <591DCA78-8AA3-4D14-9075-1C262B393630@arm.com>
From: Kaiwan N Billimoria <kaiwan.billimoria@gmail.com>
Date: Wed, 12 Jun 2024 17:08:53 +0530
Message-ID: <CAPDLWs8pt44vmhrA=xG6i36cbDnL+A2orVFu7+z3Eox8oFj-xw@mail.gmail.com>
Subject: Re: [yocto] Recipe for using a custom Makefile with C source
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 11:39:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63328

On Wed, Jun 12, 2024 at 4:43=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> w=
rote:
>
> On 12 Jun 2024, at 11:44, Kaiwan N Billimoria via lists.yoctoproject.org =
<kaiwan.billimoria=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello all!
> >
> > I have a newbie question regarding creating a recipe for C code, where
> > the project already has a custom Makefile -which of course must be
> > used for the build.
> > From what I recall, the recipe doesn't have to do anything special;
> > bitbake will pick up the Makefile and do the 'make'...
> >
> > However, when experimenting with a v simple 'hello, world' C program
> > and Makefile, I find that am unable to get a 'debug build'
> > helloworld_dbg binary executable - it simply seems to use the default
> > $(CFLAGS) value and I can't seem to influence it, via the recipe or
> > the Makefile??
>
> Your helloworld_dbg target uses CFLAGS_DBG but I don=E2=80=99t see that d=
efined anywhere.
Hi Ross, thanks. Yes, sorry, another mistake on my part: I tried
defining CFLAGS_DBG in the recipe and access it in the Makefile but
that too didn;t seem to work...
>
> What=E2=80=99s your actual intention here?
To get two binaries: one, a stripped non-debug production version, and
two, (helloworld_dbg) the 'debug' version, non-stripped, with debug
symbols.

>If helloworld_dbg should be unstripped, then the idiom is to _always_ buil=
d unstripped binaries (which is why CFLAGS has -g in) and at packaging time=
 bitbake will extract the debug symbols and put them into the -dbg package.
Ah, so I gather, as you've said, that bitbake will not strip the
binary and will provide the debug symbols in -dbg package.

So my question really is: the deployed 'production' binary should be
stripped and optimized, thus should not be compiled with -g and -O0
right?
But the generated helloworld binary shows like this:
$ file .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/hellowor=
ld
.../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld:
ELF 64-bit LSB executable, ARM aarch64, version 1 (SYSV), dynamically
linked, interpreter /usr/lib/ld-linux-aarch64.so.1,
BuildID[sha1]=3Dae3... for GNU/Linux 5.15.0, with debug_info, not
stripped

The last part clearly says 'with debug_info, not stripped'; this, IMO,
conflicts with what we want for production... That's the thing I am
not getting.

Thanks,
Kaiwan.
>
> Ross

