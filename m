Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BA2EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 19:12:19 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.20365.1687461138293654286
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 12:12:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=BikZsLXz;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: michael.opdenacker@bootlin.com)
X-GND-Sasl: michael.opdenacker@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1687461137;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eAmg6YDhg5PRt1jZOAAjz4X+O7MmftyV0bhUCgjEdqg=;
	b=BikZsLXzOlEzo4creigpB33X+ZOyZtYsC5zkzvDlgUVK0Qb+IQmMJheMfuQ3yKjelAh4rs
	PArYtTXXO1G66b96DOSjb0f7tIvjK+XjX+kLUlofcgx3MM/KNeVRXRNAHeyZ5Mt6aR5T77
	5cZc2vdmFglrGLbJccTNNbMc/3ID7Sjlk8PxjEQMDCBve2uazx7Y1WA2zWJSXWE1bgGH+P
	dKRXCiDRL0mxkINONu4hUED+XACfBaNpLwX0htUErY1642l6g4Mdi2qF9S5PwjZOxX6dT3
	0d742MWtNbmH0bRm5dpHGJY6u3RERpj+WJ6IkcnAbo1VcJyCF63xf3IdyhDvyg==
X-GND-Sasl: michael.opdenacker@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id A8E0EFF802;
	Thu, 22 Jun 2023 19:12:16 +0000 (UTC)
Message-ID: <d0204d5b-b500-0ef4-e967-fedb7e0f1d73@bootlin.com>
Date: Thu, 22 Jun 2023 21:12:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Ask for help
Content-Language: en-US
To: Natanan Tirasukvongsa <tnatanan@gmail.com>
References: <CAPoeDCY0r1L93=Ygfq7f+TCUiW9x5iib9TqV27jY9jLLtMptsA@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAPoeDCY0r1L93=Ygfq7f+TCUiW9x5iib9TqV27jY9jLLtMptsA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 19:12:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60415

Hi Natanan,

On 22.06.23 at 18:42, Natanan Tirasukvongsa wrote:
> Dear YOCTO Project Team,
>
> I would like to ask about the YOCTO version. I am a beginner 
> developer. Now, I use Ubuntu 22.04 LTS and Raspberry Pi 4. Which YOCTO 
> version is compatible (if it has long term support, it's good!!) ?


Yes, you can use the "Kirkstone" version, which has indeed Long Term 
Support:
https://docs.yoctoproject.org/ref-manual/release-process.html#long-term-support-releases

And indeed it supports Ubuntu 22.04: 
https://docs.yoctoproject.org/4.0.10/ref-manual/system-requirements.html

There are many other pieces of information in the manual!

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


