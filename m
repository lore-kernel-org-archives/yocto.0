Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12499C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 03:27:53 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
 [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web08.5798.1651116469819025944
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 20:27:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BaohFe4u;
 spf=pass (domain: gmail.com, ip: 209.85.219.177,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id w17so6747463ybh.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 20:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5qhcJI6yKEFHiEVIF06UesKgUrkUh4RBcqQZJnxhGh0=;
        b=BaohFe4ubDad7fQ+S5/ONSOVwrYFMuMv7qzhTPgAQ2ZG0eMWCDrs5iX7ca1/AgT4FZ
         VKDlGITaEIi1Cg8nyqqBAd236EpgJ58aEkzGp2ApXXeXys3iYWK+CT6oo2FTI7zpPqZf
         m43JdQPHfDSn3RL2/blHSERFPViAv326BTrnAys71kFHa1hYTqcuevG3JDHo5CDX0S41
         wWJDdSkw7bStjlvmlXCeJTcZNl5UtN+rkIZ85i6dVUPBZiF+D9DMHt0Qo+cDjLB0FXEP
         mUTqPPCux+JzodRLWKAem2RIs0L2Fga2/aIm7P6L9UD09oOM74bCDyPVOcHFvJIVxE1I
         XVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5qhcJI6yKEFHiEVIF06UesKgUrkUh4RBcqQZJnxhGh0=;
        b=7mMlkXcCepBRmy1x3b/D6DtYDYLZLsi8iLxRhlWAEjv11jxlPzhYj0S/Xgn+DnXex8
         8y0NWerf9+UKPQLoVD1Jkhr+rkwbNifKfV6XLDGCouDiNzg5VHKnwtQZ8l3ztj60Fbuh
         v+E90ed9CXmYTvmiUnFs0+YcjPRip8M+xADc86qluAL8BkLTXJSU2sWqNM2EMk7bCH29
         2sUdTWzePUSEO3X3NfXYvCc9OeZubWbplBf3WcKKeWkpH+R6cAVmD8Ety7paWdOov/iW
         QrZpfseFsE84uzflD14X4k8lGh7uWevXU52Tg93yMxbl93e18HTOP09mPh9kYY6FmWBK
         jkUQ==
X-Gm-Message-State: AOAM532AnqPKxQtDq8GdoedjMvOgeZHlQ3MaEigUBQyOyFSJLnIhaOjT
	X+nZS65951V3aUDUJcTwN7c0mO2kVgb8J7TJFK4=
X-Google-Smtp-Source: 
 ABdhPJzBtI9xMwTEzyv7OYdd74vpmHqtKf/ZQo7gGhEBufCe5/q2C7/pp02+i7dLwgWgzQ1pf2ampagPde7WgZDJmkQ=
X-Received: by 2002:a05:6902:1202:b0:644:9d74:f057 with SMTP id
 s2-20020a056902120200b006449d74f057mr29149007ybu.501.1651116468873; Wed, 27
 Apr 2022 20:27:48 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAA=hcWSv7=gctvWYXSaJTqi=y=G9Zr8Jr01+5vVUcGSsPJM9vA@mail.gmail.com>
In-Reply-To: 
 <CAA=hcWSv7=gctvWYXSaJTqi=y=G9Zr8Jr01+5vVUcGSsPJM9vA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 27 Apr 2022 23:27:37 -0400
Message-ID: 
 <CADkTA4McF0vDHBX+gtFnFXLHF5+eyfFZCjPs4DP2B5C0zcSsVw@mail.gmail.com>
Subject: Re: [yocto] How to force build system to use a working kernel
 defconfig?
To: JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 03:27:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56925

On Tue, Apr 26, 2022 at 6:59 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I followed Yocto document 2.3.3 Changing the Configuration to set up a
> complete working Linux kernel defconfig in my kernel bbappend, I
> copied the defconfig to build/.config:
> do_compile:prepend () {
>     install -m 0644 ${WORKDIR}/defconfig ${WORKDIR}/build/.config
> }
>
> I hope the build system can just use the defconfig in build/.config,
> but that did not work, the build system still ran Restart config... to
> compare the defconfig and to generate and overwrite build/.config. How
> can I suppress the build system not to run the "Restart config"
> process, just to run the compile process using the build/.config I
> copied to build/.config?

You can't suppress the kernel's config step, it is always going to
run. You can't just copy over .config and have the kernel build.

The behaviour of the configuration depends on the kernel recipe and
bbclasses in play. I can answer from the context of
linux-yocto/kernel-yocto.bbclass and the default kernel.bbclass.

If you have a file called "defconfig" in your SRC_URI, it will be
copied into the kernel's .config and then yes, the kernel
configuration step will be run. The kernel's config subsystem will
apply its logic, and what your final .config is .. may or may not be
exactly what that input defconfig.

If the defconfig is a full copy of a .config (which is what they used
to be), then you can use either allnoconfig as the mode, or all
defconfig as the mode .. it won't make much of a difference since most
settings are fully specified. But the kernel-yocto processing assumes
an older defconfig style, and will use allnoconfig when it sees a
'defconfig' and the mode isn't explicitly specified.

If the defconfig was created using savedefconfig or similar, then
you'd want to specify the mode as alldefconfig, since you need those
defaults to be used to get a functional .config created.

Bruce

>
> I tried to add KCONFIG_MODE = "alldefconfig" in my kernel bbappend,
> but it did not work either.
>
> Appreciate your advice.
>
> Thank you very much.
>
> Kind regards,
>
> JH
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56893): https://lists.yoctoproject.org/g/yocto/message/56893
> Mute This Topic: https://lists.yoctoproject.org/mt/90705185/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

