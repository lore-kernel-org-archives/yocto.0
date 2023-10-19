Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 078E4CDB482
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 08:35:39 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web11.22849.1697704533010642302
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 01:35:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=L1BhQkOW;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 71B7BC0012;
	Thu, 19 Oct 2023 08:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697704531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tEmPiLiCrQop7pN96kxVExAesbG0abYy2Zb/4AslbZU=;
	b=L1BhQkOWJzp7Ot6S/ri1CdazoAzu8fGKM8RPPwo8t58YsGcBu4prgtvk+iofXrBaLFheL2
	4/ARLxlbYpu54NMz2p48l+2aWmSmN4nNLkL+LLyzMycQanXt0HbMrHlNyULHK4gr+M1Biv
	0YjokFOKCYpzlMgU7zEQ9nKSst7PfPpvLROLIFjan4EaOPg6rnlmXie+vnE+R/n4GQfmGo
	/SRwvmZfFEXFsVRCE4XoN6wGll+SxYdz1coDWvnbyG8vqYpc3aqNGjuNGtIARzpwI+bFT4
	wFpFXzu5zYJqIoKz9PfINSi0JPtGYsgWN2qS8xscnFhYM51IIJUdLNNEMXLeeQ==
Message-ID: <a97b6ea3-0478-4cb3-a506-ad19ac7a6f86@bootlin.com>
Date: Thu, 19 Oct 2023 10:36:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-4.3.rc1)
To: Pokybuild User <pokybuild@yoctoproject.org>, yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
Content-Language: en-US
From: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
In-Reply-To: <0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 08:35:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61408

Hello,

On 10/18/23 08:16, Pokybuild User wrote:
> 
>     A build flagged for QA (yocto-4.3.rc1) was completed on the autobuilder and is available at:
> 
> 
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.rc1

The regression report looks worryingly empty. It has been generated with
yocto-4.2 as comparison base. When taking a look at yocto-testresults content
for it, I only find a few test results (11, while it should be something around
300). I am not sure yet if we did some mistakes while re-uploading manually
missing tests results during the 4.2 cycle, or if tests results are indeed
suffering some issues for release builds (this is repeatable on different 4.2.x
releases).

So in the mean time, here is a manual regression report between 4.3_M3 and
yocto-4.3.rc1:

https://pastebin.com/6QbfGstR

The report has a "rate limit" applied for noisy regression (patch incoming)

Kind regards,
Alexis

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


