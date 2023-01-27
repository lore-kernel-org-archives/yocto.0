Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF94C38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 14:17:00 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web11.102894.1674829017355156408
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 06:16:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=DKZ2IHiY;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 23634240004;
	Fri, 27 Jan 2023 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674829015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZzruYFi5bCdesWg6HA1+hpasEWK/ezi4RwH/NqcRxuo=;
	b=DKZ2IHiYvE7vzV2rHbcmgvEef+UOMGlw7LXPuYqOl+n82kc1sqsDiOlANL16DJsMoXfdl2
	VTWlthintyKo7SisD6IGsIg4v3DtSj9bz/o2JjSdRXEh576sKoVFfT07u0Y/e15WO1ykYm
	d9rd4vcJHX085u0psi04FUZ0ewi99ocDeGbq0iRFGHMmG9zmFdqGGlGHB6i+/3WuUOAyc0
	QE85dxE156iytWDL7gp9ZJ8huBThtCboDchINXOZGEub2aBq6+VhiTrMbi+AnSn6JZHEMS
	g1+75r/ozEzTLaoa54n7iWs5dVOwbGIdfTPii1oSmcXj6yy36lbJxrzdCpTZUg==
Message-ID: <cec9ad75-bd4e-335f-10f1-32108556853e@bootlin.com>
Date: Fri, 27 Jan 2023 15:17:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] [autobuilder][PATCH v3 0/5] generate regression reports
 against proper releases
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
 <6c9f63bbb86f39e3f2a24bbecd89499006edf7f9.camel@linuxfoundation.org>
 <c24f0f04-93d5-07db-1aa3-809a0f3e972f@bootlin.com>
 <8f1a59823f6c4b29d6638f79fe778c2480984784.camel@linuxfoundation.org>
Content-Language: en-US
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <8f1a59823f6c4b29d6638f79fe778c2480984784.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 14:17:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59084

On 1/27/23 10:51, Richard Purdie wrote:
> On Fri, 2023-01-27 at 09:26 +0100, Alexis Lothoré wrote:
>> On 1/26/23 23:42, Richard Purdie wrote:
>>> On Tue, 2023-01-24 at 18:30 +0100, Alexis Lothoré via
>>> lists.yoctoproject.org wrote:
>>>>
>>> Thanks. Since I like living dangerously, I've put these on the master
>>> branch for the M2 release build. I wanted to see how this does in a
>>> real world test.
>>
>> Thanks. Please feel free to reach back if you observe any unwanted side effect,
>> since most of my knowledge is based on scripts reading and autobuilder builds
>> history. I have tried to test it as much as possible on my machine, but as I was
>> discussing with Alexandre Belloni, the many stubs and fake data used do not make
>> the tests as accurate as the real world case.
> 
> The result of the M2 build is here, specifically the regression report:
> 
> https://autobuilder.yocto.io/pub/releases/yocto-4.2_M2.rc2/testresults/testresult-regressions-report.txt
> 
> (warning, it is a 13MB file, which may hint at some problems)
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/4844/steps/29/logs/stdio
> 
> was the log from running the script. It also suggests there may be a
> few issues.
> 
> I think we need some improvements to the report. Firstly it should
> state at the top which revisions are being compared and any tags they
> correspond to. 

Yes, I was thinking about this while tweaking send-qa-email. Another point I
need to understand is how the regression report is managed if resulttool finds
multiple tags in results dir concerning the same yocto revision. I feel that the
result is not the same if it finds one tag or multiple tags for the same
revision. Does it really make sense to check regression against multiple tags
referencing the same yocto revision ? If so, indeed we should make the tag name
appear. If not, how to distinguish which tag is appropriate ? This question is
more linked to resulttool internals than to send-qa-email.
> 
> Next, we need to understand why the large chunk of tests "disappeared".
> it may be related to the "Failed to retrieved" messages?
> 
> I also happen to know the reproducibility tests failed in this build,
> yet the regression report has no mention of that.

ACK, I will take a look.
> 
> So the patches are a start but there is much more to do.

Regards,

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


