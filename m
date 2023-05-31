Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD406C77B7A
	for <webhook@archiver.kernel.org>; Wed, 31 May 2023 12:41:33 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web10.13078.1685536892081365093
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 May 2023 05:41:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=k8kXN3wK;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
X-GND-Sasl: michael.opdenacker@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1685536890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z7Mz4m2NYbhMpnD31HAJJxBJlSV40wceNTqs8WEWiyk=;
	b=k8kXN3wK6MKIO9g9Cyt9MjV8qDygaIEdqsFln5SqB9Pr3JKQVxyPz7Hya9VFcxCFSYxBe0
	x9i71NOF3cVh5ksZaVf2s+wlXbUI65s/m8Dx+beAO2zUnvTnb8W15juKvo9l52lQg9A8Vb
	MnVCmpy9vonqJnnGdQqRalT+ZCD9Cw+ASWCCD7v0jfH191yn9xt59E4Yuo26X4h7vtKoY6
	AdhGbI2mV/EmM2XYSfMp6AO4/bTIw6Hpr4WLrA2XtNBjcgs/fYvg1egA3PPrFfeCp0ts2l
	XqqAYNBlXE0bFcpMTQYoviTeb6DvrkLeXoxlHfjacTHQvDURXcCPJ4f4yzifiQ==
X-GND-Sasl: michael.opdenacker@bootlin.com
X-GND-Sasl: michael.opdenacker@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9A89EC0022;
	Wed, 31 May 2023 12:41:29 +0000 (UTC)
Message-ID: <0399271c-a052-85c7-a054-d2426fc4f2f4@bootlin.com>
Date: Wed, 31 May 2023 14:41:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: michael.opdenacker@bootlin.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Inquiry Regarding Kernel GPL License and UI App Source
 Code Requirement in Yocto Base Image #yocto #qt5 #bitbake #gplv3 #kernel
 #kernelmodule
Content-Language: en-US
To: Rohith <cheerala.rohith@spacelabs.com>
References: <Myxh.1685523853230201596.T1Si@lists.yoctoproject.org>
 <17643A68960DA9C2.21586@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <17643A68960DA9C2.21586@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 12:41:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60154


On 31.05.23 at 14:32, Michael Opdenacker via lists.yoctoproject.org wrote:
> Hi Rohith
>
> On 31.05.23 at 11:04, Rohith wrote:
>> Since the base image of Yocto has the Kernel license type as GPL, if 
>> I include my UI Application binary in the Yocto Base image will I 
>> need to expose my UI App source code?
>
>
> No, the same applies to desktop GNU/Linux distributions. You can 
> develop, use and ship software with the license of your choice 
> (including proprietary), you don't extend GPL software or link with 
> it. Otherwise, only GPL compatible licenses would exist in the Linux 
> world.
>
> The GPL FAQ address this kind of questions: 
> https://www.gnu.org/licenses/gpl-faq.en.html


I meant: "provided you don't extend...".

Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


