Return-Path: <pkl2000us@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D835AC83030
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 20:11:08 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.2143.1751919066804193397
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 13:11:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EUC0+UmF;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: pkl2000us@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so6721923a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 13:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751919065; x=1752523865; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sellnyF9sOONiMo1bdBaUcER77Jph47C/C6p3nTDnWs=;
        b=EUC0+UmFKwyqEuhIJygcr8CmjkTlVoE6uTmfgagRcL8qnkEMtjzW93NyfPYahEXT22
         FRzf/ymcB/KHG6MX1Bp9y7uXJnGcODP8Mr54h9BOxsQiT9+RY5clckhJljRE3Tn+n7M7
         loB4f9g9ir17WAFfRrgPOTQd1I7C0Xa270egIfTn3SaJ9mbAHqtBTB9Xros1z2P0Cso9
         tard/j927JaFwXRN3ZwhmHBURpMPy4zpY3uiZELTpXv2ZLksyfJ6Ke3mDnYkfsf40o7i
         57/KZ4S5TaIRK/Eh6jkgh2XKAnIfEDI7WcAEsngN09BAo2kevzsaIInENnq75LCSgO6K
         3M6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751919065; x=1752523865;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sellnyF9sOONiMo1bdBaUcER77Jph47C/C6p3nTDnWs=;
        b=KILRnXXBry4NBcEs/LiVTKD7G/NC1QQBLAWnKz8fqicGDXDBsG8PdkwswTXGZwID4Q
         GR8oKBQOvzrH82l6pFHigGGGttuLqu1nyKsWgrJRByOB8FcmSdLcb+4EPji5DsPFYrNq
         doM9T9+5qb1d+BjnReElfj2sdqSlr1SSwdBZZ99PI8otN1QuK9ZVuYqhwbJqcmFFO8LR
         4XYLcNoNy2kt+cGTC/XOTFjm6ZPEMwDrgfgrI/CaaqBywzkUcwJ21ZxIy4e83Yar/Vd4
         C/pzmHOnwIzl4hg5yCisjZaYFgnR77rFw6D8s+97MhcAhw2GBKGGCByJA0CYOQF7xcH0
         5E1A==
X-Gm-Message-State: AOJu0YwKWLjQ8+yBqHKgxkNb2PvFbD96FPp/vzUb/gEn+Rbp0mBmIW0O
	Kgvolz+/AsyFLXOl5x4YSR8F/x1WTWXsejPt2iCvGfpKgbV9PYmBMd5zdgceyXJKZWrAdhkH6JZ
	1StT5s7s2v9QbxvM8kfEhZnETIdJqMV3mz0gg6b2Lhw==
X-Gm-Gg: ASbGnctY+wSYFTxi8L4huGMBkUIlyuWz2Y0VsyOS6DVyMd5svbBWdSikuIdxT1kpG9e
	AU6EcxI8cQx8mLNXuLXzoe2jwrUuQK4OqoVCU2TzuxQDiuk9luqsnvh6u8AqzWgFX70J9hmzOUi
	FoNpcK0gj9ew/JNX/tqHnNcGb522gc7UngU66ZnFUu22E=
X-Google-Smtp-Source: AGHT+IFY9BWTAvUq7lplQh57Q9xqOZQ1tK6WCgmCi1etuOLzK+HWv1D6uWNSvNFmsHJGyhfAoLLXsJJ+PMFtkiIhK88=
X-Received: by 2002:a17:906:c14e:b0:ad8:914b:7d15 with SMTP id
 a640c23a62f3a-ae3fbc899b6mr1496789866b.7.1751919063896; Mon, 07 Jul 2025
 13:11:03 -0700 (PDT)
MIME-Version: 1.0
From: C Larbi <pkl2000us@gmail.com>
Date: Mon, 7 Jul 2025 20:10:53 +0000
X-Gm-Features: Ac12FXyveSL2Xyg5XAMbILG3GS3dksUwWZhrYkk1ac3El12FneXuYuJ7wX0bMIs
Message-ID: <CANVomh9M6p+aQS682mfHv-kkF7D-K3ZTUBcXsxBnSv2QgQ8B4g@mail.gmail.com>
Subject: Custom Kernel Recipe Compilation Error.
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 20:11:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65623

Hello all
I am a newbie to the yocto project and on a journey to understand the basics.

My reference hardware for my learning journey is the Orange pi 3b (RK3566 soc)

I have created a bsp layer containing my machine configuration and a
recipe to build a custom kernel.

The kernel recipe build throws an error on the "do_compile_kernelmodules" task.
Before writing this, i went through the manual process of compiling
the same kernel source on my machine and i was able to produce a
vmlinux file and build the modules.

This is the error from the yocto build process.

|   GEN     Makefile
|   CALL    /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/checksyscalls.sh
|   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o
|   CC [M]  drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/siutils.o
| /home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.c:44:10:
fatal error: typedefs.h: No such file or directory
|    44 | #include <typedefs.h>
|       |          ^~~~~~~~~~~~
| compilation terminated.
| make[7]: *** [/home/cerezo/yocto/tut/poky/build/tmp/work-shared/opi3b/kernel-source/scripts/Makefile.build:250:
drivers/net/wireless/rockchip_wlan/rkwifi/bcmdhd/aiutils.o] Error 1
| make[7]: *** Waiting for unfinished jobs....

Will really appreciate if i can get some pointers as to what i may be
doing wrong.

KERNEL RECIPE
https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/recipes-kernel/linux/linux-orangepi.bb

MACHINE CONFIGURATION
https://github.com/AccraNET/meta-orspace-orangepi3b/blob/main/conf/machine/opi3b.conf

Best Regards
Cerezo

