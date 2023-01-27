Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D0DCC38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 08:18:09 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.97689.1674807480220077904
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 00:18:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=X5hkNAso;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C5559240012;
	Fri, 27 Jan 2023 08:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674807477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=trx94BAeI61j48MfUB5ofdt5lShajOZEeqoRk/9Pm6k=;
	b=X5hkNAsokwRowGYpp+phdaZiz4HfKOEtyPMxGxe3KwxzDq8R153DcjYv0hZ1xBlw2AnlUB
	U7Dy83iu/gii/fEWIfJSeEBhAxLCjTpxnLuurzIxL4qmu1+cj9vc8EY24pBXeBhVSU15Da
	ShbVyjKH/m7Z1TZ9swzMXLnNoWF55fkVJn0VZbOz3uoy2ocbcx0oBWGJBqB/8GrwcfIYaJ
	K4tpHin5m062RQj2uYBMBhW0PwxqU7AJprpFjlmWHKD8J4jFXK5Su0y3WKJ+0ECqFUsBLd
	epGDMij4dtYKVGpnby3LMZJtVSv0bP/MHp4JOheGGFYQeYFjKcZnJf1UYUEDSw==
Message-ID: <2116eaf1-be2d-6149-65b0-a515c13b65a7@bootlin.com>
Date: Fri, 27 Jan 2023 09:18:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] [autobuilder][PATCH v3 3/5] scripts/send-qa-email:
 Generate regression reports against most relevant release
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
 <20230124173017.134017-4-alexis.lothore@bootlin.com>
 <01815937faa1fb81a0c3ccc19db372e4f3ff5f33.camel@linuxfoundation.org>
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <01815937faa1fb81a0c3ccc19db372e4f3ff5f33.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 08:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59072

Hi Richard,
thanks for the feedback

On 1/26/23 23:47, Richard Purdie wrote:
> On Tue, 2023-01-24 at 18:30 +0100, Alexis Lothoré via lists.yoctoproject.org wrote:
>>          report = subprocess.check_output([resulttool, "report", args.results_dir])
>>          with open(args.results_dir + "/testresult-report.txt", "wb") as f:
>>              f.write(report)
>>
> 
> There looks to be a potential issue here since you drop the use of
> comparebranch entirely. This comes from config.json:
> 
>     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
> 
> and basically what it says is that master-next is a force push branch
> which should be compared against master (and ross/mut should be
> compared against master too).
> 
> We need this code so that when we build test branches, we run the
> regression comparison against the last known master test results. We
> should probably put Alexandre's test branch in there too.

I may have missed that. I need to dig a bit to understand exactly what is
expected here in order to fix it. Noted, I will take a look at it.

Regards

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


