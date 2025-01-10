Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23ECFE7719C
	for <webhook@archiver.kernel.org>; Fri, 10 Jan 2025 07:43:18 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.13780.1736494993860522564
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2025 23:43:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=UkZhEkg4;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7A5A7FF805;
	Fri, 10 Jan 2025 07:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736494991;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=38+d27GoLFy6vzY1yx7F1mPpX37O8ZWPxsoab7qOoj8=;
	b=UkZhEkg4VMVcbganLmgirXO+KWjJZvlb3IexI1Olj1EYg3cCrwxfoVcSfRyEcENWCWypkC
	wDXE9LDal56SKYYDmuQzntGoiMyupfOGHCzMznjSneDHUAv4+D/7/5u/vlVv6wBU2VXqHS
	HyuW9hPBx6cUCKoCxXCZnqf+UODe+PJT1AGihgVi5R8QxhHzUKPoJf8impxJMGMsdJDKAP
	uln9PxjOss5MukoO8Zw5X7lRQ2EYp3e4fhHNodqqPEKYyQPJ4H+jTQwYzEHhVWgKLLt2Bx
	LOQsf8Gh+jNmvuzAkTVeYZqws58s+MVm6RTy/ir0PpnVlT4zafqHjaamW7D3BQ==
Date: Fri, 10 Jan 2025 08:43:11 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: yocto@lists.yoctoproject.org, dchvs11@gmail.com
Subject: Re: [yocto] [linux-yocto][poky][master][PATCH] module.bbclass:
 enhance KBUILD_EXTRA_SYMBOLS retrieval
Message-ID: <2025011007431120b9a500@mail.local>
References: <20250110030847.4839-1-dchvs11@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110030847.4839-1-dchvs11@gmail.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2025 07:43:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64526

Hello,

This should be sent to the oe-core mailing list, see README.OE-Core.md.

On 10/01/2025 03:08:47+0000, Daniel via lists.yoctoproject.org wrote:
> Kernel packages may not always use the kernel-module- prefix. However,
> those listed in DEPENDS will consistently add Module.symvers to the
> STAGING_INCDIR.
> 
> Signed-off-by: Daniel Chaves <dchvs11@gmail.com>
> ---
>  meta/classes-recipe/module.bbclass | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/meta/classes-recipe/module.bbclass b/meta/classes-recipe/module.bbclass
> index f2f0b25a2d..0f16522866 100644
> --- a/meta/classes-recipe/module.bbclass
> +++ b/meta/classes-recipe/module.bbclass
> @@ -11,13 +11,13 @@ EXTRA_OEMAKE += "KERNEL_SRC=${STAGING_KERNEL_DIR}"
>  MODULES_INSTALL_TARGET ?= "modules_install"
>  MODULES_MODULE_SYMVERS_LOCATION ?= ""
>  
> -python __anonymous () {
> -    depends = d.getVar('DEPENDS')
> -    extra_symbols = []
> -    for dep in depends.split():
> -        if dep.startswith("kernel-module-"):
> -            extra_symbols.append("${STAGING_INCDIR}/" + dep + "/Module.symvers")
> -    d.setVar('KBUILD_EXTRA_SYMBOLS', " ".join(extra_symbols))
> +python () {

Why did you remove __anonymous?

> +    import glob
> +
> +    extra_symbols = glob.glob(d.getVar('STAGING_INCDIR') + "/*/Module.symvers")
> +
> +    d.setVar('KBUILD_EXTRA_SYMBOLS', d.getVar('KBUILD_EXTRA_SYMBOLS') + " " + \
> +        " ".join(extra_symbols))
>  }
>  
>  python do_package:prepend () {
> -- 
> 2.40.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64525): https://lists.yoctoproject.org/g/yocto/message/64525
> Mute This Topic: https://lists.yoctoproject.org/mt/110529511/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

