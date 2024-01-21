Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0B1C47258
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 02:43:10 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web11.39841.1705804983041208831
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 18:43:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PWq4yV1h;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7833a51a1aaso145033185a.0
        for <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 18:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705804982; x=1706409782; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w0gamM+Wx8rOP71ZCTj6wdttJfxPw+38DsoRJ8LK6mw=;
        b=PWq4yV1hYzvXmwRnZ2xsEEwRc0iF3hoHKW6KLKCssDWsynQwuhzynt5oZj6SqVj0yZ
         B/1zjcDA4lpmoTRhA8T1OvQy3fEVfZYqFW+sZbDhSWpyz6R8xfjByS13fJfhVQO1q8hT
         y0zOmNeVRqxINn4mIX9ajVJ3a41SdQ33/4UrJ7+6XH1sxQ8N36UyVFBdeEsEo1PHftSX
         x2MBsm/VhDesHA2DZ5gHNhgOMrs93ixeBi2XrzGqS1oRYR4Sc5FztqUa/0EROLw/DpLd
         mOigJKcscHgQSl5CuRDSnc2PYf0YPNTWfsD1TiliUqvUFMWlyH1qVXWAu/wKFQsftuf4
         PydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705804982; x=1706409782;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w0gamM+Wx8rOP71ZCTj6wdttJfxPw+38DsoRJ8LK6mw=;
        b=am+Fqx/yHIinMqVuuaTvUip1tM6MaFQv8B4UHGmF0ivJ7JNNnPX3YkjcnQI3e5qlrl
         RkyW4Gxn5ZkEMssOzjZO/Jc4c77ulFqE0xonSjcbMY+CreamVrYvjW/15P4xna/UOHVF
         mG54aBjoirdMznOg+NqoJxxI8pzDpx5VLdfS+JOngXYZ5CUYhsUdSMHf3N761SHct93B
         xh8/hrIwH9jK36XTUzz9dvcwSbv1Q3O+eUZQspYDoxOtEhl5dVBTMTgq/qRVixKuFmEl
         IZKooTqC73ha+QnTKz67EQFIU6LGkTO9iRye6d91gEbgK4nWV/ekJqWV0KKV+CAy5tRH
         sP+w==
X-Gm-Message-State: AOJu0YyI4U1eOMG8xnboxKLEkfl89IE+YRTvCzCP++pOJGuftQbaUc5A
	BK86q0HYSzkCna2zb9Y+fm1EPnxx2D33lvSWWUPK6sgarY68pDDUUGZcZCuT
X-Google-Smtp-Source: AGHT+IFBuXQAisWYcY9HnL+b2oMusP1FfccL8agopjsOLqhh4jroZsZcxcsZ4vDWy8FSfdllTmO/Fg==
X-Received: by 2002:a05:620a:261c:b0:783:5346:42b1 with SMTP id z28-20020a05620a261c00b00783534642b1mr2823814qko.113.1705804982043;
        Sat, 20 Jan 2024 18:43:02 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id z25-20020ac81019000000b004298a09900bsm1176399qti.53.2024.01.20.18.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 18:43:01 -0800 (PST)
Date: Sat, 20 Jan 2024 21:42:59 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Stephen Chen <stephen@radxa.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH v2] rock-4c-plus: add
Message-ID: <20240121024259.GC17457@localhost>
References: <20240120093038.654638-1-stephen@radxa.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240120093038.654638-1-stephen@radxa.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 02:43:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62209

On Sat 2024-01-20 @ 05:30:38 PM, Stephen Chen wrote:
> ROCK 4C Plus is a Rockchip RK3399-T based SBC from Radxa.
> 
> Specs:
> - RaspberryPi 4 form factor
> - 64bit LPDDR4
> - eMMC
> - Micro SD
> - SPI Nor Flash
> - Two Micro-HDMI (HDMI 4K and HDMI 2K)
> - 4-lane MIPI DSI
> - MIPI CSI
> - GbE LAN with Power over Ethernet (PoE) support
> - Wi-Fi 5 and BT5.0 wireless module
> - 3.5mm headphone jack
> - Four USB ports (two USB2.0 and two USB3.0)
> - RTC
> - LEDs
> - Power button
> - Pwm fan
> - 40-pin color expansion header
> 
> Signed-off-by: Stephen Chen <stephen@radxa.com>
> ---
>  README                                      |  1 +
>  conf/machine/rock-4c-plus.conf              | 10 ++++++++++
>  recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>  3 files changed, 12 insertions(+)
>  create mode 100644 conf/machine/rock-4c-plus.conf

Applied to meta-rockchip, master branch.
Thanks!

