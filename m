Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EE0C433F5
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 21:59:02 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web12.3100.1633557541589611725
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 14:59:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ktmR9T2k;
 spf=pass (domain: gmail.com, ip: 209.85.210.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id 145so3531525pfz.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 14:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=AG9InlUdjZ4S63a3ToJfzJ0q4+6rTZmpNNBeSQ/63DI=;
        b=ktmR9T2k9c/2emQ8N+kgNEuFZ3L7YxRLJrQZ8KEQITojPXPCXSIeiBPgFrQVJuxj64
         42Dj2bb1djOiFMa55FQme8Cl9opEPgU1vw+wKK2QyT5oNRL9gW4+e1/B8lcnjzV9P+ql
         3ilZXjD8zcA4J30GBeqQPlEaRFezm2R9e39cLxzWCjK9OSQNX+YYPyUiu8JKMMYTqXJW
         OMtTpy8xquOqZanlQaca7ZhRuXoH/zkhqxVIqu1i/gf3rSzFgtgEZB9M6CV1uGxW9bOL
         jDsUShLMjVP3kk4i6HIp3352hwCTefUoD/FhtSTF2ekdw7GKcqfPSpuDSE7XsLczZ/Zy
         mv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=AG9InlUdjZ4S63a3ToJfzJ0q4+6rTZmpNNBeSQ/63DI=;
        b=dz+HiVzqTXM+uy7/j0weIxgfUx7n1Gj/OEQ9LhrSDzdu85gygm9rKMWwALvcnZ4Dga
         Bhx1Tng0EAdDUwwNutQL1gT+dmDOuOunjBT7SOyHw6n41mHQlFG8ws5YXlSAKTT+Mo82
         7+A4l8LnpgbmEEtL6YBj7HjviLuh4dffASQbrXX8TYimaszJ8feaLBhVBSYnOuSssy+O
         AhamIjwANJ6v4UT+P2Ez61IdJyHXWuOmFLCcqmdEJNrumBzUhQcDerAhzCs7w6Ra4lx1
         FgKi9jaKgN35N4QX/4ZNMns2HXqRKCJpKZwcQ8vZqwmqrCr3xAPub9V+EElfaX08zuAA
         QDLw==
X-Gm-Message-State: AOAM5334NFRepyDHmKX0GWCrGgOU0VtqRZCm6e2iU9Q4uJlYO9n1j1u7
	FYLdQsLrRNVMuVBrqBcnV/E=
X-Google-Smtp-Source: 
 ABdhPJwtfmAMpUm/9MBXSDw9tUrqC3V6fFqHMHSXDhVG510mgw//7kS9xktdni2Jl68+eDOKDfURNw==
X-Received: by 2002:a63:5651:: with SMTP id g17mr381612pgm.119.1633557540814;
        Wed, 06 Oct 2021 14:59:00 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:640b:32bc:c7ac:4acd?
 ([2601:646:9200:a0f0:640b:32bc:c7ac:4acd])
        by smtp.gmail.com with ESMTPSA id
 a15sm9923125pfg.53.2021.10.06.14.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 14:59:00 -0700 (PDT)
Message-ID: <37ecfca2-adf1-2050-14ee-f2eb23f6ede5@gmail.com>
Date: Wed, 6 Oct 2021 14:58:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.2
Subject: Re: [yocto] [meta-rockchip][PATCH] nanopi-m4: enable booting from uSD
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
References: <20211006185212.40179-1-twoerner@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <20211006185212.40179-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 21:59:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54983



On 10/6/21 11:52 AM, Trevor Woerner wrote:
> Enable the vcc3v0_sd regulator on boot so that the device can boot from the
> uSD card (when using certain uSD cards).
> 
> Upstream-Status: Submitted [http://lists.infradead.org/pipermail/linux-arm-kernel/2021-October/688254.html]
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   ....dtsi-enable-sdmmc-regulator-on-boot.patch | 47 +++++++++++++++++++
>   recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
>   2 files changed, 48 insertions(+)
>   create mode 100644 recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch
> 
> diff --git a/recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch b/recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch
> new file mode 100644
> index 0000000..c871c5a
> --- /dev/null
> +++ b/recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch
> @@ -0,0 +1,47 @@
> +From 33e3f2f8b22c226977b6461581ae113c3f77f5fd Mon Sep 17 00:00:00 2001
> +From: Trevor Woerner <twoerner@gmail.com>
> +Date: Wed, 6 Oct 2021 11:41:23 -0400
> +Subject: [PATCH] rk3399-nanopi4.dtsi: enable sdmmc regulator on boot
> +
> +When trying to boot a nanopi-m4 board with an SDHC-class uSD card, the boot
> +comes to a full stop shortly after initializing the mmc subsystem. The boot
> +can be cajoled into continuing if, after waiting a minute or so, the uSD
> +card is ejected and re-inserted. Waiting a minute or so before ejecting and
> +re-inserting the uSD card is crucial since the boot will not continue if
> +the card is ejected/re-inserted too soon after the boot has stopped.
> +
> +The nanopi-m4 has a uSD card and an optional eMMC module, either of which
> +can be used for booting. In my case I don't have the optional eMMC module,
> +therefore I'm booting from the uSD card. When booting from the uSD card,
> +its regulator needs to be enabled at boot.
> +
> +Curiously, this should have been an issue from day one, but it only started
> +to become a problem after commit 98e48cd9283d ("regulator: core: resolve
> +supply for boot-on/always-on regulators") was merged. Additionally, by
> +coincidence, I happened to be using an SDHC-class card in my device, and
> +saw the failure. However, if I use an SDXC-class uSD card the problem does
> +not occur.
> +
> +Much thanks to Mark Brown and Javier Martinez Canillas for their assistance
> +on irc!
> +
> +Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> +---
> + arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +index 8c0ff6c96e03..5cf02e2ef9b3 100644
> +--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> ++++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +@@ -71,6 +71,7 @@ vcc3v0_sd: vcc3v0-sd {
> + 		pinctrl-names = "default";
> + 		pinctrl-0 = <&sdmmc0_pwr_h>;
> + 		regulator-always-on;
> ++		regulator-boot-on;
> + 		regulator-min-microvolt = <3000000>;
> + 		regulator-max-microvolt = <3000000>;
> + 		regulator-name = "vcc3v0_sd";
> +--
> +2.30.0.rc0
> +
> diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
> index 470dc09..61d5116 100644
> --- a/recipes-kernel/linux/linux-yocto%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto%.bbappend
> @@ -12,3 +12,4 @@ COMPATIBLE_MACHINE:rock64 = "rock64"
>   COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
>   
>   FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> +SRC_URI:append:nanopi-m4 = " file://0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch"

use of override here seems unnecessary

> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54982): https://lists.yoctoproject.org/g/yocto/message/54982
> Mute This Topic: https://lists.yoctoproject.org/mt/86127572/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

