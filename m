Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0947BC5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 20:28:45 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.184.1748982520985673004
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 13:28:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mIA+XKnG;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2352400344aso43667945ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 13:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748982520; x=1749587320; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ks+mBSnxnj1Z2MvNA/MlVM1nFUQD5kECOZcLT/SG29I=;
        b=mIA+XKnG27CUWzvuOAe1ORp7yGR5UZMBMBgrwcruRxF/bs//fde2sAwEJFdvHoQ5j+
         5VFuP3za/vJHreXvdVZcx4sZywEV6r9QbgMgFeUORZJFiAKN5Tg8893B6sx4NTqDAbSX
         2kHhkcbqjw1SsOdbbTIs+CZzecm/JgBG2e6ihc9OqdqV5ml9S2fEFx66DuP2xnPnIItT
         li+ZlRsDeZhLdbwvf2SGiizFhnDIZlZFVGQ4F5XgJbMgnVyZltECIWCL1BtnG8+3DA5A
         JfLhAe+fX6qEeozvOjlFveSYyLSBbLSmexJsZVKzqIUDYZKzpcsUoWCOShQRoFJ/v0X9
         EfUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748982520; x=1749587320;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ks+mBSnxnj1Z2MvNA/MlVM1nFUQD5kECOZcLT/SG29I=;
        b=EHekzPloAVqkIsasC/Y9KzQf0LR5Jn227NrpdPmdJUlqNhRoFv9/+3dRSM1pkzvqpF
         Pow3aOhHbkkO5Ixa0QSKvZ+IOvFW3cmLrYQx7xLmkrmWOziCuw3Cud+j/YgkoHGdswdg
         jVe39TXIS8Q8HFB/ntJoGQA3qClaLyc7Te4t2VHFLiXxunDv/e97zHbvJ9ot+ndO3imV
         IujvMYUuxRiqwbyIlEAHXuNN/eKZiXlWcqJAZz4VM++0LdA6VVeMw9ZzUWJDBsncxwX8
         1toOs1Tnlyd8uENTZ/yeolcs5rAv7DeAYKrQxQG0pZOR2HXvBhJ8w8jLImT0nsk5rJF5
         UpuA==
X-Gm-Message-State: AOJu0YxOl8QaO5lCyWevbBZ7QuLYGLswJ/4AkZNmtqTn1JIdf/mdsZZg
	L8bBE3q5F3ZNZykeMDtjP5JXedKBBtif3gMJS+aVhPffsYl7W9HfVnaqYrTy7g==
X-Gm-Gg: ASbGncsa/mnjb0WFR/ryjo7H2/R1n0rTd3tUojDxCeNwtC4KjALVNkGAeykiGMyOxnR
	LfgPcC4rVi/39uNcEaD3k9yGOIgj+NxwViJBkU3ZlzITn+HcTOqJMGA7fEYcitkdhrrJsmQE8Dn
	psah1EyXI3qAMYR0S90sxk0jlj/SOS6M9csQre8TZ3vNNDnHoeTPM4YRm77bD8ZrrU0FrDrdZFh
	/t1HrReZ6OI1ee5TbuAihJdDKog7deua4AALlw7TNFI4OKIrBwn6nUA6TrhmMRoPbwpr0fl2Skj
	QIjx5j1xCNXa2BSpWm9FZlCWMb68wKx794jj7iUlrvJc43LXhhTtmO/FMv1JfLWPLgOrL8K5YAW
	MWtaJZMebR+xYZD7kBJKlrbUfkLIS4EQ/eqXq
X-Google-Smtp-Source: AGHT+IHfPSMR1o09oYGUTIVOInCZRcUAsjlvFteGagLg1MIAYbSFHU9RXg+M4RaZOEZdw3qOPCD/3A==
X-Received: by 2002:a17:902:dac5:b0:223:653e:eb09 with SMTP id d9443c01a7336-235e1486ad7mr922385ad.7.1748982520060;
        Tue, 03 Jun 2025 13:28:40 -0700 (PDT)
Received: from ?IPV6:2601:646:8201:fd20:bcff:6d7:a328:fe85? ([2601:646:8201:fd20:bcff:6d7:a328:fe85])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506cd3506sm91425415ad.156.2025.06.03.13.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 13:28:39 -0700 (PDT)
Message-ID: <6d4bcaf6-60b5-4e8c-9033-b538fd881b56@gmail.com>
Date: Tue, 3 Jun 2025 13:28:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to Customize and Build Original Raspberry Pi OS Using
 Yocto?
To: yocto@lists.yoctoproject.org, anilkumarnt87@gmail.com
References: <f0mQ.1748953926946032572.GW8d@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <f0mQ.1748953926946032572.GW8d@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 20:28:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65460



On 6/3/25 5:32 AM, Anil N T via lists.yoctoproject.org wrote:
> Hi all,
> I want to customize and generate the official Raspberry Pi OS using 
> Yocto and test it on Raspberry Pi 5 hardware.
> 
> Here’s what I’ve done so far:
> I downloaded the Raspberry Pi CM4 rootfs and generated core images using 
> yocto(https://downloads.raspberrypi.com/raspi ... oot.tar.xz)
> I kept only the boot files in the SD card’s boot partition.
> I copied the rootfs contents from the CM4 Raspberry Pi rootfs into the 
> ROOTFS partition.
> With this setup, the board boots successfully.
> Now, I want to take the next step:
> 1. Download the original source code of the Raspberry Pi OS rootfs (not 
> just prebuilt images)
> 2. Build it using Yocto
> 3 .Copy the generated rootfs into the ROOTFS partition and boot the board
> My questions:
> 1. Is it possible to rebuild the official Raspberry Pi OS rootfs (not 
> just minimal Yocto builds) using Yocto?

While it is possible, since yocto build framework can build anything as 
long as someone writes the recipes. I don't know anyone has done it or 
have reported about it in community. Raspbian is based on Debian and 
uses debian's distro build system. Yocto framework builds custom linux 
distros and they can target raspberrypi devices, meta-raspberrypi is the 
yocto BSP layer supports them well.

> 2. Where can I get the exact source code or recipe layers for the 
> Raspberry Pi OS packages (not just Poky or meta-raspberrypi layers)?
> 3.Has anyone here successfully built a Yocto image that replicates the 
> Raspberry Pi OS experience (including its specific desktop environment, 
> tools, etc.)?
> Any pointers, recommended layers, or documentation links would be hugely 
> appreciated!
> Thank you in advance
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65458): https://lists.yoctoproject.org/g/yocto/message/65458
> Mute This Topic: https://lists.yoctoproject.org/mt/113446142/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


