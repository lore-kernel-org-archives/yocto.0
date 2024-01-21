Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F8EC47258
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 02:42:30 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.39834.1705804943527904519
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 18:42:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=al1ZHQHQ;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7831b3a48e7so142088785a.3
        for <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 18:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705804942; x=1706409742; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BALqgbyBqVTe+mAWKSARWjsiK9NYm3e3CTjWd/krev8=;
        b=al1ZHQHQFy388sGXu1bZeWLVRH58tb1Bxu8vlETO/L4vzz7/qm7hKOp3i46kXluwbg
         Pdq60mqq1/tW0li2aKVvtXjHB0O8qpymzJnZuUsUOXqkgctCSu6/GrR7hokEDQbQDCjH
         WpLabn1o94HNiP4id1G4isvcJOR9M4sGDyQ2iluO1ifcGweGbBwaL4bIGMLpI/bZVYl9
         /P7alpCJIzvUInvoq1QxahLZ25osqnJJsd84pvBgnY8TLDTruQc/STA3UmJJ5PGAPiqr
         ZNdb4mnZj2mWq29uRiQt3pfi8x+b8ycBSR2k3PL9zM8ISTSATcY0TWwhvg4xO0rzlNfE
         BmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705804942; x=1706409742;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BALqgbyBqVTe+mAWKSARWjsiK9NYm3e3CTjWd/krev8=;
        b=H7M921WyOj/9ARCTEClwFLofuYXn6O17dz2sw/dFIheQdHIuUVNVHqcQ0PJnk5bw1/
         shDbo1wGSXBs/CPPhI7zLFmNFhmnJpNJbujJkkjXCec2ZwxkGcLJfrk9PkTvkeoKmN+G
         nhH+FzpqdWQumI30X7smDAtKD3xdslVy0ZqQ46y/DKyKwvoVg0OCoi25j2BM3U4wFOHV
         UgoFa1+7iJGNigN5D7sBuhtbN5KS1uSi1FDR0Wtij23MRXC8uJyKSIlTZ+w8CN+470M6
         wu65qAMWldPaQOTZl503dIK0iXYmtVsvJaHYq7Xzo2d5acIs9Hg7KYLJdnAFwB2BuPOz
         1rPA==
X-Gm-Message-State: AOJu0YyxAB61LOMSR3UrvdEaLIq0NeRVj5SA0h6hZPHN8mvtZfu8NIvW
	EP6kAdraehfNkeFbtVf6XMO9urmoPwqMLG1ohqsJvpxh3hhwlkVQAu6gWtr2
X-Google-Smtp-Source: AGHT+IHbLRQWLuv3pnhorI2p3Ib++WHzUtvtac/9JGwVf2U/8Szxo3o5KAKuhuyoqCJyrQFMENkpkQ==
X-Received: by 2002:a05:6214:f0a:b0:681:99fd:f0db with SMTP id gw10-20020a0562140f0a00b0068199fdf0dbmr2327789qvb.56.1705804942581;
        Sat, 20 Jan 2024 18:42:22 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id e3-20020ad44423000000b00680f8a7c026sm1124545qvt.65.2024.01.20.18.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 18:42:21 -0800 (PST)
Date: Sat, 20 Jan 2024 21:42:20 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Abhisit Sangjan <abhisit.sangjan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH v3 1/1] orangepi-5-plus: Support Orange
 Pi 5 Plus single-board computer
Message-ID: <20240121024220.GB17457@localhost>
References: <20231221044048.1959-1-abhisit.dev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231221044048.1959-1-abhisit.dev@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 02:42:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62208

On Thu 2023-12-21 @ 11:40:48 AM, Abhisit Sangjan wrote:
> From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
> 
> Being merged when the u-boot version is 2024.01-rc5 or newer and the Linux Kernel version is 6.7 or newer
> 
> Orange Pi 5 Plus is RK3588 based SBC featuring:
> - 2x 2.5G ethernet ports – onboard NIC hooked to PCIe 2.0 interface
> - 2x USB 2.0 host ports
> - 2x USB 3.0 host ports (exposed over USB 3.0 hub)
> - Type-C port featuring USB 2.0/3.0 and Alt-DP mode
> - PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket
> - RTC
> - ES8388 on-board sound codec – jack in/out, onboard mic, speaker amplifier
> - SPI NOR flash
> - RGB LED (R is always on)
> - IR receiver
> - PCIe 3.0 on the bottom for NVMe, etc.
> - 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)
> - Power, recovery and Mask ROM buttons
> - 2x HDMI out, 1x HDMI in
> - Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI
> - 4 GB, 8 GB, 16 GB and 32 GB of RAM
> 
> Signed-off-by: Abhisit Sangjan <abhisit.sangjan@gmail.com>
> ---
>  README                                        |  1 +
>  conf/machine/orangepi-5-plus.conf             | 12 ++++++++++++
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb       |  2 +-
>  recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +++
>  4 files changed, 17 insertions(+), 1 deletion(-)
>  create mode 100644 conf/machine/orangepi-5-plus.conf

Tweaked and applied to meta-rockchip, master branch.
Thanks!

