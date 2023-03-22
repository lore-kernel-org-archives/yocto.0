Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41E6AC7619A
	for <webhook@archiver.kernel.org>; Wed, 22 Mar 2023 11:01:53 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.39484.1679482908215785918
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 04:01:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=jDd7hWKu;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AB98540013;
	Wed, 22 Mar 2023 11:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679482906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bC6x4egCCqt885VEIKt2KKOAaobDQelYtNv07PDyXhk=;
	b=jDd7hWKukbbRVU/Q/FcLgLpFYenexdx9l/kgo720CMuvfcXYb02JzeTUys97FwbeYWAf4C
	uETW3/xDCElm3sdsD2sCTmGUn0UM9naklLcM1ptdrCtvbEiqdeoqiRPCfNVfe9pMj7G4Ib
	nE6JczgTKM3i15FpSatRiHP4qckbo1Jvif6+zaeXHLLuKdwU4ZjtJMm4JOijNCzzJNPgYL
	QDrSP5FPtgpyBhVesqve0B9mSseMbCiuZI6nqtyvsSHkDyYy5orUvdLtChSiBzHCFTX/Zq
	7onddTkWweODfF8Od8ID1BMyVZ69ZCGq9sQrIcYBpSO4bNO2OMDGVidoXDLgWw==
Message-ID: <372dc3c2-b1cf-fd78-9733-8909cfd1fedd@bootlin.com>
Date: Wed, 22 Mar 2023 12:01:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/8] fix regression
 reports generation on "master-next" branches
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org, alexandre.belloni@bootlin.com
Cc: thomas.petazzoni@bootlin.com
References: <20230313145145.2574842-1-alexis.lothore@bootlin.com>
 <3723507738dfc4ca08ad9ad9230c150c605e8168.camel@linuxfoundation.org>
Content-Language: en-US
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <3723507738dfc4ca08ad9ad9230c150c605e8168.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 11:01:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59490

Hi Richard,
On 3/22/23 10:41, Richard Purdie wrote:
> On Mon, 2023-03-13 at 15:51 +0100, Alexis Lothoré via
> lists.yoctoproject.org wrote:
>> From: Alexis Lothoré <alexis.lothore@bootlin.com>
>>
>> This series fixes regression report generation on "next" branches, as raised in
>> [1].
>>
>> The first five patches are preparatory updates for the real fix, being either
>> refactoring, cleanup or unit tests addition to better understand how integration
>> branches are used in send-qa-email.
>> The proper fix is in 6th commit, followed by corresponding tests
>> Finally, the last commit add Alexandre's "next" branch as "fork" branches to
>> enable regression reports generation when testing patches, as suggested in [1]
>> too.
>>
>> Since patch testing branches are force-pushed on a regular basis, it is quite
>> difficult to get a relevant testing scenario, so this series has been tested by
>> faking SHA1 in yocto_testresults_query to match some master-next results in
>> yocto-testresults at the time of testing this series. I would gladly take
>> feedback about this series running for real in a master-next branch
>>
>> [1] https://lists.yoctoproject.org/g/yocto/message/59067
>>
>> Alexis Lothoré (8):
>>   scripts/utils: add unit tests for getcomparisonbranch
>>   scripts/send-qa-email: remove unused variable
>>   scripts/send-qa-email: invert boolean logic for release check
>>   scripts/send-qa-email: protect is_release_version from None value
>>   scripts/send-qa-email: add tests for is_release_version
>>   scripts/send-qa-email: fix testing branches regression reporting
>>   scripts/test_send_qa_email.py: add tests for base/target pair guessing
>>   config: flag A. Belloni master-next branch as testing branch
> 
> I think there is a regression somewhere:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/85/builds/2085/steps/29/logs/stdio
ACK, will take a look at it

Regards,
-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


