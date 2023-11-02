Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDE61C4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 23:27:08 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.1122.1698967623736326409
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 16:27:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=b6+OoC4P;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 603FAFF806;
	Thu,  2 Nov 2023 23:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698967621;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bHLhi1syG8BV1yJ7M95WzSby12LD8b50li1Ym8ZiI8w=;
	b=b6+OoC4P8wqwOnRWsGy4kKPIBBdWAEYHZ8V9gc3B28Jqd+pkPG02N2xryooQ1YRIEBmeBl
	bJWldrAYudsw0GLWNa+iotF5/UUWbfX20NpPgFrkaN9EyCTu1ofyRS6CVQszmF5P0RKrCB
	/owb2vcCGK6PdkSwcuN4e0B673K+VvKtc0aebUmx99fkXqWphNtnUddUyVEhpREtnasLZr
	0OgEkBw4BpnLYA6exhZL1zHhAo3ENAnL5JwwaAAP8m6yjkCk/Tp/nG9cU7xWbQyzVI7OIR
	nvu/mGbj4aFd4ypeMOjCEZkL0ywjEUyC1Gl5ocRhxY122xeU8/TsfE5bfEOodw==
Message-ID: <c3e08c59-43e9-43db-97e3-64a27077813a@bootlin.com>
Date: Thu, 2 Nov 2023 16:28:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-4.3.rc2)
Content-Language: en-US
To: Pokybuild User <pokybuild@yoctoproject.org>,
 yocto@lists.yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: qa-build-notification@lists.yoctoproject.org,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <0101018b4bde33b6-a3fab4b0-bd55-4084-8c36-15407b954459-000000@us-west-2.amazonses.com>
From: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
In-Reply-To: <0101018b4bde33b6-a3fab4b0-bd55-4084-8c36-15407b954459-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 23:27:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61586

Hello,

On 10/19/23 23:55, Pokybuild User wrote:
> 
>     A build flagged for QA (yocto-4.3.rc2) was completed on the autobuilder and is available at:
> 
> 
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.rc2
> 
> 
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6080

Once again this release is lacking a proper regression report. I am reacting a
bit late, but I have moved forward with the diagnostic. As for yocto-4.3.rc1,
the report is empty because of a lack in the "base" tests results, which is here
tests results from yocto-4.2. Those are in fact the tests results that we have
pushed manually during summer, because those weren't pushed automatically
(because of another unrelated tagging issue which has been fixed since then).
But it looks like we have made a mistake/omission while doing so: the tag
associated with those results (which is required to make resulttool search for
it) is not present on the mickledore branch. This issue is pretty visible when
fetching the lasts commits on mickledore branch in testresults repository (see
https://git.yoctoproject.org/yocto-testresults/log/?h=mickledore)

So to fix this, my suggestion is for someone having the proper write access on
git://git.yoctoproject.org/yocto-testresults to manually apply the missing tag
on the proper commit and to push it:

git tag mickledore/70029-g21790e71d55f417f27cd51fae9dd47549758d4a0/1
5bf0165296b3686ab5c400869ed2e030f2269c8a

(adding Michael Halstead in CC since he is the one who helped me with the manual
import of missing tests results)

I have tested locally this fix (by tagging locally my clone of testresults +
hacking around in resulttool to prevent it from reading remote tags), and I have
been able to generate the report. Here it is :

https://pastebin.com/fvRcqes4

By the way, the report comes from a slightly modified resulttool run because it
has shown that the recent regression grouping addition needs some improvements
(among some other already discussed issues), so patch incoming.

Kind regards,

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


