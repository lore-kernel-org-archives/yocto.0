Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43085C47077
	for <webhook@archiver.kernel.org>; Sun,  7 Jan 2024 03:58:29 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.9641.1704599908023369648
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Jan 2024 19:58:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lUci9Bcb;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-78158569dc6so117395985a.3
        for <yocto@lists.yoctoproject.org>; Sat, 06 Jan 2024 19:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704599907; x=1705204707; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVQ8pbJUqyzocXrj9xmZf2dkEJkgOegy0SVFw70ej1k=;
        b=lUci9BcbLpdyWDCVc+D8QB8LuPTogLWFUsVRPA08eGjFRNYf2+nrnF1L0xTZULUueq
         5KJRmaxUpxU5O9tdM1f+D9KAdksDIaAB9ta6aI/8IK/Px51PF0RDlM8+tr7eZXcXyxNU
         QCRkgqpiGt95ZuJuohwYGy2yyvDOYcPcwFjiNROj789vuVAWQe2dgnP7KIFT1E2BlzCQ
         9GajREqxA+/lTqYZhLBdaRY+is1lk0cwyZ901ISMk8QZeALVeRCAbMVECblUr++yuf7t
         6f4rprl/IR79fsVMpzJTm2/QCtcsmjn0919IC3ya/t+FGYR4Tyu1pa5UrzyWtyLweR/W
         O8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704599907; x=1705204707;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LVQ8pbJUqyzocXrj9xmZf2dkEJkgOegy0SVFw70ej1k=;
        b=xUKWWl5K/pKOZHvfulKHsmKyFPdFeOm9dCZuHtitu7YLPYGoc+KMKYkVolHF3ufLBp
         Cm5hK4fv3InoowlgYnFeY4TQLXOQMDRaaNjrBb4WHqHj16xj00UYTViPuCeND1/f01cj
         SLFvDjMxCSGdZWthQzKcclofIW2DMIW8OLz2uTsqGrq2orKNvs4tyi2/KAyqGrPGlfI1
         qrc9ESh1EjJaDma71ryaTlwAFkkGWiOrOaD2nJPKAyc4w4Q2VpxSGqfrUlE/8i9jFvOe
         WTZ1/SHr85x3KdL8oGq8y7BFmuPxWkFJP0Qyv4WZS/gRx/vkwHlkchjPOXXy0H3U/z7r
         foOA==
X-Gm-Message-State: AOJu0YxgSzhs9eME50B5DSP+T5YK6FtDBmxjVgTXtnxe9oCoClNX8gZu
	cfEAcRJFYX1vlkhQ5TMBAIA=
X-Google-Smtp-Source: AGHT+IG1UF+pDGaMntEIljWAdN6e2vCgdMnwP+lFAQeEVEYD8kLPWuzG3Nx9PPj8La6Hi3pNsH/Ppg==
X-Received: by 2002:a05:620a:29c8:b0:781:80dc:a0c1 with SMTP id s8-20020a05620a29c800b0078180dca0c1mr2329302qkp.44.1704599907037;
        Sat, 06 Jan 2024 19:58:27 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id k16-20020a05620a07f000b0078168e10166sm1732595qkk.86.2024.01.06.19.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 19:58:26 -0800 (PST)
Date: Sat, 6 Jan 2024 22:58:24 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Stephen Chen <stephen@radxa.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] rock 4c+: add
Message-ID: <20240107035824.GB29784@localhost>
References: <20231221014100.4048121-1-stephen@radxa.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231221014100.4048121-1-stephen@radxa.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Jan 2024 03:58:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62099

Hi Stephen,

Thanks for the patch.

Please use the proposed Yocto name for the board you are adding.

On Thu 2023-12-21 @ 09:41:00 AM, Stephen Chen wrote:
> ROCK 4C+ is a Rockchip RK3399-T based SBC from Radxa.
> Main differences of ROCK 4C+ compared to other ROCK 4 SBC.
> - Rockchip RK3399-T SoC
> - DP from ROCK Pi 4C replaced with micro HDMI 2K@60fps
> - 4-lane MIPI DSI
> - RK817 Audio codec

I want to see the capabilities of the board that is being added. Not what
amounts to a diff between this new board and some other random board.

Could you add the new board to the README file as well (the list is sorted
chronologically, later entries are the most recently-added boards).

Also, do we need to add a COMPATIBLE_MACHINE entry for the kernel?

> 
> Signed-off-by: Stephen Chen <stephen@radxa.com>
> ---
>  conf/machine/rock-4c-plus.conf | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>  create mode 100644 conf/machine/rock-4c-plus.conf
> 
> diff --git a/conf/machine/rock-4c-plus.conf b/conf/machine/rock-4c-plus.conf
> new file mode 100644
> index 0000000..424fed2
> --- /dev/null
> +++ b/conf/machine/rock-4c-plus.conf
> @@ -0,0 +1,10 @@
> +#@TYPE: Machine
> +#@NAME: ROCK 4C+
> +#@DESCRIPTION: ROCK 4C+ based on Rockchip RK3399-T Processor is designed by Radxa.
> +#https://wiki.radxa.com/Rock4/4cplus
> +#https://docs.radxa.com/en/rock4/rock4c+
> +
> +require conf/machine/include/rock-pi-4.inc
> +
> +KERNEL_DEVICETREE = "rockchip/rk3399-rock-4c-plus.dtb"
> +UBOOT_MACHINE = "rock-4c-plus-rk3399_defconfig"
> -- 
> 2.34.1
> 

