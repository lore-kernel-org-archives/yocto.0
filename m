Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12374C47422
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 04:46:31 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.41674.1705812384629167310
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 20:46:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NQvnhmLz;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-783137d7fb4so140455985a.2
        for <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 20:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705812383; x=1706417183; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GQbRxquo6Xrr5vf4Z9qdEM60hDkSmpgPxzXZvFGPNfs=;
        b=NQvnhmLzalICGsU/UNsSQicfTYEuen1MGmm0gwZmiti2tgMz72TrQW+ZFLIgHObmdS
         pPUgD6BTxGf/YgKkPzwExbf68Cv+9FoszWRtnDlF6WF2B1Gapm3txdDKmMpuo8Nu7aBY
         CXj1b2izUhRhS6M8J89rNxfvuG5+AJFvFtwbfzGv+zoy5kIDfZwVGh3YtiM7P37q2VRv
         70GpwVjrEjfemmcczLzTcqyLYrEqylIQ0u6oY4i6nRgsJhFnhOJUclk+8EdOstu9s6Tx
         j5jsCsyu1SdAlXzXackiAl0XEDpvqUe1zRu3wGdvJJPVELkFI/XH6aLvq1j5ZCvNCd9X
         tEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705812383; x=1706417183;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GQbRxquo6Xrr5vf4Z9qdEM60hDkSmpgPxzXZvFGPNfs=;
        b=FLoKhhSqQ7chwI/qTYuaE7nHoyewRBJ3kRbpI5m1fJuLQ3SLJe3I9pQ7OEiDKWlWFQ
         DzEhkrzAShor0XVhK/4oLpcjW/3g627XZi5LJlpvU/t0hkf87q73nVVqtjVEY4jGqddV
         i0fnmodHj8KUyn9EcMQMXHl50r3AMZAzrqeHis45RI43O0doFlyCrDb2+PyJhfm48qUn
         XM7WFmfzmEHBZ3a6Au0kQ8Y9emE/ThyTFD20RVTf1wKJQ6QFPtGx5KxFpBnPLY6meEOm
         uNu2omJchN1veVTjSxA8rsBb7wdSSwJ4hY1WNIz5Z8GafafKcR6DopwZJnpSjAE94WDU
         YgcQ==
X-Gm-Message-State: AOJu0YyOeiEE9rJwbtP3S33os2SqUaEKjm/kXMLNxg7wMJ2Ck6fnwAO4
	Zf7Ju0HbucjMa1QdynhlxH+7Ve54fTjIImNX0bK5aYLqb2EQeFxQ
X-Google-Smtp-Source: AGHT+IEch9gJNHaYgQI1ScasCoDxiJM0reqC88Cpd4eS0/oLk8WiDqsRMpUg4L1gNnJ8hbhsGmnpng==
X-Received: by 2002:a05:6214:20c6:b0:681:8851:9e80 with SMTP id 6-20020a05621420c600b0068188519e80mr2794759qve.89.1705812383645;
        Sat, 20 Jan 2024 20:46:23 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id cu6-20020a05621417c600b0068200592351sm1209591qvb.89.2024.01.20.20.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 20:46:22 -0800 (PST)
Date: Sat, 20 Jan 2024 23:46:20 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Stephen Chen <stephen@radxa.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] machines: correct rk3066/rk3188/rk3288
 kernel devicetree path
Message-ID: <20240121044620.GA9441@localhost>
References: <20240120102520.889698-1-stephen@radxa.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240120102520.889698-1-stephen@radxa.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 04:46:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62211

On Sat 2024-01-20 @ 06:25:20 PM, Stephen Chen wrote:
> Since mainline linux v6.5-rc1, this commit 724ba6751532
> ("ARM: dts: Move .dts files to vendor sub-directories")
> was added.
> 
> Link: https://github.com/torvalds/linux/commit/724ba6751532055db75992fc6ae21c3e322e94a7
> 
> Signed-off-by: Stephen Chen <stephen@radxa.com>
> ---
>  conf/machine/firefly-rk3288.conf   | 2 +-
>  conf/machine/marsboard-rk3066.conf | 2 +-
>  conf/machine/radxarock.conf        | 2 +-
>  conf/machine/rock2-square.conf     | 2 +-
>  conf/machine/tinker-board-s.conf   | 2 +-
>  conf/machine/tinker-board.conf     | 2 +-
>  conf/machine/vyasa-rk3288.conf     | 2 +-
>  7 files changed, 7 insertions(+), 7 deletions(-)

When I build I get:

	| /opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/scripts/lib/wic/engine.py:362: SyntaxWarning: invalid escape sequence '\/'
	|   abs_path = re.sub('\/\/+', '/', path)
	| INFO: Creating image(s)...
	| 
	| ERROR: _exec_cmd: install -m 0644 -D /z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/rockchip/rk3288-tinker.dtb /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/tmp-wic/boot.6/rockchip/rk3288-tinker.dtb returned '1' instead of 0
	| output: install: cannot stat '/z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/rockchip/rk3288-tinker.dtb': No such file or directory
	| 
	| WARNING: /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449:160 exit 1 from 'BUILDDIR="/z/build-master/tinker-board/build" PSEUDO_UNLOAD=1 wic create "$wks" --vars "/z/build-master/tinker-board/build/tmp-glibc/sysroots/tinker-board/imgdata/" -e "core-image-base" -o "$build_wic/" -w "$tmp_wic"'
	| WARNING: Backtrace (BB generated script):
	|       #1: do_image_wic, /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449, line 160
	|       #2: main, /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449, line 177
	ERROR: Task (/opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/meta/recipes-core/images/core-image-base.bb:do_image_wic) failed with exit code '1'

> diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
> index 3270bb9..6ff1be8 100644
> --- a/conf/machine/firefly-rk3288.conf
> +++ b/conf/machine/firefly-rk3288.conf
> @@ -9,5 +9,5 @@
>  require conf/machine/include/rk3288.inc
>  require conf/machine/include/rockchip-wic.inc
>  
> -KERNEL_DEVICETREE = "rk3288-firefly.dtb"
> +KERNEL_DEVICETREE = "rockchip/rk3288-firefly.dtb"
>  UBOOT_MACHINE = "firefly-rk3288_defconfig"
> diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
> index 52fd256..36945e8 100644
> --- a/conf/machine/marsboard-rk3066.conf
> +++ b/conf/machine/marsboard-rk3066.conf
> @@ -8,4 +8,4 @@
>  
>  require conf/machine/include/rk3066.inc
>  
> -KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
> +KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
> diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
> index 42d8848..6ad8474 100644
> --- a/conf/machine/radxarock.conf
> +++ b/conf/machine/radxarock.conf
> @@ -9,4 +9,4 @@
>  
>  require conf/machine/include/rk3188.inc
>  
> -KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
> +KERNEL_DEVICETREE = "rockchip/rk3188-radxarock.dtb"
> diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
> index 46064ee..9468b9a 100644
> --- a/conf/machine/rock2-square.conf
> +++ b/conf/machine/rock2-square.conf
> @@ -9,7 +9,7 @@
>  require conf/machine/include/rk3288.inc
>  
>  SPL_BINARY = "u-boot-spl-dtb.bin"
> -KERNEL_DEVICETREE = "rk3288-rock2-square.dtb"
> +KERNEL_DEVICETREE = "rockchip/rk3288-rock2-square.dtb"
>  UBOOT_MACHINE = "rock2_defconfig"
>  
>  # This board doesn't support the combined idbloader, so resort to the older
> diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
> index 870b9bc..3a65613 100644
> --- a/conf/machine/tinker-board-s.conf
> +++ b/conf/machine/tinker-board-s.conf
> @@ -7,5 +7,5 @@
>  
>  require conf/machine/include/tinker.inc
>  
> -KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
> +KERNEL_DEVICETREE = "rockchip/rk3288-tinker-s.dtb"
>  UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
> diff --git a/conf/machine/tinker-board.conf b/conf/machine/tinker-board.conf
> index 8fe5f63..ef1a1c1 100644
> --- a/conf/machine/tinker-board.conf
> +++ b/conf/machine/tinker-board.conf
> @@ -7,5 +7,5 @@
>  
>  require conf/machine/include/tinker.inc
>  
> -KERNEL_DEVICETREE = "rk3288-tinker.dtb"
> +KERNEL_DEVICETREE = "rockchip/rk3288-tinker.dtb"
>  UBOOT_MACHINE = "tinker-rk3288_defconfig"
> diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
> index 5b44257..52b4401 100644
> --- a/conf/machine/vyasa-rk3288.conf
> +++ b/conf/machine/vyasa-rk3288.conf
> @@ -9,7 +9,7 @@ require conf/machine/include/rk3288.inc
>  require conf/machine/include/rockchip-wic.inc
>  
>  KERNEL_IMAGETYPE = "uImage"
> -KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
> +KERNEL_DEVICETREE = "rockchip/rk3288-vyasa.dtb"
>  KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
>  
>  UBOOT_MACHINE = "vyasa-rk3288_defconfig"
> -- 
> 2.34.1
> 

