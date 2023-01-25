Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33DCBC54E94
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 17:34:58 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.51830.1674668087617718876
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 09:34:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gZR/KBVv;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 5CDF4240009;
	Wed, 25 Jan 2023 17:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674668085;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vsHuz8SRveUq4gwR6ISebTzNP9zd1fbe3c1iY/3kZeM=;
	b=gZR/KBVv+qJFDDnXna9ioHILH0Zn9vPVV0A890A+55jJRGnjczrBZXSaDQvl/u3poCUHIj
	zspuUS2oHgMK5FGpkmNrFuwQzLFGpDHWmniciGTdQNmOr1pCZLVYX2/x8hdYiLg0HeGifZ
	EuqVeZL18sve0wJ7w2j/Y0XpLyMm2+ffF1nVqSz3YKxUAL07JbFnAstmUPs/NrD/934psO
	8WUlJlVNuFXwl/rgQkwVKAlMJp8jgHtDtRvOKk3jiFtsHdX1GUs8QQncpCMzor42PmQdHa
	FULA4P6iCmRMEpXTvAQlBxyqTKWjNPosogdC2rI51n2ZCNGSMBqCiD5hCiV4Lw==
Date: Wed, 25 Jan 2023 18:34:45 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: richard.purdie@linuxfoundation.org, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH 0/2] poky/yocto-bsps: drop 5.19 and move to 6.1
Message-ID: <Y9FoNXh1xgruCZOF@mail.local>
References: <cover.1674597613.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1674597613.git.bruce.ashfield@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 17:34:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59062

Hello,

One of the two series breaks xen:

https://autobuilder.yoctoproject.org/typhoon/#/builders/128/builds/1191/steps/13/logs/stdio

On 24/01/2023 17:02:05-0500, Bruce Ashfield wrote:
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
> 
> Richard,
> 
> These follow the OEcore patches to remove 5.19. This bumps poky
> and poky-tiny to 6.1 and leaves the alt configuration on 5.15.
> 
> Bruce
> 
> The following changes since commit 3c3fd6a65e8103f74ae382d196d486b31a168b39:
> 
>   insane: Improve patch warning/error handling (2023-01-21 07:46:38 +0000)
> 
> are available in the Git repository at:
> 
>   https://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
> 
> Bruce Ashfield (2):
>   poky/poky-tiny: bump preferred version to 6.1
>   yocto-bsps: remove 5.19 bbappend
> 
>  meta-poky/conf/distro/poky-tiny.conf          |  2 +-
>  meta-poky/conf/distro/poky.conf               |  4 ++--
>  .../linux/linux-yocto_5.19.bbappend           | 23 -------------------
>  3 files changed, 3 insertions(+), 26 deletions(-)
>  delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
> 
> -- 
> 2.34.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59053): https://lists.yoctoproject.org/g/yocto/message/59053
> Mute This Topic: https://lists.yoctoproject.org/mt/96508854/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

