Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D7EB64D9
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 20:34:33 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.29201.1686861271792498180
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 13:34:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=J6cEaj7/;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686861269;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UXWA7d7YozpijYy1XgB7/o4dai3uhD6YJL9DfhexDqg=;
	b=J6cEaj7/0tjgZ5Orgpn3FslqzAyQbvLK4wM2we+ESYQJ77wWlqD1wM1Ls3MCvSDdWjvTha
	cAj2ELI5kVvaK4pF5Fz9BMxMBSOLk00qmo3edzdjoCcHAuOeiAKvN3uDoRD3kJB7XSSWQp
	iABbzNFK1rWk9gVEU9Xiexos1OHT6p8bhQFka4H8GaCh3uoQejD2u/bQ0ZdrFgO4tuJfNv
	Oa60xjuddz1p8fkp5OFkyORZdDks1f/EjFJBD0xedGc9zWgT/7F9RK6zi04/Kx8av4LfQA
	BXGmeKKY+jOEQMY7iQ1WSRe2gtBBBMhCppYj3iYeB09e0s9CHZ2/6wHkyIp9Gg==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 211F960004;
	Thu, 15 Jun 2023 20:34:29 +0000 (UTC)
Message-ID: <6b8c3e9e-45b7-fcd2-5905-b8c136feacbd@bootlin.com>
Date: Thu, 15 Jun 2023 22:34:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org,
 Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
 <dc91f7ad96c8bfdc64aafca6e412f827790def6a.camel@linuxfoundation.org>
Content-Language: en-US
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <dc91f7ad96c8bfdc64aafca6e412f827790def6a.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 20:34:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60321

Hello Richard, Michael,
On 6/15/23 15:41, Richard Purdie wrote:
> On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothoré via lists.yoctoproject.org wrote:
>> From: Alexis Lothoré <alexis.lothore@bootlin.com>
>>
>> There must be a more robust rework to do (because the issue will likely
>> happen on each major delivery), but I aimed for the quick and small fix to
>> quickly bring back tests results storage without breaking other things in
>> the process
> 
> Thanks, I've merged this as it is a good first set of steps.
> 
> As I mentioned, I think we should hardcode poky + "not ending with -
> next" as the test, then we shouldn't run into this issue again.

ACK, will do the fix
> 
> I'd also like to retroactively push the test results for 4.2 since we
> have them and should be able to merge them onto the branch. I'd then
> like to see what the revised 4.3 M1 report looks like.

I have started importing the archive kindly prepared by Michael in poky-contrib
test-results repository, but I am struggling a bit regarding regression report
generation with freshly imported result. I still have to confirm if it is the
generated tag that is faulty or if it is a kind of an edge case in resulttool

Kind regards,

> Cheers,
> 
> Richard


-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


