Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web09.1259.1575294264592614350
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 05:44:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SgqmMLTu;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id s10so32189216edi.5
        for <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2019 05:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KmBxykxCOoJUeFHgPkoUivxnamcjgU8/G+dBMDUu2Ts=;
        b=SgqmMLTuCwrlvfBNfSq/h4e5u+HQbBLuSKbLev6ugIKS1mnQXBrBIOMwkqx2PjdDZ4
         kCVZ2gWcIS1q5B+muGgrE6btcTP/6WgGms4nDzohx/p8sPRkj9dXNWarggc/+CFlgrBm
         356/AeaxfpBO31fHHTO9+H4wPuxSFcs1skfSq2qRYIMevMjMweHrZ0TJnpD0U/GOjhHq
         CBuZErjDgL/snvKlxuNdctIKMgT/2FIRGowLV5gXvWZbyVwRp4d3VXJHZzzxqMh1+Obd
         Ii4Sjqs8FFljCIQnFky+SnQ4qSol08CkBm8w42uCei02q8n39TucQPunecCC8zOVR0vj
         ljRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KmBxykxCOoJUeFHgPkoUivxnamcjgU8/G+dBMDUu2Ts=;
        b=lDQdWPHALtd0PdOUvGe+dAuP+M+A/RFX6vg0D9vKY1hqG2u79O+ktJWgPnIXZRvRIm
         SH/0fik6b7VuS8HRBJg3P9DFHckJh1HYgY6G+m5NTL80uqt796FauZixYNqKJe2O9kGC
         OWtJ9OQQWQ3myoU/nq0rLBYnIb/9L4GTv5D9mOAnt0HQAUNuaToPtt4QAv3UA4sS5ubb
         AxmEpY8nDT8CuWBqp/Qmabo9hllpvhi3kKBF1uUUAl/93EwXBvt4MuWU4a3KDnlspjsP
         3HHXti8BTHkPf+UmQvO8N1NjOaPWhNAjuP0CLzg52ykmowGBTh2ttwsqMUNebuQBqBUP
         6KdQ==
X-Gm-Message-State: APjAAAWkHcdzHcccD5rm3NOBaXiIyjeReNkOGg/xg3s7BpbqYVWlXDvW
	+aykjU2uH6MRNMQcuyx7TbL2iXJCiNIvHEiHpsA=
X-Google-Smtp-Source: APXvYqyKHcAz/yrLZsOipYKCvIX+s6yj+gmlwQbh4cD62u/mQvKcU4tkwN6P711wQZsUvGRHty9q3EXPgp3YJ+moJtA=
X-Received: by 2002:a05:6402:711:: with SMTP id w17mr27220135edx.122.1575294262407;
 Mon, 02 Dec 2019 05:44:22 -0800 (PST)
MIME-Version: 1.0
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se> <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
In-Reply-To: <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 2 Dec 2019 08:44:11 -0500
Message-ID: <CADkTA4O_vBgX-PRssZbCgzMDsyVr6LyoscXEAe5qyHFCJPu+rw@mail.gmail.com>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: "peter@berginkonsult.se" <peter@berginkonsult.se>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 2, 2019 at 4:14 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
>
> On 01-12-19 22:57, Peter Bergin via Lists.Yoctoproject.Org wrote:
> > Hi,
> >
> > I'm currently working in a project using Yocto 2.6 (thud) release. It has
> > default kernel v4.18 and also linux-libc-headers from kernel v4.18. In my
> > project we will use kernel v4.1. I would like advice how to handle the
> > linux-libc-headers package for my project, should I use the v4.18 headers or
> > should I use the v4.1 header files which matches the running kernel?
> >
> >  From https://www.kernel.org/doc/html/latest/kbuild/headers_install.html:
> > "Kernel headers are backwards compatible, but not forwards compatible. This
> > means that a program built against a C library using older kernel headers
> > should run on a newer kernel (although it may not have access to new
> > features), but a program built against newer kernel headers may not work on an
> > older kernel."
> >
> > With the information from the quote above I would directly use v4.1 headers as
> > my linux-libc-headers. But then reading the information in the file
> > meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc makes me think
> > another round. It states:
> >
> > "
> > # You're probably looking here thinking you need to create some new copy
> > # of linux-libc-headers since you have your own custom kernel. To put
> > # this simply, you DO NOT.
> > ...
> > # There can also be a case where your kernel extremely old and you want
> > # an older libc ABI for that old kernel. The headers installed by this
> > # recipe should still be a standard mainline kernel, not your own custom
> > # one.
> > "
> >
> > The first part states that I should not change linux-libc-headers. But when I
> > read the last part I'm not sure about the interpretation and it could be for
> > my case. Just a matter of definition if v4.1 is extremely old compared to v4.18.
> >
> > Then another thing comes in to the equation; the LIBC ABI. When I look into
> > the configuration of the glibc package it uses the configure switch
> > "--enable-kernel=3.2" which means it shall be compatible with all kernel newer
> > than v3.2. Then probably glibc is fine if it is compiled with v4.18 and run on
> > v4.1?
> >
> > If building all applications against v4.18 headers but run on v4.1 kernel. I
> > have a feeling that there potentially can be problems here.
> >
> > Please help me with some information about this and share your opinions? Are
> > there any risks at all to use v4.1 as linux-libc-headers in my Yocto build?
> > The only drawback I see is that it will be a new configuration not well tested
> > by the community. Are there other risks or drawbacks using your own version of
> > linux-libc-headers?
>
>
> It is not broken, so please don't fix it.
>
> OpenPLi has been using kernels way older than 4.1 with the kernel-headers
> generated by OE/yocto and did not experience any problems with that. There's
> about 50+ machines in there that have pre-built binary drivers that only work
> with a particular kernel config and hence the old stuff.
>
> There are some corner-cases with exotic kernels and exotic exports and exotic
> boot executables that use the kernel compiler, but I doubt that you're in there...
>
> If you have a kernel that exports something that's not in the regular headers,
> it's way better to solve that using a syscall than trying to poke in low level
> libc stuff.
>
> So again, if you don't experience problems, please don't try to fix it...

This has been my experience as well.

I've run a really wide set of BSP kernel's against the various "much
newer" yocto/OE libc-headers over the years, and I've never hit an ABI
or otherwise incompatibility.

Like Mike is saying, if you probably have a feeling if your BSP is
doing anything exotic and can explicitly test those problem areas, or
put in place some specific workarounds if there are some changed or
different interfaces.

Cheers,

Bruce

>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47483): https://lists.yoctoproject.org/g/yocto/message/47483
> Mute This Topic: https://lists.yoctoproject.org/mt/64460477/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
