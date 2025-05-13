Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75679C3ABC3
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 13:26:22 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.75999.1747142774241432429
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 May 2025 06:26:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AQIwPRS0;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad4d5bb4d0eso176073866b.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 06:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747142773; x=1747747573; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yhVbE7rGfzdMlBSYw0e978s78SAAAwtDNXT61KmFWnQ=;
        b=AQIwPRS0PLjGDPcmyoY+jfTLU0EOiNnQSbIvx1NIpeAjNqE6NR65hjqTIOk0nJOI2X
         lSDt/cHQmiBLJ1PzWU+2V48532s14ZNqdkXN81/4ywukYgMvQGSH/fUcHuZGQEI6aCj/
         YuHdwsWQ+HGVdlbqxQBdP2/gdWpEGi0+0CGljnXi5/LQcrwBLKAS/Nq9TUJu/m0gS1zH
         tjmquGavcEeOjs1IsKSlps+p/7s4WOKABVJTp+CMvMpftkxkJIea7vg8PdhW5RME51Jk
         3UiC4xs0tpAHQyq3M+mq7a4Ob6OmtjWSygwI1sGUF/RHPxIGw28lqgdPKjmdvRn5BWkK
         7ATA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747142773; x=1747747573;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhVbE7rGfzdMlBSYw0e978s78SAAAwtDNXT61KmFWnQ=;
        b=PKid2jnacx2sIsKpISotF5Z7u2Gz2ccocy/BjeQGu6+GW9M50A+6yxE5401yU93/ao
         89+6dIpkaR/M7cLgEKzrLhEg43SS7s1zH4UvRo2lPCaU56AWKV2H24a8ii6stxtHoF19
         PzV1t8n2oGzoJzRWrTQqhHM9CtZIolfggShVBSHnhEXZNFtvxd2q0x8M0vZZgVzU3JI8
         haoVyV9ZmnEyrgnQtnCdPNNJO6fx7FPLXo4JbzybhJFeHInQEHeZsyox3BG94M6VL0y7
         u+PbjiliYzhvkSGE9Tk4HcLF31Se6eISWHi7J6HkNqfEjwBR6tA31HajTV1wRu3j5fDC
         c6Ug==
X-Gm-Message-State: AOJu0YzCWxR9Uiew23JPSKNiij0JNvjpTL4Atrb3AiMdrFR1fZ9sjPqF
	UlKbYHwQ/SzvAz7BDqPaw98pSJTaE/l4EOJQuQpw+j7lUxrez3lNsbkj9A==
X-Gm-Gg: ASbGnctKrSglk5d0XNx9B6/l6yE3dWLBqymniP+JMCZY/+O/wM5Ps5A+RNhjnmXy98J
	eW4VUu/55+OnsXPXX2xt6nvK8hbV+BQNEDxG4k+XyZbp+ZxYsZeOX+kSielii81725V6P6eGage
	ck8O4Uxe7HO31TX+cibIZ/VbQNZD878mSPL9kMAyxcc3SMuJDBhojHxY6L3vf2dKzb01wIOZyuF
	eNWDJyXxrjdTM+5c1aNIHef+TDfWUfFwF1KkoE7F0Dz+IN3tdw+FBd6JU9ddNKb12yCoBGiSoK7
	CV/ldFctSkIkIJnj4zqVjyWG07e3RQNZRmEvzWeJZ/Z4uUuGtahohbMfshs=
X-Google-Smtp-Source: AGHT+IGc71229s+tp4lJ32O6Wk/MJcyzd9VXpvWwJYBlEn4fS5Wj38aDXrXdoTA/izEuzipdy3UAXQ==
X-Received: by 2002:a17:907:970f:b0:ad2:2dc5:d1b6 with SMTP id a640c23a62f3a-ad22dc5d274mr1228787166b.16.1747142772290;
        Tue, 13 May 2025 06:26:12 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad221288a91sm740636366b.15.2025.05.13.06.26.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 06:26:11 -0700 (PDT)
Message-ID: <5c5c21d7-4850-4558-947f-b15617b218f9@gmail.com>
Date: Tue, 13 May 2025 15:26:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Disabling APM Events from boot #kernel #scarthgap #uboot
 #yocto
To: yocto@lists.yoctoproject.org, matt.holmes@zethon.com
References: <Ef5p.1747124909490032750.h2Rx@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <Ef5p.1747124909490032750.h2Rx@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 13:26:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65327


On 5/13/25 10:28, Matt via lists.yoctoproject.org wrote:
> Hi all,
>
> I am currently trying to disable APM Events for my board's GPU since
> it has a high performance impact on my program. I am using the
> ti-linux-staging 6.6 kernel with the u-boot-ti-staging u-boot on
> scarthgap, and the GPU driver is from PowerVR using their Rogue
> architecture.
>  
> Currently I have tried editing the kernel configs to disable APM but
> the options seem to have no effect, even though the changes are
> visible on the board itself.
> I am also trying to edit the u-boot parameters of the pvrsrvkm module
> but not sure about where to make the change in the u-boot source.
>
>  
> Is there anything wrong with what I have tried with the kernel or is
> there any other method I can try to achieve this?
>
It looks like the pvr driver has some APM related[1] build-time knobs -
I'm not sure if it requires the patching the .mk files or it can be
passed in the recipe also in EXTRA_OEMAKE. But I would experiment with
these, if you haven't done that already.

[1]: e.g.
https://git.ti.com/cgit/graphics/ti-img-rogue-driver/tree/build/linux/config/core.mk?h=linuxws/scarthgap/k6.6/24.1.6554834#n1690
values:
https://git.ti.com/cgit/graphics/ti-img-rogue-driver/tree/include/rogue/rgx_fwif_km.h?h=linuxws/scarthgap/k6.6/24.1.6554834#n250

> Many thanks,
> Matt
>  
>  
> Below is my fragment used to modify the kernel:
>  
> # SPI
> CONFIG_SPI_OMAP24XX=y
> CONFIG_SPI_SLAVE=y
> CONFIG_SPI_SPIDEV=y
> # Disable energy saving mode for GPUs
> CONFIG_ENERGY_MODEL=n
> CONFIG_SUSPEND=n
> CONFIG_WQ_POWER_EFFICIENT_DEFAULT=n
> # CONFIG_PM=n # Currently breaks the am68
> CONFIG_PM_SLEEP=n
> CONFIG_HIBERNATION=n
> CONFIG_CPU_PM=n
> CONFIG_CPU_IDLE=n
> CONFIG_ARCH_SUSPEND_POSSIBLE=n
> CONFIG_PM_CLK=n # Doesn't work without CONFIG_PM=n
> CONFIG_PM_GENERIC_DOMAINS=n
> CONFIG_PM_GENERIC_DOMAINS_OF=n
> CONFIG_CPU_FREQ_GOV_POWERSAVE=n
> CONFIG_CPU_FREQ_GOV_CONSERVATIVE=n
> CONFIG_ARCH_HIBERNATION_POSSIBLE=n
> CONFIG_ARCH_SUSPEND_POSSIBLE=n
> CONFIG_ACPI=n
> CONFIG_APM_DO_ENABLE=n
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65324): https://lists.yoctoproject.org/g/yocto/message/65324
> Mute This Topic: https://lists.yoctoproject.org/mt/113086525/6084445
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Mute #uboot:https://lists.yoctoproject.org/g/yocto/mutehashtag/uboot
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


