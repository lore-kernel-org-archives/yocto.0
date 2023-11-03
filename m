Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBED1C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 15:05:06 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.55719.1699023899676309233
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 08:05:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=fTUTwlkY;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id B233C1C0010;
	Fri,  3 Nov 2023 15:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699023896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M06/4IioL8oF/VoihVfcHJMHkiYUs1Ju8wFPtlxuRe4=;
	b=fTUTwlkYUGwud0RiEMdZVcqOc+qQ5RnUZnEk4SmR01ICrcwztxLrw1EfKOjdFYo8mqiiX7
	0ubVL+ejseGGzrN+R/uBifaAb00JOCVNDxu9aDwVOgTuR7N3ZqJu0NdjwFJvobnMBON1f7
	Nl+A1Jymt1qErHRj+W0AZueiyJpwEw75Ts41EJ7uXlKteh+ncVBIqWWj94w4XWLlVBtOyh
	IirDDz44ZuKyjFc1FpAuhfgPUaII9nb+0pefkEU4ArHkckBQGPupqvGMSNMyK4DvJNwdjD
	7YZ4plW2lQv+nEbbWyNNzXUuSHtVfixnK6fGYTWwdOMsUqiEDuLYQwl7B1Bz/w==
Message-ID: <4b04aad4-03e8-462e-bd27-a1de18708083@bootlin.com>
Date: Fri, 3 Nov 2023 16:04:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: Regan BUSSY-SOCRATE <regan.bussy-socrate@navocap.com>
Subject: Re: Package dependencies not generated?
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 15:05:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61599

Greetings,

On 02.11.23 at 19:16, Michael Opdenacker wrote:
> Greetings,
>
> I compiled rsyslog from meta-oe:
> bitbake rsyslog
>
> I set up a binary feed ("bitbake package-index") and a webserver to 
> serve it, and when I try to install the rsyslog package, I get:
> $ opkg install rsyslog
>  * Solver encountered 1 problem(s):
>  * Problem 1/1:
>  *   - conflicting requests
>  *   - nothing provides libestr0 >= 0.1.11 needed by 
> rsyslog-8.2306.0-r0.core2-64
>
> Indeed, no "*libestr*" package(s) got generated. Why not?
>
> I checked RDEPENDS:rsyslog and it contains "logrotate" for which a 
> package was indeed generated. I thought that shared libraries 
> dependencies were automatically detected and added to runtime 
> dependencies. That's confirmed by 
> https://docs.yoctoproject.org/dev/overview-manual/concepts.html#automatically-added-runtime-dependencies 
> . Why didn't it happen?
>
> I checked that libestr got compiled (it's part of the DEPENDS for 
> rsyslog), but I can't find any package for it, even in the working area.
>
> It sounds like a very basic misconception between my keyboard and my 
> chair. What did I get wrong?
>
> Thanks in advance for your insights.

A simpler way to ask this...

When I build rsyslogd ("bitbake rsyslog"), an ipk package is built for 
this software, but not for its shared library dependencies, for example 
for libestr.
How to explain this?

Thanks in advance
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


