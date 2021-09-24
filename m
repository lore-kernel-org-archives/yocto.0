Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,SPF_HELO_NONE autolearn=no
	autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA1B8C433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 04:59:07 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web12.4155.1632459546622783398
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 21:59:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RAj62q4C;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 11so5570970qvd.11
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 21:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4E/ywvSDu1TlzRjCp9XuPs5loIR1iOWJpZd7wLUrXN4=;
        b=RAj62q4C2eP1E4dbJxJEHc2NcX2eZiokaZk0yw3hu6zVeJaXwTOXU70h8vH9tkYhIk
         JRZqh9tf7zbXbRrH/MkJc0l/JgLRO7gpmz9+SCR3QYQugYLebs43uriWk0nQ63Gc4r5+
         F4qi2PeM89vfW2ajLWiDXjpz0NDzhSVXDef+Ec3D8ehXQx2Rq950RbTs47zewM/g6v48
         gSTdvc618apoQgyh52NgzKyBKZ6UWgAoNdwEzvCyjIzbn3efhG/qjJF/05rL/6QGFr+U
         iBjpKrAUo6NvRqMp+zhFmda91nYM+kYabWZ7wJ8NVsdb3gMGHMC/G8qFVuNbi7TlcnnS
         zoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4E/ywvSDu1TlzRjCp9XuPs5loIR1iOWJpZd7wLUrXN4=;
        b=lfTwfUs9gGtAP+Q3UBKbpghtAqB2yjpoIjbKTDofnoP+c/x4z249dydJ12tyWJUVoP
         yzPf7OK0gqCbl+oOH9gZ+WsNpfBjwJqqOm4mRCQFuzOYslUWXdoGc8wYqmNCfrq3NOlE
         9tdIkj8owaK8phbLwC5Zx2JDqldGZC20vOXmZryjwCXRFJPO9pL4pkEnEpS+kgo6wxpJ
         1Y6DCuYHnBVzIuSy+kaT8Ok62Ujuy7VFFt4pUrJYb78lvdaC59vHZRgyVHJA/z1FwiNv
         3F93gStZGHiXW7vldfJtMaXxvtZZQ/BDsXqzS69EaokL+RL4XhjuCgeYbD4ADhcUXIWq
         AAsg==
X-Gm-Message-State: AOAM531L1nHLNqNn486bc19s0WaKzn+g8aEM3IgiVcsMyxf+4C5IdbSk
	W2gVCnTQXZGTSYemJdTaUyGGQk0AGCR5CaeMWno=
X-Google-Smtp-Source: 
 ABdhPJyCXuElMZ41yVt0gy3Cg5AhIWpC6+j+v6++3+vXbYTCno4NkDGvnXRDRglY8t/MtuVxXHP2a6I1SJJksX1IX+8=
X-Received: by 2002:a0c:8061:: with SMTP id 88mr8225966qva.5.1632459545698;
 Thu, 23 Sep 2021 21:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <c81729e7-0bc2-7f7c-84ce-25d92ec09148@prevas.dk>
In-Reply-To: <c81729e7-0bc2-7f7c-84ce-25d92ec09148@prevas.dk>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Sep 2021 21:58:39 -0700
Message-ID: 
 <CAMKF1sq0ppgLXtSzdL0qSDQLrgSJGE8+CqEYy3A4ZME1ZfbBKg@mail.gmail.com>
Subject: Re: [yocto] "stack smashing detected" when building aarch64 kernel
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 04:59:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54831

its hard to say what might be going on. Perhaps enable builds with V=1
so you can see if its always failing to compile at same file.
or atleast you can get one file where it fails then you can use
preprocessed file to build it in a loop and see if you can get it to
fail more.

On Thu, Sep 23, 2021 at 8:16 AM Rasmus Villemoes via
lists.yoctoproject.org
<rasmus.villemoes=prevas.dk@lists.yoctoproject.org> wrote:
>
> I've recently started getting an internal compiler error when building
> an aarch64 kernel. It only happens once in a while, and re-running the
> task usually just succeeds, so I don't know how to reproduce or trigger
> this at will.
>
> Two examples:
>
> ===
>   CC [M]  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gm20b.o
>   CC [M]  drivers/net/ethernet/mellanox/mlx5/core/rl.o
>   CC [M]  drivers/gpu/drm/nouveau/nvkm/subdev/fb/gp100.o
> *** stack smashing detected ***: <unknown> terminated
> In file included from .../kernel-source/arch/arm64/include/asm/atomic.h:15,
>                  from .../kernel-source/include/linux/atomic.h:7,
>                  from
> .../kernel-source/include/asm-generic/bitops/atomic.h:5,
>                  from .../kernel-source/arch/arm64/include/asm/bitops.h:26,
>                  from .../kernel-source/include/linux/bitops.h:29,
>                  from .../kernel-source/include/linux/kernel.h:12,
>                  from .../kernel-source/include/linux/uio.h:8,
>                  from .../kernel-source/include/linux/socket.h:8,
>                  from .../kernel-source/include/uapi/linux/if.h:25,
>                  from .../kernel-source/net/mac80211/led.c:7:
> .../kernel-source/include/net/inet_sock.h: In function 'inet_sk_state_load':
> .../kernel-source/arch/arm64/include/asm/barrier.h:114:8: internal
> compiler error: Aborted
>   114 |  union { __unqual_scalar_typeof(*p) __val; char __c[1]; } __u; \
>       |        ^
> .../kernel-source/include/asm-generic/barrier.h:142:29: note: in
> expansion of macro '__smp_load_acquire'
>   142 | #define smp_load_acquire(p) __smp_load_acquire(p)
>       |                             ^~~~~~~~~~~~~~~~~~
> .../kernel-source/include/net/inet_sock.h:312:9: note: in expansion of
> macro 'smp_load_acquire'
>   312 |  return smp_load_acquire(&sk->sk_state);
>       |         ^~~~~~~~~~~~~~~~
> Please submit a full bug report,
> with preprocessed source if appropriate.
> See <https://gcc.gnu.org/bugs/> for instructions.
> .../kernel-source/scripts/Makefile.build:279: recipe for target
> 'net/mac80211/led.o' failed
> make[3]: *** [net/mac80211/led.o] Error 1
> make[3]: *** Waiting for unfinished jobs....
>   CC [M]  drivers/net/ethernet/mellanox/mlx5/core/lag.o
> ===
>   CC [M]  drivers/gpu/drm/nouveau/nvkm/nvfw/ls.o
>   CC [M]  drivers/gpu/drm/drm_modeset_helper.o
>   CC [M]  drivers/gpu/drm/drm_scdc_helper.o
> *** stack smashing detected ***: <unknown> terminated
> In file included from
> .../kernel-source/include/linux/regulator/consumer.h:35,
>                  from
> .../kernel-source/drivers/gpu/drm/nouveau/include/nvif/os.h:27,
>                  from
> .../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/os.h:4,
>                  from
> .../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/oclass.h:3,
>                  from
> .../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/device.h:4,
>                  from
> .../kernel-source/drivers/gpu/drm/nouveau/include/nvkm/core/subdev.h:4,
>                  from
> .../kernel-source/drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c:22:
> .../kernel-source/include/linux/suspend.h:364:36: internal compiler
> error: Aborted
>   364 | extern void mark_free_pages(struct zone *zone);
>       |                                    ^~~~
> Please submit a full bug report,
> with preprocessed source if appropriate.
> See <https://gcc.gnu.org/bugs/> for instructions.
> .../kernel-source/scripts/Makefile.build:280: recipe for target
> 'drivers/gpu/drm/nouveau/nvkm/nvfw/ls.o' failed
> make[5]: *** [drivers/gpu/drm/nouveau/nvkm/nvfw/ls.o] Error 1
> make[5]: *** Waiting for unfinished jobs....
>   CC [M]  drivers/gpu/drm/drm_gem_framebuffer_helper.o
> ===
>
> This is with hardknott, aarch64-oe-linux-gcc (GCC) 10.2.0, building
> 5.10.* kernels (5.10.45 and 5.10.65 in the cases above IIRC). The build
> is visiting drivers/gpu/drm/ in both cases, but in the former case it's
> not actually a TU in there that fails, but one in net/, so I'm not even
> sure it it has to do with something peculiar to the drivers/gpu/drm/
> modules.
>
> Has anyone seem something like this, or any ideas for figuring out
> what's going on?
>
> Rasmus
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54811): https://lists.yoctoproject.org/g/yocto/message/54811
> Mute This Topic: https://lists.yoctoproject.org/mt/85816316/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

