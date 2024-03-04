Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8B5C48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 15:34:20 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.101956.1709566456813027651
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 07:34:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Sz9gmPDm;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0085040007;
	Mon,  4 Mar 2024 15:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KUCfB/U9nYMJWS0Miyd5PYY7HJp875/uVd6IFIClwFY=;
	b=Sz9gmPDmJWxE5FKMrpKcbCUhfLT97ks880rX3yid2FIdz0JUjxXIGbcujgHELnuZNot3Aj
	6nypjS9UKVlZakAH6gOPCpCZ7aV1q+kA4QR4u4hY2Cr1rX91buENnFXaFjiyZlF/dSEmcl
	FwrOOgHvEL5QRhdtU6AZQhHjQoBqqfK7wm1VQfHrgTX0tnqy1js7rnF+NO4BGVVNqgr5io
	KVrp3XRYJzrXdZ/FA+TS1ZuL99itCaFLdcCLEG4i2QzDzAYcKIR5hcgE3179pgx5sgnWPg
	iO1v+/G3PaPMI3ELp2TE5axioJqCHGL46WgNoxB4CVORUdm62rfSPj1GNxoGiQ==
Message-ID: <ab742630-87e7-4fd2-96e3-a7987481c47a@bootlin.com>
Date: Mon, 4 Mar 2024 16:34:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: richard.purdie@linuxfoundation.org
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Switch
 poky-altcfg to use ipk as the package backend
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20240304151405.2093292-1-richard.purdie@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20240304151405.2093292-1-richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 15:34:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62670

Hi Richard

Many thanks for the patch!

On 3/4/24 at 16:14, Richard Purdie wrote:
> Since we plan to have better "binary distro" testing on the autobuilder
> and we plan to primarily use ipk for this, having ipk based images available
> as part of our builds is desireable.
>
> Since we want systemd based images with ipk, it makes sense to leave standard
> poky using rpm images but switch poky-altcfg to use ipk.
>
> Whilst late in the release cycle, doing this now for scarthgap gives us a good
> platform to build off in the long term too.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>   config.json | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/config.json b/config.json
> index fd8335f..4d0f258 100644
> --- a/config.json
> +++ b/config.json
> @@ -127,6 +127,7 @@
>               "BUILDINFO" : true,
>               "BUILDHISTORY" : true,
>               "extravars" : [
> +                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'",
>                   "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
>               ],
>               "extratools" : "${EXTRATOOLS_URL}",
> @@ -140,6 +141,7 @@
>               "BUILDINFO" : true,
>               "BUILDHISTORY" : true,
>               "extravars" : [
> +                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'",
>                   "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
>               ],
>               "extratools" : "${EXTRATOOLS_URL}",
> @@ -198,6 +200,9 @@
>           "altcfg-hw" : {
>               "DISTRO" : "poky-altcfg",
>               "BUILDINFO" : true,
> +            "extravars" : [
> +                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'"
> +            ],
>               "step1" : {
>                   "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk"
>               }
>
Actually, to use these images for testing package upgrades through 
feeds, we also need enough free space in the images.
Could we also add something like IMAGE_ROOTFS_EXTRA_SPACE = "262144"? 
Thanks again Cheers Michael. --

Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


