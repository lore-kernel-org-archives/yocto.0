Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3759.1617856286740748040
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 21:31:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iIYqZvec;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1A8DE38C052B
	for <yocto@yoctoproject.org>; Thu,  8 Apr 2021 04:31:26 +0000 (UTC)
Received: by mail-qv1-f54.google.com with SMTP id j1so280264qvp.6
        for <yocto@yoctoproject.org>; Wed, 07 Apr 2021 21:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LBzRixvorQxkATTUUecyfH3jjgZ3ml/86KrkWqdjaMo=;
        b=iIYqZvech9/wMI4EXiZ/UzKcTLGy5AIFp9e5eyeO++ZztNvxtL9G3M5WzkBw2a7TP7
         7OkvuHrGMeJgmGmCG+OpHesBQR7MNKsB9HbEtq5McYnl8CpLpyV3AUlhuaCntJ0EHnsh
         dg+kSKx0TN/zwMezq9CBLcwlF4gWWjXIqQjR3VEGUYd5AnEILdY9Q8htQpDprkfgVgo0
         W8R39EJPctq+rSy6Thjxfg9SEoEssInJVXe1aVZMVaX934cMOFa2KQJUBfIFx7Bn/bqy
         HaPcpqOGCoEJu7tC5i7YqJKk/3LsCPgQY7vlxxo7a0+mAXFa1N3fusgzfSElvHk1RsSa
         IHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LBzRixvorQxkATTUUecyfH3jjgZ3ml/86KrkWqdjaMo=;
        b=IDzeDP01b+BYafPHVStcNYW/G3+eXMQbaiANr0mGZOTxMseLtJvnVsxyu9NJAjObRj
         s3htS5Li3FKLeGuREFtb62tJ9ocPHUcxYCzP2+c/XscpgqYlydr7eE3/c8SC2IXDfKqW
         mx4tseks7Qvk9OIDi1jkHczQnyXzFkdkwoJPgGJZxFKi/J5WGFIoGtPclVHI2V8u89jH
         mWBuIKueEF4M6dYyMShOBwt1qbwvdTV8Hq9dXhRKivBBQLtNX/mwKFNggispllBOMSat
         0xiaeyyHEyjuzRu6sb0/25XoW/A5DH9rYJo8DnWZ8DIQPX0cPnlZLpl69N4U1ukbmgIy
         pi8A==
X-Gm-Message-State: AOAM533InxsO4f6K675RhkqE5JveeyoL8XU8AsWMt4t/XiVwvdIQK4Gp
	rbqF/dkWkkROAw+f3YgQq3KGL8SboV+OF3Q7URY=
X-Google-Smtp-Source: ABdhPJyuTNZMAsLF+tfHqXsuU1wTKLVSiwat8jbhGAkmkmem7giNZsmBOk6npMsyt2C39U8WXiGH5if2pGFEL4gaQVM=
X-Received: by 2002:a05:6214:f27:: with SMTP id iw7mr7349719qvb.50.1617856284525;
 Wed, 07 Apr 2021 21:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <4eef7ff7-0bcc-3bb7-6b08-a194de2b2491@windriver.com>
 <111337d5-90b2-2bcf-8d7b-b68ed39e265b@gmail.com> <CAAnfSTs54V+AvonHAssbvwzO6fM3zxJ3dgFOU7BN38Sp2xj=gQ@mail.gmail.com>
 <4e4b5508-dc30-5f6a-a664-9462eca41c04@gmail.com>
In-Reply-To: <4e4b5508-dc30-5f6a-a664-9462eca41c04@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 7 Apr 2021 21:30:58 -0700
Message-ID: <CAMKF1soURB3HqK7Ec1+Z9SZMoo=4FoanA-7b3dOmZ+b7mrmLTw@mail.gmail.com>
Subject: Re: [yocto] No significant diff b/w qemux86 and qemuarm poky build of core-image-minimal
To: Ross Burton <ross@burtonini.com>
Cc: Randy MacLeod <randy.macleod@windriver.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 30, 2021 at 2:20 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 3/30/21 1:48 PM, Ross Burton wrote:
> > On Tue, 30 Mar 2021 at 20:41, Khem Raj <raj.khem@gmail.com> wrote:
> >> Thanks for this infor Randy, really appreciated, I think I will also
> >> look at the h/w angle.
> >
> > Khem: if you can reproduce this on demand with a clean build (ie
> > oe-init-build-env with a clean build directory, just set DL_DIR) then
> > enabling buildstats would give some interesting metrics.
> > buildstats-diff can compare two build runs and tell you what the
> > differences are.
> >
>
> yeah this is doing world build of not only core but several other layers
> included a usual build takes around 10 hrs for this machine config, I am
> planning to
>
> 1. Collect build stats
> 2. buiid another qemu machine on this VM
>
> it could very well be rotting hardware underneath the VM.
>

To close the loop, it turned out to be the case that CPU performance
on VM has deteriorated
which stress-ng showed. The VM has been rebuilt and everything seems
to be holding fine now.
Thanks for your help and chiming in.

> > Ross
> >
