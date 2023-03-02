Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39850C678D4
	for <webhook@archiver.kernel.org>; Thu,  2 Mar 2023 11:25:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.12882.1677756305568242256
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Mar 2023 03:25:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=RW22ZIzs;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 60B5B40007;
	Thu,  2 Mar 2023 11:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1677756303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VT6+G8W66bHFbLwVhhen2mzK8eg7ljnV3q8D7AOgYP0=;
	b=RW22ZIzsreVxb1zLn5AuunPEkAkVEO0HIipA7BttDh40YMtOvdWF0E0j+F8Lq98m58PEZf
	ck9ekQ6Ysgs964j/Pi4miEvQ+4l9t8Q8gqgiyMVkTdH6N9J2dY0oKiKuxn4x0XzFzkM/uK
	VTpMk+srOot/VcE3q2NCkyEOfy+JDu2gmgeHUHxHsgwc/eEhMXt/KVBzg9j5ojJcYfY1zQ
	u9t25vQwyYfuXmBIXeNXMDW9n5y5aMz1RbMnoHeDzUKV73a1NvBB875JBL9+MN760ZIXOd
	o1rF/It241/UzHZ3onFvS6P5ePSN29pEMyUyI5WAly85I/4pUBHT8MVD4oPXuA==
Message-ID: <a57e31f6-eebb-5022-6d41-8af07521a002@bootlin.com>
Date: Thu, 2 Mar 2023 12:25:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Transaction error after trying to add systemd
Content-Language: en-US
To: Ross Burton <ross.burton@arm.com>,
 "sethu.m@calixto.co.in" <sethu.m@calixto.co.in>
References: <CAFjAHzH+jooWbRcnwcG+upchU1n5JWJ0+mUTe8GoFZkbc_aSjw@mail.gmail.com>
 <FA3E9DBA-A83D-4E44-A210-33EBB398209C@arm.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <FA3E9DBA-A83D-4E44-A210-33EBB398209C@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Mar 2023 11:25:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59334


On 02.03.23 at 12:07, Ross Burton wrote:
> On 1 Mar 2023, at 13:45, Sethu Madhav via lists.yoctoproject.org <sethu.m=calixto.co.in@lists.yoctoproject.org> wrote:
>> Hi,
>> When i try to add systemd using the below config in local.conf
>>
>> DISTRO_FEATURES_append = " systemd"
>>   VIRTUAL-RUNTIME_init_manager = "systemd"
>>
>> Iam getting transaction error .
>> How to resolve this issue?.
>>
>> Downloading Packages:
>> Running transaction check
>> Transaction check succeeded.
>> Running transaction test
>> Error: Transaction check error:
>>    file /sbin/telinit conflicts between attempted installs of systemd-1:244.5-r0.cortexa8hf_neon and sysvinit-2.96-r0.cortexa8hf_neon
> So something in your image is causing it to install both systemd and sysvinit.
>
> You’re not disabling sysv, so one of your recipes might be pulling in both.
>
> Try removing the lines you added and instead set INIT_MANAGER = “systemd”.  This does a more comprehensive switch to systemd than the two lines you are using.


And the manual is being updated precisely on this point.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


