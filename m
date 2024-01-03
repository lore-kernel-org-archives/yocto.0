Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB41C3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 21:27:27 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.30209.1704317238835972267
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 13:27:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kHXaoDg8;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4281f6400feso6289321cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 13:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704317238; x=1704922038; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3xyClfXPqR1kCvupwhvOZ+JxGlHXohIyYrFT28AbcQ=;
        b=kHXaoDg8n1osZd2Ube4XA7yb0SL6aTfOe+/H6Nt/1GVfoONhUfnK3bg/wbyzqnitYz
         gehyueyKtY8ebwwhilQu22eNX0llBJydT2jvVDk8ovEfZtlFqZkOVdbahUUmtJ2J1sr7
         UGEm9mlyPONhq8ftv93vyEtipLPdmWsk0TjKRMpE7b9qcDxG01/fMQyZ+5zbC8BaHkr3
         wKaSSzV1PydS1P7bR3T7LGa6U64BCxN7af8XMS69+d7h2SOXsYTcU77SPdBroRzdxLCw
         PdmU5iPhSqLXDwF4i270VNebAaX7ZqJEyNw7vWTG/D4LN9uNYWzI4l6gKJYftP/WXb8F
         0hWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704317238; x=1704922038;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k3xyClfXPqR1kCvupwhvOZ+JxGlHXohIyYrFT28AbcQ=;
        b=bwUj91Opq/z+e75TW9KJq6cI+EW5qhBL/GBot0dpy65Jx3LzOnyNfuNeKOKTsQV7Lz
         uXL2K22+djhEybcztDKZgOw8AYdB/rpWTjFhwRCNFOTYZTKHvoqU5Uascjh/wkmennYg
         sP0qSSPPkgvcANMsXozhElX/5pfYS7aCbaPY0F1Ca5tiIu3l9l4M6r5U8a4etDpesDqQ
         kB1jJ0acpoE0nKNkxGde9mSfqf90zwnTRsoc59CFvH/RGmb1ew17ulTBpHNcF2ZeZXiq
         /zORMqwl1jAMAPiXDs0nIcPPRW9wz5TKeKLnQYgPS6sFBqbvkgBA5j6rDcbsRQMpjTjW
         RE6A==
X-Gm-Message-State: AOJu0Yyc2Gf4XIcV/uUZ5SAjJ1d5VJilfUCJ6dBiXe8X++Z6Di7IXKYt
	iqR/S9oz7J4fdiw2bhKe8to=
X-Google-Smtp-Source: AGHT+IGvaLwGqjD63rAk6FXHnx8bgOdAUYaH54P28DJCKIPKsAeY8OkfNgCc2mf+dYcLnDx4Z8k8iQ==
X-Received: by 2002:a05:6214:5e95:b0:680:d0b5:4b8f with SMTP id mm21-20020a0562145e9500b00680d0b54b8fmr1814990qvb.6.1704317237782;
        Wed, 03 Jan 2024 13:27:17 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id da7-20020a05621408c700b0067f2c03d4adsm11108776qvb.100.2024.01.03.13.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 13:27:16 -0800 (PST)
Date: Wed, 3 Jan 2024 16:27:15 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Stephen Chen <stephen@radxa.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] use MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS
 to add kernel-modules
Message-ID: <20240103212715.GA8955@localhost>
References: <20231219112352.2531373-1-stephen@radxa.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231219112352.2531373-1-stephen@radxa.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 21:27:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62081

On Tue 2023-12-19 @ 07:23:52 PM, Stephen Chen wrote:
> This will add all built kernel modules to the image.
> 
> Signed-off-by: Stephen Chen <stephen@radxa.com>
> 
> diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
> index 0a86846..fd9a9eb 100644
> --- a/conf/machine/include/rock-pi-4.inc
> +++ b/conf/machine/include/rock-pi-4.inc
> @@ -3,4 +3,4 @@ MACHINEOVERRIDES =. "rock-pi-4:"
>  
>  require conf/machine/include/rk3399.inc
>  
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
> diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf
> index 35cd8f6..01d5c59 100644
> --- a/conf/machine/nanopi-m4b.conf
> +++ b/conf/machine/nanopi-m4b.conf
> @@ -5,7 +5,7 @@

I've tried this a couple times and a couple different ways and I can't figure
out how what we already have (MACHINE_EXTRA_RRECOMMENDS) is any different from
what you're proposing (MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS).

Using a very basic, no-distro setup I've built core-image-minimal and
core-image-base both with and without your patch and I see absolutely no
difference in the list of installed packages
(buildhistory/images/rock_5b/glibc/core-image-*/installed-packages.txt).

All of meta-rockchip's machine/include/* files already include
MACHINE_EXTRA_RRECOMMENDS, do you have a scenario where a build is not
including all of the built kernel modules in an image?

>  require conf/machine/include/rk3399.inc
>  
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>  
>  KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4b.dtb"
>  UBOOT_MACHINE = "nanopi-m4b-rk3399_defconfig"
> diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
> index 4472c21..4ed3160 100644
> --- a/conf/machine/nanopi-r2s.conf
> +++ b/conf/machine/nanopi-r2s.conf
> @@ -6,6 +6,6 @@
>  require conf/machine/include/rk3328.inc
>  
>  KERNEL_DEVICETREE = "rockchip/rk3328-nanopi-r2s.dtb"
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>  
>  UBOOT_MACHINE = "nanopi-r2s-rk3328_defconfig"
> diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
> index 21be440..1a63a96 100644
> --- a/conf/machine/nanopi-r4s.conf
> +++ b/conf/machine/nanopi-r4s.conf
> @@ -5,7 +5,7 @@
>  
>  require conf/machine/include/rk3399.inc
>  
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>  
>  KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-r4s.dtb"
>  UBOOT_MACHINE = "nanopi-r4s-rk3399_defconfig"
> diff --git a/conf/machine/rock-5a.conf b/conf/machine/rock-5a.conf
> index 5ace4da..53b56b1 100644
> --- a/conf/machine/rock-5a.conf
> +++ b/conf/machine/rock-5a.conf
> @@ -7,6 +7,6 @@ require conf/machine/include/rk3588s.inc
>  
>  PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
>  KERNEL_DEVICETREE = "rockchip/rk3588s-rock-5a.dtb"
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>  
>  UBOOT_MACHINE = "rock5a-rk3588s_defconfig"
> diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
> index d137108..dc5fabc 100644
> --- a/conf/machine/rock-5b.conf
> +++ b/conf/machine/rock-5b.conf
> @@ -7,6 +7,6 @@ require conf/machine/include/rk3588.inc
>  
>  PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
>  KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>  
>  UBOOT_MACHINE = "rock5b-rk3588_defconfig"
> diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
> index 517956c..3f83675 100644
> --- a/conf/machine/rock-pi-e.conf
> +++ b/conf/machine/rock-pi-e.conf
> @@ -6,6 +6,6 @@
>  require conf/machine/include/rk3328.inc
>  
>  KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>  
>  UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
> diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
> index 79ea73c..590e972 100644
> --- a/conf/machine/rock-pi-s.conf
> +++ b/conf/machine/rock-pi-s.conf
> @@ -6,6 +6,6 @@
>  require conf/machine/include/rk3308.inc
>  
>  KERNEL_DEVICETREE = "rockchip/rk3308-rock-pi-s.dtb"
> -MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>  
>  UBOOT_MACHINE = "rock-pi-s-rk3308_defconfig"
> -- 
> 2.25.1
> 

