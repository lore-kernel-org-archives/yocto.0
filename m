Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.413.1632156856719357730
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Sep 2021 09:54:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HIYi/eoX;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id x9so3644438qtv.0
        for <yocto@lists.yoctoproject.org>; Mon, 20 Sep 2021 09:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L1LyAKXVjHTWKjaRctbdLsAVlVToYGw4T5kS0zSQdpQ=;
        b=HIYi/eoXitZn0kA32PYnCBMH+N+mHd6SAVK/BawqxcDbi7nEaPzjJ0CEBfl4ncGflw
         I0cGaAgXUCSi+76AbFrPWs0lBxBmylUS5/f0fzJkSXxoanGOODnw5qB2+9PkLhQIujop
         zLOvAkslRT3EwnrZEAlcAzUw4T/TlzCwdq7XYkYAi8aR72dKWxWIVwjNFW53BCogpDaH
         LVci05OBtb/hV13yrKRXnYwJFP0Iqqzji69oeLDVteUMavrB4VjoT9B6gShXa9YDoWR3
         K6S/oFc1T5DCP9KbPH7s9qGXPLo/1AsgD7pszIyJmOAYHgC43Na2WVCab3PIN6TdqZuD
         i8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L1LyAKXVjHTWKjaRctbdLsAVlVToYGw4T5kS0zSQdpQ=;
        b=aphIV8W3OypyspOYowvyFirg8x9v7C4418BBZ2WkpfAeH3kA3FVefsKXvR2jmnbmpM
         6XS+62l7haqjvyqoGoGi4WxSsz/Cep5Jup3lW7k5Ad2BlRLDMYsohb/pqnGypC3NM632
         BQf9eS0pqimFNPx6nFFvPuK8yUls2l8IsIiUTDKtao9cgEH8sCLcUHVNZWrzXuPubo0l
         9JbU4z0ZIyRnfd6UnJKcYuWhAMHGsSHq/0k/5UkgDVOkNIhCYl8fBErx29R+rur3SSlf
         ZVz77PRmDYzmRdbVDNKwjwOo5VEOD3k36dzMFkyzlwJnJDLENNZfgpW/99OUDw4LSCNU
         /gYQ==
X-Gm-Message-State: AOAM533YHWsFNJrAlQV7z8KPdw1MyfH0HER6rphjKRacMe84YalL3ZQx
	OJ/d4lEsReJdyDUGgxuPUVmiwq6prRU=
X-Google-Smtp-Source: ABdhPJxtbv1Hgm7w/v0U+gBSY4xTb8WSs3qxlf+SvQ1BjqtgSx3dxMQdbkUfF740lDOA0Dieyx9wUw==
X-Received: by 2002:ac8:764a:: with SMTP id i10mr1273676qtr.414.1632156855480;
        Mon, 20 Sep 2021 09:54:15 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h68sm12257132qkf.126.2021.09.20.09.54.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 09:54:14 -0700 (PDT)
Date: Mon, 20 Sep 2021 12:54:13 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding root device
Message-ID: <20210920165413.GA12087@localhost>
References: <16A5BB09DD6D5F75.29722@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <16A5BB09DD6D5F75.29722@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2021-09-17 @ 06:01:21 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> Recent upstream kernel changes have made the mmc probing order unpredictable.
> Therefore, boards with both an emmc and sdmmc interface aren't guaranteed to
> boot with a hard-coded root device selected.
> 
> For example, on the rock64, with linux-yocto 5.10.y, using the uSD card (i.e.
> the sdmmc interface) about 50% of the time the boot would succeed, and roughly
> 50% of the time it wouldn't:
> 
> 	...
> 	[    0.612233] Waiting for root device /dev/mmcblk1p7...
> 	[    0.634551] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
> 	[    0.639064] mmc_host mmc0: Bus speed (slot 0) = 50000000Hz (slot req 50000000Hz, actual 50000000HZ di)
> 	[    0.640007] mmc0: new high speed SDXC card at address 5048
> 	[    0.641176] mmcblk0: mmc0:5048 SD64G 58.0 GiB
> 	[    0.647610] random: fast init done
> 	[    0.648279] GPT:Primary header thinks Alt. header is not at the end of the disk.
> 	[    0.648941] GPT:376479 != 121634815
> 	[    0.649252] GPT:Alternate GPT header not at the end of the disk.
> 	[    0.649796] GPT:376479 != 121634815
> 	[    0.650106] GPT: Use GNU Parted to correct GPT errors.
> 	[    0.650598]  mmcblk0: p1 p2 p3 p4 p5 p6 p7
> 
> NOTE the discrepancy between the kernel waiting for device /dev/mmcblk1p7,
> which comes from the hard-coded kernel cmdline, and the kernel probing putting
> the sdmmc on mmcblk0.
> 
> With linux-yocto 5.13.y on the rock64 using the uSD card the board would never
> boot, the sdmmc always appears on mmcblk0.
> 
> Instead of simply changing the hard-coded root device (i.e. from mmcblk0 to
> mmcblk1) switch to using partition UUIDs instead. Hard-coding the boot device
> would work with 5.13.y but would fail 50% of the time with 5.10.y; who knows
> what other kernels will do?
> 
> In any case, switching to UUIDs works regardless of board, kernel, or
> available mmc interfaces.
> 
> Boot tested on:
> - rock64
> - nanopi-m4-2gb
> - tinker-board
> - rock-pi-e
> - rock-pi-4b
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/nanopi-m4.inc    |  2 --
>  conf/machine/include/rock-pi-4.inc    |  2 --
>  conf/machine/include/rockchip-wic.inc |  4 ----
>  conf/machine/rock64.conf              |  3 ---
>  conf/machine/tinker-board-s.conf      |  2 --
>  conf/machine/vyasa-rk3288.conf        |  2 --
>  wic/rockchip.wks                      | 16 ++++++++--------
>  7 files changed, 8 insertions(+), 23 deletions(-)

Applied to meta-rockchip master.
