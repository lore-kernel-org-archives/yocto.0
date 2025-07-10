Return-Path: <pkl2000us@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4577CC83F17
	for <webhook@archiver.kernel.org>; Thu, 10 Jul 2025 14:35:54 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.10386.1752158150166017987
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jul 2025 07:35:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YbvI1Qfb;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: pkl2000us@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ae0d758c3a2so159869666b.2
        for <yocto@lists.yoctoproject.org>; Thu, 10 Jul 2025 07:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752158148; x=1752762948; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/wTvWIIwqC0+pXJ2mi8FHHJtpQtAIBYGzh1MTZjDMiA=;
        b=YbvI1QfbDiip1akJk2iS1zdv98gB+Pw6M5PNsH62aJnwTwFX5r/Ae0BtzI98rMugNm
         j3rPfWPRxh5+whNlVQL9PYzgoEkXbSquqrD5FHPInAdCtgVrOBQXVOjj/elFTwlpo7L9
         DCrKUWQX7J7kaPadJpAM48cRLtBOAXRSW+b0ZEDfXsSHvd5VhDa+055uyDkglrwVbLM/
         TgGUnm3IaXUBD40AZ3HhPhmNWQpi7qQNqPuacaIRieWEbZ6elUg5PnvJlVdB8JSuNDpQ
         F7MRTvYr3NxdHD1ObszsK03r3sykMEsbe/j9TZVQpeYTl7kEZK0lDfVo6SoRzpTNNqAs
         Dwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752158148; x=1752762948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/wTvWIIwqC0+pXJ2mi8FHHJtpQtAIBYGzh1MTZjDMiA=;
        b=GqkJhnYrFw3jk0JougbBzMm9tCEpX21nYtFzUERgqmi4FeyhGb7w4lvICha75YIGQR
         ChuF9KBBLRV/sD2wiQi/Rip+Jw0y8pgBPuLWUVLQFIqovYY7edBKkMOYFfliswGlIEzr
         qUlQezA/Q3FP5UF797/pry+YggQWC02e40c13iPE6FD1gDmyZnvR41EYgKIZ3cWYMigH
         d/JBbebVT9RvNnBfJLC7VQfA7eLhOM8qFEEd1LRvAkolhg9iXT3V6o8rL89j6VtMjsMX
         bzEFUcjpkwouyFDE/8AcdMWyXyFtI+L5vM19lmJFjrO+somiNQYvMSWaT1aTkhFLqQBd
         3igw==
X-Gm-Message-State: AOJu0YybsKBVY1+/q5I/8nIAyXzWbki6cOJXAd+qJIJZFNsmVXRnrR46
	df5S2M/kplT9OpUCFza2sDd9n3YhQ4zmXsiRpGhF3ykE5pJxrU+Ds1jzlar0nspbm5Cb3dw6Arz
	WwLanYjmHLqrEadyeuVkLXthEHZ9Lmik=
X-Gm-Gg: ASbGnctU40Q70ZrPg/UiVkcIWM2vzAtEDuRj2sMO0mT1AzvY5tmMZ/vwyaztm/wgTuQ
	61nHzavgKATCB4tHfBMthiYSIcnyYarzeXUh+Uf31Q5Hc2fDQCYMpmTXyKCfnuOjbXK+0qvslFa
	FBYhfr9n//SOE4QgI5MC9eyH+VricksVZ+0FVVQaXe94E=
X-Google-Smtp-Source: AGHT+IG70Zxv2BuZHDLJ1hep3WX2r0j+2pZLirSMx+9+qTTwE9oFuFQ+2UhoqM2X7ygiShzNw9dIv9ORwOrJyoUU5mA=
X-Received: by 2002:a17:907:c78f:b0:ad8:9257:573a with SMTP id
 a640c23a62f3a-ae6cf56118cmr667579666b.5.1752158147781; Thu, 10 Jul 2025
 07:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
 <0a3017ff-19f4-4e18-a338-32450acfa8ee@gmail.com> <20250710083606.GA398892@kernel.org>
In-Reply-To: <20250710083606.GA398892@kernel.org>
From: C Larbi <pkl2000us@gmail.com>
Date: Thu, 10 Jul 2025 14:35:36 +0000
X-Gm-Features: Ac12FXx00To0Ho0vV6kXOkGaVFy9cw_wFnRSQUcQDTs4B4nEZN0duPXLSr8M40A
Message-ID: <CANVomh_A4Uem+EKm3d_PA7HRH23ZFf4H=8QPE9EkMOniUi---Q@mail.gmail.com>
Subject: Re: [yocto] Custom Kernel Recipe Compilation Error.
To: Paul Gortmaker <paulg@kernel.org>
Cc: yocto@lists.yoctoproject.org, skandigraun@gmail.com, 
	alperyasinak1@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Jul 2025 14:35:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65640

Hello Paul
From my understanding, are the includes in a module makefile not
private to that compilation context only ?
And also is the srctree variable not tied to the sources being compiled ?

Cerezo

On Thu, 10 Jul 2025 at 08:36, Paul Gortmaker <paulg@kernel.org> wrote:
>
> [Re: [yocto] Custom Kernel Recipe Compilation Error.] On 08/07/2025 (Tue 11:06) Gyorgy Sarvari via lists.yoctoproject.org wrote:
>
> > On 7/7/25 22:10, C Larbi via lists.yoctoproject.org wrote:
> > > Hello all
> > > I am a newbie to the yocto project and on a journey to understand the basics.
> > >
> > > My reference hardware for my learning journey is the Orange pi 3b (RK3566 soc)
> > >
> > > I have created a bsp layer containing my machine configuration and a
> > > recipe to build a custom kernel.
> > >
> > > The kernel recipe build throws an error on the "do_compile_kernelmodules" task.
> > > Before writing this, i went through the manual process of compiling
> > > the same kernel source on my machine and i was able to produce a
> > > vmlinux file and build the modules.
> > >
> > > This is the error from the yocto build process.
> > >
> > > |   GEN     Makefile
> > > |   CALL    /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/checksyscalls.sh
> > > |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o
> > > |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/siutils.o
> > > | /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.c:44:10:
> > > fatal error: typedefs.h: No such file or directory
> > > |    44 | #include <typedefs.h>
> > > |       |          ^~~~~~~~~~~~
> > > | compilation terminated.
>
> I saw this, and I'm thinking that include shouldn't be there at all.
> You might in turn ask "Why would you say that?" -- well, experience?
>
> Let us have a quick look at a current kernel.
>
>         linux-head$ git grep '#include <typedefs.h>'
>         linux-head$ git grep '#include .*typedefs.h>'
>         linux-head$ git grep '#include .*module.h>' | wc -l
>         14342
>         linux-head$
>
> No instances of <typedefs.h>.  Also no instances of <somepath/typedefs.h>.
> And if I search for a common include, like module.h, there are tens of
> thousands of instances, so my search isn't somehow fundamentally broken.
>
> > > | make[7]: *** [/home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/Makefile.build:250:
> > > drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o] Error 1
> > > | make[7]: *** Waiting for unfinished jobs....
> > >
> > > Will really appreciate if i can get some pointers as to what i may be
> > > doing wrong.
> >
> > This seems to be a recurring problem with this particular vendor kernel
> > unfortunately. Take a look at this patch which solves the same issue on
> > a different branch:
> > https://github.com/riscv/meta-riscv/blob/master/recipes-kernel/linux/linux-orangepi/orangepi-rv2/bcmdhd-fix-typedefs-header-not-found.patch
>
> So this patch amounts to the one line change as follows:
>
>          EXTRA_CFLAGS += -I$(BCMDHD_ROOT)/include/ -I$(BCMDHD_ROOT)/
>         +EXTRA_CFLAGS += -I$(srctree)/$(src)/include
>          ifeq ($(CONFIG_BCMDHD),m)
>
> OK, that probably does put a (semi random) instance of typedefs.h into
> the header search path, but given what I've shown above in the mainline
> kernel tree, I would ask if anyone has checked what happens if the
> offending typedefs.h include line was simply *removed*?  Does the error
> go away, or does it give a more informative error on exactly what
> specific definition is missing - so that folks can fix it "properly"?
>
> You generally don't want the kernel and kernel drivers pulling in
> include paths from random locations outside the kernel. The kernel is
> designed to be self-contained, with the exception of the few user space
> utilities that happen to be bundled with the kernel for convenience.
>
> In a case like this, the patch risks causing additional errors elsewhere.
> Things like "conflicting definitions for XYZ".  Or worse, you could get
> an instance where an added include presents a "struct foo" that is
> different from the kernel's view of what "struct foo" is - say for
> example the kernel's version uses a u64 instead of a u32, or has padding
> for cache line alignment and performance reasons.  Then your stuff will
> just silently compile, but explode at runtime.  Kind of a classic case
> of "two wrongs don't make a right".
>
> This is one (of many) problems with not-in-mainline drivers like this.
> The various SoC engineers tasked with creating a driver develop their
> own ways of doing things, but it remains largely unreviewed by the
> larger group of people out there, including the subsystem maintainers
> who would spot things like this and require it to be done properly
> before accepting it into their local tree and then requesting it to be
> merged upwards into mainline.
>
> Paul.
> --
>
> >
> > I think adapting this to your branch should solve your problem too.
> >
> >
> > >
> > > KERNEL RECIPE
> > > https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/recipes-kernel/linux/linux-orangepi.bb
> > >
> > > MACHINE CONFIGURATION
> > > https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/conf/machine/opi3b.conf
> > >
> > > Best Regards
> > > Cerezo
> > >
>

