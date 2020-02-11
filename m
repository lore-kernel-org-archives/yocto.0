Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.5653.1581395008925052337
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 20:23:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C20sqCJy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C009BE01670; Mon, 10 Feb 2020 20:23:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F56EE00C62
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 20:23:27 -0800 (PST)
Received: by mail-qv1-f65.google.com with SMTP id s7so4370818qvn.8
        for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 20:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6bvtkECO5XbdSn752cglL9pEbvZS9ryRRuTDBF/SXXQ=;
        b=C20sqCJyWzQiJxg5J/OnNbOeZyI/fKoEsUV3+Y/KmIGzPIS3eQJHVZb4c/4J31HWQS
         CqJrIR6wpS6SgrM1P/zmn+oKd6GOY2kC1lZPveFOCOCpi01BCJ8RzSSxpxBYPSHpLGUz
         4e1S75l285KWNB8Na5PeesY33kD+PtUTet/kKqKfrYnSrqROvZRkdBX/OH1Ejq1QVeSK
         z1GdR3D9FiJhiaY/t6BNkbqBwAKnuQhjOcGBrh1q3nRw7HPIvhkkJQPFeA8L+71LjGCi
         53gwIoA9yIeJxkrSjzHAd6kWaOF18pKESOjZWco227nr3rsTgLuKuYjRpkq9mLd8bWJa
         tfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6bvtkECO5XbdSn752cglL9pEbvZS9ryRRuTDBF/SXXQ=;
        b=PyLxTFhQNxUe8svb5GrUDq6nDDxhnVEtnpXNCaQZuU7fFpEYsEAKGkyLBTt+W0FzlD
         4hAzIKIbw7KLPhB9hN8r2zP9PNXSUpvPmtWWv0uV0QqTOAIdZDGOMWdh4Xmr7EvVgIRs
         HZ6bPBp6yA2wTQdgv28Q2npoSeAFh46o7aGzWMpvNNmN4r0LnqKtvGKqJxpmITLLmGEH
         pgF5SmiZ+aqVU8BESKA34gOotJju5xJ5bUUaPSd9mA6Ka10iKHuxseRJr+QrjxoxW5xy
         RyZWpaMKrSmovP2Q9tOElycfPPwdllOWtp2wSTGE9ooDS8MFugU5aoqh7Vs/ueptEdHV
         M4IQ==
X-Gm-Message-State: APjAAAXkJRNa6kLSTz5BwYMDy97gequ5jPUggl7ep39UCbmcyInSKdde
	LCowBwDSTQF5W2ifKPGdNKNZXChIoxA=
X-Google-Smtp-Source: APXvYqwkxvF3MGZEX/6Nyu8CZ2mDAx4GrSjcjBb5I//JGi6D1Ac7TsSRybBMBlVFGMMC0ogZy2cOuw==
X-Received: by 2002:ad4:4588:: with SMTP id x8mr1270244qvu.208.1581395007305;
        Mon, 10 Feb 2020 20:23:27 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id y194sm1325478qkb.113.2020.02.10.20.23.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 20:23:26 -0800 (PST)
Date: Mon, 10 Feb 2020 23:23:24 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 2/2] Add tinker-board-s machine configuration
Message-ID: <20200211042324.GB10571@linux-uys3>
References: <1581355523-30072-1-git-send-email-jin@mediatomb.cc>
 <1581355523-30072-2-git-send-email-jin@mediatomb.cc>
MIME-Version: 1.0
In-Reply-To: <1581355523-30072-2-git-send-email-jin@mediatomb.cc>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2020-02-10 @ 06:25:23 PM, Sergey Bostandzhyan wrote:
> From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
> 
> Asus Tinker Board-S has emmc on mmcblk1, this is also the default
> configuration when building the image. If you need an image for booting
> from the sd card set RK_BOOT_DEVICE to mmcblk0
> 
> Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
> ---
>  README                           |  1 +
>  conf/machine/tinker-board-s.conf | 27 +++++++++++++++++++++++++++
>  2 files changed, 28 insertions(+)
>  create mode 100644 conf/machine/tinker-board-s.conf
> 
> diff --git a/README b/README
> index 983d946..d7a42fe 100644
> --- a/README
> +++ b/README
> @@ -16,6 +16,7 @@ Status of supported boards:
>  	builds and boots gpt image:
>  		rock-pi-4
>  		tinker-board
> +		tinker-board-s
>  		vyasa-rk3288
>  		firefly-rk3288
>  	builds:
> diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
> new file mode 100644
> index 0000000..0f7d80f
> --- /dev/null
> +++ b/conf/machine/tinker-board-s.conf
> @@ -0,0 +1,27 @@
> +# Copyright (C) 2018  Trevor Woerner

Oops! Too much copy+pasta? This year and your name should be included above.

> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: Tinker-S RK3288
> +#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on Rockchip RK3288 Processor.
> +
> +require conf/machine/include/rk3288.inc
> +
> +KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
> +UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
> +
> +RK_BOOT_DEVICE ?= "mmcblk1"
> +
> +WKS_FILE = "tinker-board.wks"
> +IMAGE_FSTYPES += "wic wic.bmap"
> +
> +WKS_FILE_DEPENDS ?= " \
> +    mtools-native \
> +    dosfstools-native \
> +    virtual/bootloader \
> +    virtual/kernel \
> +    "
> +IMAGE_BOOT_FILES ?= "\
> +    ${KERNEL_IMAGETYPE} \
> +    ${KERNEL_DEVICETREE} \
> +    "
> -- 
> 2.24.1
> 
