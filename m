Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77272C4167B
	for <webhook@archiver.kernel.org>; Mon, 26 Dec 2022 09:51:39 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.133911.1672048290183735834
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Dec 2022 01:51:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=o1Kpp0jd;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 9CB6F1BF208
	for <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1672048287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=f0yImcfcWjlvuZD/OS8hE9axehLyXQvAk71XVLW/e0E=;
	b=o1Kpp0jduD0AbMUAUWavNUCk5Go0lDNz2J8tCFFZIt1ELtrxA2ISmbGBaE9tl7PAQ8C4po
	8sfRpiddfoL0Sft1sDVbtVoFAJaLFadyqI1+Zx6AjkQ8rIe+d9Na6ST26xmCM1jKmP1zFP
	zaNvmm9ZKiqQbWNvaB5bbY6Cim3auh75KSbOcP/JxUcbEUxbPH6ZXpluv6XQth82iWPrG+
	P/jOF91TU0WX8hwIsHhKYNPmZIf6rHrWXaYJ2cH96a9s+3iVPSDu2ijxrZ1msdcfPXfFyF
	AKOsN95e3p8MnE0T3ZUkpkGPrwDG4qRTrm6FN7rLY9DFyi4amGisnsuMwZZnRw==
Date: Mon, 26 Dec 2022 10:51:27 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: remove
 meta-agl from check-layer
Message-ID: <Y6lun8vXMCuH4G4R@mail.local>
References: <17344D974B3963F1.27785@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17344D974B3963F1.27785@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 09:51:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58865

I forgot to tag this one for langdale

On 26/12/2022 10:24:19+0100, Alexandre Belloni via lists.yoctoproject.org wrote:
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> langdale isn't currently supported on any branch of meta-agl
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  config.json | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/config.json b/config.json
> index 27283c9f1610..45560c5cc522 100644
> --- a/config.json
> +++ b/config.json
> @@ -890,33 +890,29 @@
>              }
>          },
>          "check-layer-nightly" : {
> -            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
> +            "NEEDREPOS" : ["poky", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
>              "step1" : {
> -                "shortname" : "Test meta-agl YP Compatibility",
> -                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/meta-agl-core ../meta-agl/meta-netboot ../meta-agl/meta-pipewire --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python --no-auto-dependency"]
> -            },
> -            "step2" : {
>                  "shortname" : "Test meta-arm YP Compatibility",
>                  "MACHINE" : "qemuarm64",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-arm/meta-arm ../meta-arm/meta-arm-toolchain ../meta-arm/meta-arm-bsp ../meta-arm/meta-gem5 ../meta-arm/meta-arm-autonomy --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-poky ../meta-openembedded/meta-filesystems ../meta-virtualization --no-auto-dependency"]
>              },
> -            "step3" : {
> +            "step2" : {
>                  "shortname" : "Test meta-aws YP Compatibility",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python -n --no-auto-dependency"]
>              },
> -            "step4" : {
> +            "step3" : {
>                  "shortname" : "Test meta-intel YP Compatibility",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-intel --no-auto-dependency"]
>              },
> -            "step5" : {
> +            "step4" : {
>                  "shortname" : "Test meta-ti YP Compatibility",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/meta-ti-bsp ../meta-ti/meta-ti-extras --dependency ../meta-arm --no-auto-dependency"]
>              },
> -            "step6" : {
> +            "step5" : {
>                  "shortname" : "Test meta-oe YP Compatibility",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-openembedded --no-auto-dependency"]
>              },
> -            "step7" : {
> +            "step6" : {
>                  "shortname" : "Test meta-virtualization YP Compatibility",
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-virtualization --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-openembedded/meta-filesystems --no-auto-dependency"]
>              }
> -- 
> 2.38.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58864): https://lists.yoctoproject.org/g/yocto/message/58864
> Mute This Topic: https://lists.yoctoproject.org/mt/95885037/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

