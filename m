Return-Path: <pkl2000us@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83E5C83F03
	for <webhook@archiver.kernel.org>; Wed,  9 Jul 2025 09:32:43 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.11451.1752053556621909211
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Jul 2025 02:32:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lqyEu+A0;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: pkl2000us@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-acb5ec407b1so928648366b.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Jul 2025 02:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752053555; x=1752658355; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P2vEgFvkv36LRl4FQ+iQPUR3aZeK0q4Ju4NYTyKacSo=;
        b=lqyEu+A0cQdm02GHV6BrVRj4h7RGQo/2BuxV96FJYo3cVVhswxWF6LkSIAxHo+Lswb
         Ba4XL39mhrroUJkqbVNxsD9z/qfYQPWc1Tj386R+qMq2XIluM3z2pLrUQtjUuoPqjurP
         nJ7tN/mAc197WmTwrhN4xBAt/Pc51wI2o28VZlQ4AgKcZn+Qgc7plFlRdlj18vMWk2O4
         QBMdJu0HJhS2Pb16HUfjft5vJ/DJoXOT6z95A7Jtm3QJawJ3LZUQju+4M3DWqzOoN9yx
         dbg6GeCtutC/98lWtl2s4dLXskhMF1D2oDXNJLFAkp4pDoiIZIVSdZIMWxaHOWxXc+lK
         t0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752053555; x=1752658355;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P2vEgFvkv36LRl4FQ+iQPUR3aZeK0q4Ju4NYTyKacSo=;
        b=j/8nRZZak2SkEvdd7B8i9WcgR9vrWVuyolgppvL7bC0GyzNM4Z7GUlFPg199fVEHPX
         rfhOqUvZc/XMMUzbINFFJIY0YqWgKSL42Mh5+99r+9Txq9upk1O+c9R/47+vlLsTTs99
         4jEJQ2ME7GRtg0/6fjHgn73DvvxR1VX8gU/oofh2cedc+JLs+OKDv6tnAVdMVc3FOmRn
         JizzlLSZ2VHRACXgsvNZxRQmZQn0OAmBP3Lx1FMtTTBwTiB0JBcKHMEuyvJUFghKYEvP
         7zcLcszovmXrWZcjBw2+dKpz0iqlbBLOPIxnCLMOsHpRc8M/RWsZjsSp+O5eWOb+fScB
         1TSQ==
X-Gm-Message-State: AOJu0YzIwPvrP0xWkkE28JGlOcuCt3k/sRNvaU8MQL8JtUcbOJQ6+7Zt
	kdPZymMbSRZflXnL50SPOsOmbsCl05hSjwlzStm4kOQrZVbZJlCRB+RUCSAbLHLHLXB2y2eF+hL
	25OGzQc/Ny1hiCX0SPlc/Ih/pV00cfmk=
X-Gm-Gg: ASbGncuVDQbe4WVlZ5RN/11l9YOzeRhpgM/ZlZ3pdIvEYgdSxvUmoGv+urJ9yWWrWrB
	R/PdKm5ec8nz3Pg9OiZ5YVzcVsX1YyvUI32SV94EOZ6fsH2NC3g03wHBvFB+dO2EJPAGBrWQhyu
	QofCbGDgRce1i6fyZb/DX3dqVRFBzbOeI+zubYGf9iYxw=
X-Google-Smtp-Source: AGHT+IFOnK+RqZpgylp0oTWwPz+wS3UqaSaNRjQYPTaMRoEhLGZyTOMYHHGdBVDf1yM+9RqEr6zHAWlyDfqaP0DzO/c=
X-Received: by 2002:a17:907:c283:b0:ae0:db23:e3e3 with SMTP id
 a640c23a62f3a-ae6cf5c0132mr199799466b.16.1752053554297; Wed, 09 Jul 2025
 02:32:34 -0700 (PDT)
MIME-Version: 1.0
References: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
 <0a3017ff-19f4-4e18-a338-32450acfa8ee@gmail.com>
In-Reply-To: <0a3017ff-19f4-4e18-a338-32450acfa8ee@gmail.com>
From: C Larbi <pkl2000us@gmail.com>
Date: Wed, 9 Jul 2025 09:32:23 +0000
X-Gm-Features: Ac12FXzGEbKjWfDJBMumHe9khDJmx5yCXEYfdho9QeAKlOoZoqxoiRQOBY8-5qM
Message-ID: <CANVomh-icUcXvnzLCzqri52A4SumKARzvc6d+YjXwtASnND1=Q@mail.gmail.com>
Subject: Re: [yocto] Custom Kernel Recipe Compilation Error.
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Jul 2025 09:32:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65632

Thank you Gyorgy!
This helped.

Regards
Cerezo

On Tue, 8 Jul 2025 at 09:06, Gyorgy Sarvari <skandigraun@gmail.com> wrote:
>
> On 7/7/25 22:10, C Larbi via lists.yoctoproject.org wrote:
> > Hello all
> > I am a newbie to the yocto project and on a journey to understand the basics.
> >
> > My reference hardware for my learning journey is the Orange pi 3b (RK3566 soc)
> >
> > I have created a bsp layer containing my machine configuration and a
> > recipe to build a custom kernel.
> >
> > The kernel recipe build throws an error on the "do_compile_kernelmodules" task.
> > Before writing this, i went through the manual process of compiling
> > the same kernel source on my machine and i was able to produce a
> > vmlinux file and build the modules.
> >
> > This is the error from the yocto build process.
> >
> > |   GEN     Makefile
> > |   CALL    /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/checksyscalls.sh
> > |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o
> > |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/siutils.o
> > | /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.c:44:10:
> > fatal error: typedefs.h: No such file or directory
> > |    44 | #include <typedefs.h>
> > |       |          ^~~~~~~~~~~~
> > | compilation terminated.
> > | make[7]: *** [/home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/Makefile.build:250:
> > drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o] Error 1
> > | make[7]: *** Waiting for unfinished jobs....
> >
> > Will really appreciate if i can get some pointers as to what i may be
> > doing wrong.
>
> This seems to be a recurring problem with this particular vendor kernel
> unfortunately. Take a look at this patch which solves the same issue on
> a different branch:
> https://github.com/riscv/meta-riscv/blob/master/recipes-kernel/linux/linux-orangepi/orangepi-rv2/bcmdhd-fix-typedefs-header-not-found.patch
>
> I think adapting this to your branch should solve your problem too.
>
>
> >
> > KERNEL RECIPE
> > https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/recipes-kernel/linux/linux-orangepi.bb
> >
> > MACHINE CONFIGURATION
> > https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/conf/machine/opi3b.conf
> >
> > Best Regards
> > Cerezo
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65623): https://lists.yoctoproject.org/g/yocto/message/65623
> > Mute This Topic: https://lists.yoctoproject.org/mt/114034987/6084445
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

