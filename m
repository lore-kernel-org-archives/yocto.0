Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EFFC433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 17:29:22 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web09.13070.1647970161177670634
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 10:29:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=KKS2Kyvr;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200,
 mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id A305020007;
	Tue, 22 Mar 2022 17:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647970159;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DKKIXgWMURyDz1st9ZWHawyJpxxbN284LtPUh6myUZM=;
	b=KKS2Kyvr1U8s+YTH4L/k6RTKP5/Qdl4JhWgXMKEiBfOW1hFiT2qfIHQ5iNLICZvTgbnb4C
	9I+shIx9hM/Pyu1BdFN93ReWpQIKqxd3EgS/9BANrCan8Ru27EU832dS6nGaFHtosNG/lY
	zn+MCqkvA4uss8TV5HTDet/1NiOvmS3Ios4G+tfTZ9VkX82ABVjA9iE4eD9WPj7voWTSq6
	kbaX4LUXTlgR9k5gNI5B0YHmyVFG27TA962upyuSOPoBgphJKQbbzKk9HbAc2USjv0SPP5
	91xkKaLIFv04exKOUGKXbrKNyzW2Wh9sDfPy7kOou3dEwcTIglgZfnhaj1xgFQ==
Date: Tue, 22 Mar 2022 18:29:18 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] KERNEL_DEVICETREE cannot be appended?
Message-ID: <YjoHbsir2x08qfzp@piout.net>
References: 
 <AM0PR10MB310724144326400F7BA0A04599179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: 
 <AM0PR10MB310724144326400F7BA0A04599179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 17:29:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56530

Hi,

On 22/03/2022 17:10:10+0000, Matthias Klein wrote:
> Hello,
> 
> I am trying to add a device tree in a yocto based on the meta-raspberrypi layer.
> Adding the device tree via a patch in a bbapend of the kernel recipe is no problem.
> 
> But all attempts to add the file in the local.conf of the variable KERNEL_DEVICETREE replace all other device trees.
> I.e. on the device is then only my new file. It seems that the "append" works like a "="?
> 
> #KERNEL_DEVICETREE:raspberrypi3-64:append = " broadcom/my-custom-tree.dtb"
> KERNEL_DEVICETREE:raspberrypi3-64 += " broadcom/my-custom-tree.dtb"
> 
> Is there any way to add the device tree?

Did you try RPI_KERNEL_DEVICETREE:append?


Whatt is happening here is that KERNEL_DEVICETREE is set like that in
rpi-base.inc:

KERNEL_DEVICETREE ??= " \
    ${RPI_KERNEL_DEVICETREE} \
    ${RPI_KERNEL_DEVICETREE_OVERLAYS} \
    "

You are creating KERNEL_DEVICETREE:raspberrypi3-64 which is more
specific than KERNEL_DEVICETREE and so the default content of
KERNEL_DEVICETREE is dropped and replaced by the value of
KERNEL_DEVICETREE:raspberrypi3-64.

> Preferably without having to create a custom machine for it?
> 

You should probably create a new machine, it is a bad practice to change
KERNEL_DEVICETREE from local.conf

> Best regards,
> Matthias
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56529): https://lists.yoctoproject.org/g/yocto/message/56529
> Mute This Topic: https://lists.yoctoproject.org/mt/89957163/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

