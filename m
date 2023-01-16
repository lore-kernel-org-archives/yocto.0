Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790BAC54EBE
	for <webhook@archiver.kernel.org>; Mon, 16 Jan 2023 08:24:56 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.161997.1673857488061840593
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Jan 2023 00:24:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=dOGs/y1l;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id C8720E0007;
	Mon, 16 Jan 2023 08:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673857486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HmMnPCf88Czz5z8Y8UujVBCXkK6VCAsykDDcduX09QQ=;
	b=dOGs/y1lA43Eaxf8szYD2WY5ZKnS1OrOGo67X3fVHUXu98mT809F7f8K3GTx/sUEH8KsCH
	sosII++2R0sipQ/C/lOLNWQstfiM+6Y3EbEDo7ELDNFap78MydFT1SjyRGjZy2baldBrZ0
	0MK492yc8CLf+vq51jK/uZt17juH1Cgui40PQGRX8G1gUAieCKgXI3sJ4zvmM/5oLo0cIu
	ecUs6TBTg1n2m7I8nTrjyOCUzF9Wqon8PEzHgiySSBehnLL3crMvpR9ndZoCUuDa250iWy
	TiaICiAZbU1Tdora582K6kBaVyz64qYY/UvywYxJjZH2ZpoKghVpYy4WjkllcA==
MIME-Version: 1.0
Date: Mon, 16 Jan 2023 09:24:45 +0100
From: alexis.lothore@bootlin.com
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, alexandre.belloni@bootlin.com
Subject: Re: [yocto] [autobuilder][PATCH 0/2] generate regression reports
 against proper releases
In-Reply-To: <11d00ada72d2ab7ec5476fe09050dc9dfa790606.camel@linuxfoundation.org>
References: <20230113150646.44144-1-alexis.lothore@bootlin.com>
 <11d00ada72d2ab7ec5476fe09050dc9dfa790606.camel@linuxfoundation.org>
Message-ID: <49a3a253e012e24a2bf9e454d7b56e87@bootlin.com>
X-Sender: alexis.lothore@bootlin.com
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Jan 2023 08:24:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58996

Hi Richard,

On 13/01/2023 19:01, Richard Purdie wrote:
> On Fri, 2023-01-13 at 16:06 +0100, Alexis Lothoré via
> lists.yoctoproject.org wrote:
>> - I also have some uncommitted python unit tests on "previous version
>>   computation", but current scripts directory does not allow proper 
>> unit tests
>> integration. If appropriate, I could submit some minor reworks to make 
>> it viable
>> for testing and submit those tests
> 
> I'm glad you mentioned this! Yes, I think it is important we add some
> tests for this. We can rework these scripts as needed as the project is
> their main user at this point.
Good, I will then add some minor rework to allow introducing unit tests 
alongside
the version computation in the next revision
> 
>> - This new regression checking introduced the need to clone a wider 
>> testresults
>>   history, which is (very) slow on my machine, but I do not now how 
>> slow it is
>> on autobuilder. Could it be an issue for the delivery process ? Does 
>> it need to
>> be smarter on this point ?
> 
> I think it will be slow on the autobuilder and we're going to have to
> do something different to make this work well. My clone still hasn't
> finished and is at 5.75GB of data now (15 mins to get the last 4.5GB)
> and still going.

OK. I observed a quite similar behaviour while pulling manually the 
whole repository,
but I thought it might be linked to network issue on my side. I will add 
a smarter way
based on your suggestion (git ls-remote)

>> - If appropriate, new patch could follow to allow regression reports 
>> generation
>> against multiple revisions : for example we could check for a 
>> milestone build
>> against previous milestone AND previous major release
> 
> I think that is the direction we need to go so yes please!

Noted. If it is OK for you, I will keep this last point for another set 
of patches, once this
initial work is approved and merged.

Regards,

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

