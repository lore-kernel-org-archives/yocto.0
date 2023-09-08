Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F10BEE57C5
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 05:13:02 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.33273.1694149977965783753
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 22:12:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=CgILPFaV;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9960860004;
	Fri,  8 Sep 2023 05:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694149976;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L/7+K8Uq/JlCGhn+PT2Fdokv26OH4PS1J6jDifA9WKo=;
	b=CgILPFaV85w/7nLTh35620YhMS7V+5xe7tMTE//50e1eBXQuMi/GpIvPo0VNam/MAo7U/W
	2kLRrX1rcvaquYsDTS4OQi0MRl+jb6f1yJbfj6rqRUMU5T8xkzS5LVUJt4+4DJjAyjWgr5
	70PzrVU21obFEfg5gxIl5EY1/qeFVE046aEEqfIpMbq9Q10vPoIW/G94A/6EQszX996jbv
	xEFrmk5/qNFXiRqsHghbADkqmQibbd0FJ9PkqOglewiHE+nA2toQwxSFmn2yKxXGv5fqtq
	qs2u238BjV0iIPMWBM4reKACed9Ajt2wlS8/Dr9MsHorYIYHbK7agvpyWK+1aA==
Message-ID: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
Date: Fri, 8 Sep 2023 07:12:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Memory requirements for building images with different
 architectures
Content-Language: en-US
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
References: <CAPJWBnisV-nmDrv5S09Z5tZemgBf76Qp_+dpeDsX_b0n1hKDZg@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAPJWBnisV-nmDrv5S09Z5tZemgBf76Qp_+dpeDsX_b0n1hKDZg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 05:13:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60942

Hi Hassan

On 08.09.23 at 07:02, MOHAMMED HASSAN wrote:
> Hi guys,
> I wanted to build images for different architectures and machine types 
> on one SDK. I know that the build directory takes a lot of space (in 
> my case more than 90 GB). What to do in such a case.
> Are they any efficient techniques that you can share with me?


Right, you're not the only one!
See 
https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimum-free-disk-space
and https://docs.yoctoproject.org/dev/dev-manual/disk-space.html

I hope this helps.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


