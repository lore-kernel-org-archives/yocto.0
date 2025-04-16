Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1010C369BA
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 16:37:05 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.24406.1744821420905394717
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 09:37:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MHIWPubi;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-acb415dd8faso128855966b.2
        for <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 09:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744821419; x=1745426219; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K4iCY4RbtYwnv6aNlgyMRIOrK+hL3Akbqzl7wALCqzM=;
        b=MHIWPubi6yXJhalp7Bgqh721Ss/hk9Kwsmngd6R4DIKyl8S1YA6m1Zs5ECEpVRqGxs
         Y7nbFxpBb060YiADLvy9oKlCfJRSg6Le6iNReS7gi2kEzmAGuObab5OZgmsPsPma8Mxn
         nEOYCuNvoYW6d1hf5hKRFpGrYcAM/9ywK45Xmw8arHa0m/1uYr9RjVh7e6TpBXRWzyg2
         TX9QFpjQv0UYSl0oP3RFjDdh2F7N0y6+o0Hg3SPO2Fxz5fQ55uF9QFWO5oRwk6F2y4qm
         0OhN+yl5PmTWxdR/OIvu+3xLziV3B6A0GWqiU/G1O7yg5j+/uYtLQwQF4d130Jtppzdv
         p47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744821419; x=1745426219;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K4iCY4RbtYwnv6aNlgyMRIOrK+hL3Akbqzl7wALCqzM=;
        b=iGjMH3bPmRCFG+5v73bXD8vBQZqUxHedGAF6uAwjp9jF4By9EdNMqmQx9E0TUq2Eph
         CiKEFhmTWrl8SOGWHdetJyLaCL8colK7J0t4fojCQCqHnIQJ+bLr9nxrtTjgWiLa4YHt
         R1x8ip67hJ/IIAIor+rGQmx6E2EcFUwMABPN8RoTp12Ihs1nVNeLmLRoCp4T0Iaozy68
         JmfrZHOzdxYs6musEO8oXm0tzryXn9dkYt9MI9S+DlQEbI12GoVwfKHvVD8bV83q+H6Q
         PPFLp4OD+qsvhtDIJfC8D8CfwkukvaGNM96Tid2yOL5eZ1c5CRWsfIzWP2GLG7eSFv9z
         5LRw==
X-Gm-Message-State: AOJu0YxqDQ+rWL+s5YlJNafvTXv9CN3Yv/E40ZTSa5Cg9wgFGLMipi36
	9OEVRIA2jXkbd+C/pObkVki2q5astHaN1a98682fO6/1pQn+lDz8eSf4NFka
X-Gm-Gg: ASbGncuTFLPSqXTPr1b/dmrW5w/l5JHtCk6eQ6zcVMMdoaGO7JbrHOB33E3lNdrpU2L
	c9fGlRLxvXX5JXhftuhQldn/MLyqoIzfYFMsdY1ouIaaaJTgWiNVNfxZjlJG7ClRZeQGwpGN48A
	CySRBZ6dfz9YuR4sw2thLzOVW1iD4DX0rMTv5i8dtbkT28S4jIgsqEmM8qQVaG2HvFZ7zufhfx+
	YaL9uyPkN2wIKSjSMDngTBHEVhKUyWtaff6ijvZFds3CdnqFz/PSAb3DwWDJBCXeYzqmjfjB9Ll
	BxTzya+w/DEyJGZLB9wCMrJhlkjD1mIa+BA/z/JCQDOB3Am/
X-Google-Smtp-Source: AGHT+IGgQE50uteXem8sNqv3rYKqCZhtmC4o6RALBSr/8AkGcYFphFvy59LatayruIAZchzdZYXIIA==
X-Received: by 2002:a17:907:9712:b0:ac6:f6e2:7703 with SMTP id a640c23a62f3a-acb4287833bmr228345666b.8.1744821418828;
        Wed, 16 Apr 2025 09:36:58 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3ce5dd1asm152715966b.83.2025.04.16.09.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 09:36:58 -0700 (PDT)
Message-ID: <d19ccf3f-ed2f-4f6f-942a-f99afdf62f43@gmail.com>
Date: Wed, 16 Apr 2025 18:36:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Gyorgy Sarvari <skandigraun@gmail.com>
Subject: Re: [yocto] UBoot recipe not building automatically
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com
References: <15TiFE3blEYpDlN-95PaXhc_iS4UkmfSypi_lej7jVMERSuUKRsO4Uc3J5vnY0vYrmyDxozFIiK5NMI_JV8o3g12v966iF4io0XxmxiGuN8=@protonmail.com>
Content-Language: en-US
In-Reply-To: <15TiFE3blEYpDlN-95PaXhc_iS4UkmfSypi_lej7jVMERSuUKRsO4Uc3J5vnY0vYrmyDxozFIiK5NMI_JV8o3g12v966iF4io0XxmxiGuN8=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 16:37:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65194

Do you have
EXTRA_IMAGEDEPENDS += "virtual/bootloader"
or
EXTRA_IMAGEDEPENDS += "u-boot-beaglev-ahead"
in the config somewhere?

Usually it's in machine config, but maybe you have it somewhere
else. If you don't have it, add it to the machine config, and give it a
test build.

See also:
https://docs.yoctoproject.org/ref-manual/variables.html#term-EXTRA_IMAGEDEPENDS

On 4/16/25 15:29, Kanak Shilledar via lists.yoctoproject.org wrote:
> Hi,
> I am trying to fix the support for beaglev-ahead in meta-riscv. When I am trying to do a fresh build of core-image-minimal, it is not building the uboot and I have to trigger it manually. [u-boot-beaglev-ahead.bb](https://github.com/riscv/meta-riscv/blob/master/recipes-bsp/u-boot/u-boot-beaglev-ahead.bb). 
> board configuration file: [beaglev-ahead.conf](https://github.com/riscv/meta-riscv/blob/master/conf/machine/beaglev-ahead.conf)
> 
> How can I make it to build automatically?
> 
> Thanks and Regards,
> Kanak Shilledar
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65191): https://lists.yoctoproject.org/g/yocto/message/65191
> Mute This Topic: https://lists.yoctoproject.org/mt/112294658/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


