Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51CDC6FD1F
	for <webhook@archiver.kernel.org>; Thu, 16 Mar 2023 14:28:17 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web10.13489.1678976889848873546
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Mar 2023 07:28:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=JCrYTjMJ;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 62AB3100003;
	Thu, 16 Mar 2023 14:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1678976887;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UeDTXODlQG/GZGAUGF5UHUJ1ujKH13r6jxcLJnnLezM=;
	b=JCrYTjMJmaRHUxPoZqAujwHgdXu8JOHbZ4bBid6V04GM3qMWrIcV5Eenzfo64C3di0xFt3
	4euF8/ETEgwQ5lZBA/xQ1P55+USpcv01pxBTPPnSSnxu6yzBsTE0+tjZ9j5OuAWhnnu2k3
	HiX+J+pWl2u/DSN7hF3mFSNNx65zs1Qe8DF4qy9FHw/tgiCR/00ESpuTFMhyBIJdVJi69P
	+MJYsnlWTG7/BVt773Fpp3xOJ752gfTJl1YN0CShC64duY8LWIvK8+lMjqzjUUFrr9j3Mh
	1JBZedgzYRJMcOINS3CZkTmk43NaFV0SSufUOI11nmrFe5Fqr7WtcdPRyY8vsg==
Message-ID: <2663d424-7a09-8346-d2eb-31e96a096cce@bootlin.com>
Date: Thu, 16 Mar 2023 15:28:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Cc: Vipin Vijayan <vipin.v@calixto.co.in>
Subject: Re: [yocto] libpcre error on compilation time
Content-Language: en-US
To: Sethu Madhav <sethu.m@calixto.co.in>, yocto@lists.yoctoproject.org
References: <CAFjAHzHOXoKD1Wr3Wogmz5=9gkoTPw53_q_9VxD1ntZ=Fo42uw@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAFjAHzHOXoKD1Wr3Wogmz5=9gkoTPw53_q_9VxD1ntZ=Fo42uw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Mar 2023 14:28:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59441

Hi Sethu


Thanks for using Kirkstone. Good choice :)

On 16.03.23 at 14:13, Sethu Madhav wrote:
> Hi,
> Iam unable to resolve this error on libpcre, during the bitbake. Iam 
> working on the kirkstone YOCTO version and i tried changing the 
> libpcre package but no luck. Can anyone please help with the issue, 
> Iam attaching the error log along with this email.


Could you show us your changes?
 From your logs, we still see the standard libpcre_8.45.bb getting 
build. At least, you didn't change the version number in the recipe file 
name.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


