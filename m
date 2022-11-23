Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5828BC433FE
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 14:50:35 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.21889.1669215026983395064
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 06:50:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=RBTvet/0;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 08C731BF212;
	Wed, 23 Nov 2022 14:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1669215024;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ndAsl/EcJ2YXDJ+dM5ohB7hW+PjO5H8AxU4++4BY+C0=;
	b=RBTvet/0STSzdiqKtLgY2SAQIk9/fRMy7wMNwO+CQF7wbMTNFDzaShUMkbfwUchN1VK3gd
	bzkbNHUIC1/gYdFZLD9yuacE43saTlvT2i4ayn4eUrVRgQlHP6X94171UTNwTwpEpUU0/2
	8oIUrfJW+Ks2vh8L84Q2r5dfy99FJf1WVIE5f4iAVMx0PB4cDh74cnEnWVqpwKzcvCWhth
	2UVwKcoWElqb5LW+qRjZO38RHbf/wsQlLq0DJ3xw+8GoIVNY0KFXlTNV52D16IZT33Zwj0
	D5XCTA505KyuLOyl9jTIfOoENdeJyrSOzEjQBmHx9a3K08Lcjd6K84gzfsduaw==
Date: Wed, 23 Nov 2022 15:50:23 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: sebastien.fabre@actia.fr
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [PATCH] u-boot: Add /boot in SYSROOT_DIRS
Message-ID: <Y34zL30TqilfFMtq@mail.local>
References: <PR0P264MB230931E7523196BACD64E47C920C9@PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PR0P264MB230931E7523196BACD64E47C920C9@PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 14:50:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58628

Hello,

This was not sent to the correct mailing list, you should send to openembedded-core@lists.openembedded.org

Please also set your git From:, else the mailing list is mangling your
address. this should work:

git config sendemail.from=sebastien.fabre@actia.fr

I've taken and fixed up the patch for now.

On 23/11/2022 12:40:53+0000, S�bastien Fabre via lists.yoctoproject.org wrote:
> To be able to use /boot files, like UBOOT_ENV_BINARY, in other
> recipes, like kernel-fitimage.bbclass.
> 
> Signed-off-by: Fabre S�bastien <sebastien.fabre@actia.fr>
> ---
>  meta/recipes-bsp/u-boot/u-boot.inc | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta/recipes-bsp/u-boot/u-boot.inc b/meta/recipes-bsp/u-boot/u-boot.inc
> index 15e949b8b4..4636dd733b 100644
> --- a/meta/recipes-bsp/u-boot/u-boot.inc
> +++ b/meta/recipes-bsp/u-boot/u-boot.inc
> @@ -206,6 +206,7 @@ FILES:${PN}-env = " \
>  FILES:${PN}-extlinux = "${UBOOT_EXTLINUX_INSTALL_DIR}/${UBOOT_EXTLINUX_CONF_NAME}"
>  RDEPENDS:${PN} += "${@bb.utils.contains('UBOOT_EXTLINUX', '1', '${PN}-extlinux', '', d)}"
>  
> +SYSROOT_DIRS += "/boot"
>  FILES:${PN} = "/boot ${datadir}"
>  RDEPENDS:${PN} += "${PN}-env"
>  
> -- 
> 2.30.2

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58626): https://lists.yoctoproject.org/g/yocto/message/58626
> Mute This Topic: https://lists.yoctoproject.org/mt/95216711/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

