Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C7D2C433EF
	for <webhook@archiver.kernel.org>; Fri, 15 Oct 2021 04:33:11 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web09.5333.1634272390743312288
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 21:33:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZdpinpNI;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id
 e5-20020a17090a804500b001a116ad95caso848138pjw.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 21:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to
         :references:from:organization:subject:in-reply-to
         :content-transfer-encoding;
        bh=/QeEZ2st4kTYDRHbXuqmk66iIvLbNDICp78Ty9cnSSM=;
        b=ZdpinpNI9plwyZZeGJ0xM/KTZuf5pDYrE7JDqceybWalgdcCQIzEG7eZZLq89GUeUt
         bBuMWshvYLj/Sm8GC+kIk7k0yZMIgWqJqaZU/srBGORMip607ELq8xcZhY+jpOlwe99C
         X2zMFyCyH19Wur7kqexhY26DqLapprFb9MU6f6R70Uw05N+8CEHbQbm8QpFA7gtQ/sh6
         B9ektxv3lzk3Va/wwzBwNpwZtMxXUifzaMv3SQ6z69cQJ+LRoJ0LQ+ar26MdMFgUKZ0I
         UgMlrF5PIn+ubYibpfjcgx7QzNiFVXs7cPDjteItIgRhCTMrjLjw7IBcChsF46TAi9c6
         jjEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:references:from:organization:subject
         :in-reply-to:content-transfer-encoding;
        bh=/QeEZ2st4kTYDRHbXuqmk66iIvLbNDICp78Ty9cnSSM=;
        b=WY2vzNKHiL2EcRbDBsv9wGFNIN55Sz9kNjZJA5rbMrl3JQgp6xpBsvLa5gxHzyGrsl
         y/gHz2ttUF/3RYxfXkdyYQFL1S5dAf+ASTv36lfLwbXpeSrc/BU5PI6lQ4bsOcNwPeFR
         BJi6AB/Xch1Zs6znnGN5hZSdNHgIkW/WYGCiMnDKzLkG9N6ykeMQetexJ8vVVt+sqdyH
         4jHoJDWbLCb0uMjY9Z4EyizsmIhGDl7tDnVjq5Je2S2GmnokvCLz/yfVX3fgntkmEit2
         vuVv6CmBbs0y2fyv6JfXIVPjtnRh4cf/7KmxByMgff5beJVQ8c239rAFVksNcbffPxmF
         5oYA==
X-Gm-Message-State: AOAM533mUbgVgiQ2kw6yHnCYwNq34GhCNMqn+pPK4tDo6X706ku0Yd8P
	Kb6DyyoXhBzMmOWuIPZi8myVUjo+t7XUcw==
X-Google-Smtp-Source: 
 ABdhPJw86d5/3bcfUMtGpYDEOd67f7rzIdREcTJ62TPFXw8sWzbvY7dLWp+nITtHZC5hUMcaHdPzLQ==
X-Received: by 2002:a17:90b:17ce:: with SMTP id
 me14mr10979054pjb.112.1634272389986;
        Thu, 14 Oct 2021 21:33:09 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:605f:eda0:f2c4:9c0?
 ([2601:646:9200:a0f0:605f:eda0:f2c4:9c0])
        by smtp.gmail.com with ESMTPSA id
 n28sm3767609pgc.55.2021.10.14.21.33.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 21:33:09 -0700 (PDT)
Message-ID: <8ab2e47c-eb74-91da-9ad0-88c4266711e1@gmail.com>
Date: Thu, 14 Oct 2021 21:33:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.0
Content-Language: en-US
To: Paul Eggleton <bluelightning@bluelightning.org>,
 yocto@lists.yoctoproject.org
References: <3379890.oiGErgHkdL@linc>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] glibc -fstack-protector-strong
In-Reply-To: <3379890.oiGErgHkdL@linc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 04:33:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55080



On 10/14/21 7:35 PM, Paul Eggleton wrote:
> Hi folks
> 
> I'm looking at how -fstack-protector-strong might be enabled in the glibc
> recipe. It looks like it should already be enabled by default via
> --enable-stack-protector=strong in EXTRA_OECONF, however looking at the
> compile logs it is passing -fno-stack-protector instead. Examining the
> configure log:
> 
> checking for -fstack-protector... (cached) no
> checking for -fstack-protector-strong... (cached) no
> checking for -fstack-protector-all... (cached) no
> 
> This in turn comes from libc_cv_ssp_strong=no in CACHED_CONFIGUREVARS in
> glibc.inc. Searching back through the git history I can't find much by way of
> explanation as to why the stack protector options are disabled. Setting
> libc_cv_ssp_strong=yes however results in the following:
> 
> | x86_64-poky-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 -mfpmath=sse  --sysroot=/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-z,relro,-z,now -fuse-ld=bfd  -nostdlib -nostartfiles -r -o /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.os \
> |  -Wl,-d -Wl,--whole-archive /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a -o /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.os
> | x86_64-poky-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 -mfpmath=sse  --sysroot=/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-z,relro,-z,now -fuse-ld=bfd  -nostdlib -nostartfiles -r -o /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/librtld.map.o  \
> |       '-Wl,-(' /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/dl-allobjs.os /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a -lgcc '-Wl,-)' -Wl,-Map,/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/librtld.mapT
> | /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.3.0/ld.bfd: /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a(libc_fatal.os): in function `__GI___libc_fatal':
> | /usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/libio/../sysdeps/posix/libc_fatal.c:161: multiple definition of `__GI___libc_fatal'; /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/dl-allobjs.os:/usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/elf/dl-minimal.c:188: first defined here
> | /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.3.0/ld.bfd: /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a(libc_fatal.os): in function `__GI___libc_fatal':
> | /usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/libio/../sysdeps/posix/libc_fatal.c:161: multiple definition of `__libc_fatal'; /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/dl-allobjs.os:/usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/elf/dl-minimal.c:188: first defined here
> | collect2: error: ld returned 1 exit status
> | make[2]: *** [Makefile:499: /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/librtld.map] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: Leaving directory '/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/elf'
> | make[1]: *** [Makefile:490: elf/subdir_lib] Error 2
> | make[1]: Leaving directory '/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git'
> | make: *** [Makefile:9: all] Error 2
> | ERROR: oe_runmake failed
> 
> This is not an area I have looked much into before; does anyone have any insights?

This was enabling ssp support in glibc not only for other programs but 
also for rest of glibc components during compile and that resulted in 
duplicate symbols, IIRC thats why we disabled it, the error you are 
seeing looks that we still have that problem lurking around. 
Unfortunately I dont have a solution handy to offer

> 
> Thanks
> Paul
> 
> 
> 
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55079): https://lists.yoctoproject.org/g/yocto/message/55079
> Mute This Topic: https://lists.yoctoproject.org/mt/86330759/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

