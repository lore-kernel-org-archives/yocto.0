Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0896C83F0F
	for <webhook@archiver.kernel.org>; Tue,  8 Jul 2025 09:06:22 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.14242.1751965573124197529
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jul 2025 02:06:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ah/UDuwL;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60780d74c8cso6314941a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 02:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751965571; x=1752570371; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GwwLbZfam9WRx7a3FPFxtq65fDhuD/hhxeZlGjyjbLU=;
        b=Ah/UDuwLkZOhMuldJvG6LZMFaEVIRBdPEnGASbV+K2Azte5nhmMkmOAPhnIjVc8wSb
         5DZJEU768FJlQr3hzA59AkarxUAp62EnJ/e0LvctmLQ0axt3dCv3HWBf5mFkye+xxerF
         uNNm31ryHeIA3B7vovDs/I59KLGmuwbn49qQLymN8IJnSOaWSpv1j8TCQNXPVE61FMYs
         oCV99UujCF5PLR4Op49fzyqH5OghYq/X3RvwYCRSI5WSNLPQ/7AYy3oxAB7MXtNscEaN
         hOHMOp9eIy85TWWS0e5VsEBzR3KZvUqgKzoaJPwiXbM+zyeSP7QDDsnOnqglFLHODBzP
         V1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751965571; x=1752570371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GwwLbZfam9WRx7a3FPFxtq65fDhuD/hhxeZlGjyjbLU=;
        b=QjoWA/i2wQztPLjAEmaP1nqQsTACZJfqzVHcuwHsfXTwp2ZWAXW29ec+Ddw+EOk+H4
         jVrvYo44aAZTBZSlexIDHpAyKQNzDSOWOUn2Lh5QKN7MB6ZOaIhU448rRU0EhR2k+bjK
         l7CybAvrDx/gg8ocOLh55o1fzOSNVe7DX+X8x876x4USsnyo3YHl/K9OJtL/UhImHDm7
         9Uo8k8Hh6qEgrSQyJrU8C2jFgBDN+olbqh2p6gDiqnOjpwScRv93bIdC1Bc2op2M1Zhn
         D3TvRTAhXUL9TZkAZ7fqSlm/dIXFOhX/btbnM9iyuwJf05RTdNJlMbynk6kpWYf2ihsF
         6vig==
X-Gm-Message-State: AOJu0YwabLLod4jc+heNX6+7+YgSyC8nouR8iuGQOo7qd0FOnq9BLLFw
	w4TId1TkSfKMbfYpcMhhNOOdZq1iLL2roObR55r6YVwEIUDhsSL9T/Enga+/Rg==
X-Gm-Gg: ASbGncvhxRo1yik6LbwBOA0NX2GjLLeKpJH1y7Q0632ATSbJevPb9ku2r4+uREUiJtG
	WAkm+bt1pHmWHqskWxcC7gBhrdn88KIWEtiKf6RIOvCMYipeNg94kw9xrOw5yU74fFDzcb94+WT
	2xqFqczLoOVrG6crw3M0tflOAvOW4BHHE5SgMh3vQ1L4SbNzVjxBpGVX0kF6HY6K/0LqLySrz2W
	do2s3k3tdxoy1Tu+dpWEYOCQaVEpYYwqNpEEQRxR6Dc99NtkT/fYT73cpcaX4uUjC/237/r4/dm
	oWQag63J1puOrRxPVMBDDhiZcKoJL9NVrfsKuqkBAili1x0X0Vz4esOrec20vCkRgsrEkA==
X-Google-Smtp-Source: AGHT+IGNeG2sPWoLdCyYyKmN4DZYqFM9F4kyRZBACI2oTAoGNQOIfxrKSm65DyPkZBDPa+qRz9uqUA==
X-Received: by 2002:a17:907:9712:b0:ae3:7283:b9d7 with SMTP id a640c23a62f3a-ae3fe7f6378mr1605575466b.46.1751965570734;
        Tue, 08 Jul 2025 02:06:10 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b08568sm856049966b.139.2025.07.08.02.06.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 02:06:10 -0700 (PDT)
Message-ID: <0a3017ff-19f4-4e18-a338-32450acfa8ee@gmail.com>
Date: Tue, 8 Jul 2025 11:06:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Custom Kernel Recipe Compilation Error.
To: yocto@lists.yoctoproject.org, pkl2000us@gmail.com
References: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 09:06:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65625

On 7/7/25 22:10, C Larbi via lists.yoctoproject.org wrote:
> Hello all
> I am a newbie to the yocto project and on a journey to understand the basics.
>
> My reference hardware for my learning journey is the Orange pi 3b (RK3566 soc)
>
> I have created a bsp layer containing my machine configuration and a
> recipe to build a custom kernel.
>
> The kernel recipe build throws an error on the "do_compile_kernelmodules" task.
> Before writing this, i went through the manual process of compiling
> the same kernel source on my machine and i was able to produce a
> vmlinux file and build the modules.
>
> This is the error from the yocto build process.
>
> |   GEN     Makefile
> |   CALL    /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/checksyscalls.sh
> |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o
> |   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/siutils.o
> | /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.c:44:10:
> fatal error: typedefs.h: No such file or directory
> |    44 | #include <typedefs.h>
> |       |          ^~~~~~~~~~~~
> | compilation terminated.
> | make[7]: *** [/home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/Makefile.build:250:
> drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o] Error 1
> | make[7]: *** Waiting for unfinished jobs....
>
> Will really appreciate if i can get some pointers as to what i may be
> doing wrong.

This seems to be a recurring problem with this particular vendor kernel
unfortunately. Take a look at this patch which solves the same issue on
a different branch:
https://github.com/riscv/meta-riscv/blob/master/recipes-kernel/linux/linux-orangepi/orangepi-rv2/bcmdhd-fix-typedefs-header-not-found.patch

I think adapting this to your branch should solve your problem too.


>
> KERNEL RECIPE
> https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/recipes-kernel/linux/linux-orangepi.bb
>
> MACHINE CONFIGURATION
> https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/conf/machine/opi3b.conf
>
> Best Regards
> Cerezo
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65623): https://lists.yoctoproject.org/g/yocto/message/65623
> Mute This Topic: https://lists.yoctoproject.org/mt/114034987/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


