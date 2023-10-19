Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D93CDB465
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 12:27:10 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.26347.1697718425492571153
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 05:27:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=bxdLmA0F;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4B36D60010;
	Thu, 19 Oct 2023 12:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697718423;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sRnCK3l4L9t2X/RMtSOgPkQZ1oSsJpJKXipe+CbcueY=;
	b=bxdLmA0F37j6ITnk5MAyb7wOWLz63PgR16mkDykHCTneOSg4sjNaOdWQo7cmHATFaiZyOP
	J6aKzWSAsb5Ya5ZmYZUER/YGmVrkFZl/3MYQgTVG8CHash6YTNavTrdw0iUsz5rXpcM1zx
	GuPxBjecURX6FiNhu53JwGKGyDs+RLF/EVW4Q0k1DePd0nnCbhnHTnIgRhfd/e1qRb1ND3
	D8y2ETFCjvW/tcwsgBhECBFT4B9yRZ7QTFz8h6sQNjWcPoTrxPFK/tDsv8N1/KOF86KQGC
	vNmFmotg4PWqRXIHxemrZyxpRF/LLlPbqbbkjgk0qWVFLa9wf2vyL6wYyr9dAA==
Message-ID: <39978441-6f8d-48be-92db-00cd66e13c00@bootlin.com>
Date: Thu, 19 Oct 2023 14:28:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-4.3.rc1)
Content-Language: en-US
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
 <a97b6ea3-0478-4cb3-a506-ad19ac7a6f86@bootlin.com>
 <90D7FE40-32EB-4D67-B099-9E0C764FC258@arm.com>
From: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
In-Reply-To: <90D7FE40-32EB-4D67-B099-9E0C764FC258@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 12:27:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61414

Hi Ross,
On 10/19/23 13:04, Ross Burton wrote:
>> On 19 Oct 2023, at 09:36, Alexis Lothoré via lists.yoctoproject.org <alexis.lothore=bootlin.com@lists.yoctoproject.org> wrote:
> I just skimmed your report and have some feedback to hopefully make it easier to read in the future.
> 
> I’d suggest sorting the output in order of importance.  For example, this is a section that I really don’t care about:
> 
> Match:       sdk_core-image-sato_x86_64_fvp-base_20230910083055
>              sdk_core-image-sato_x86_64_fvp-base_20231017222150
> 
> Put those at the bottom, or even better collate them into a single section where there have been no changes.
> 
> Similarly:
> 
> Match:       runtime_core-image-sato_qemux86_20230911011430
>              runtime_core-image-sato_qemux86_20231017223736
>     Additionally, 1 new test(s) is/are present
> 
> I guess marginally more important than identical results, but “there are new tests that passed” isn’t very interesting.

Indeed, not so useful and hiding the real content at the bottom

> Regression: oeselftest_ubuntu-22.04_qemux86-64_20230911011940
>     oeselftest_almalinux-9.2_qemux86-64_20231017221342
> 
> Should they have matched? The host distro doesn’t match and this matters for some of the tests, as some distros don’t support some of the selftests. In this case specifically, there are seven regressions and six of them are specific to the host changing, which has the side-effect of hiding the one actual regression.

Yeah, that's a point I have been struggling with when starting to update those
tools. The initial assumption I have started working with, after discussing the
matter with Richard (see [1]), is the following:
1. MACHINE _must_ match between base and target
2. Different HOSTS _can_ be cross-checked

But the issue you are pointing tends to show it does not work well in some
cases. I will have to do some tests to see if dropping 2. reduce this noise
without loosing valuable data, or if we need to find something smarter

> 
> The report then lists the first however many regressions before announcing the summary:
> 
>  (In total, 7134 regressions/status changes detected)
>     Additionally, 7 previously failing test(s) is/are now passing
>     Additionally, 4622 new test(s) is/are present
>  
> The headline figure of 7134 regressions should be first, as that’s the most important data point in a skim of the report.  List the summary first, and then the breakdown.

ACK

> Grouping the results would be interesting, because the list got truncated I can’t see easily if all 7134 regressions were in ptestresult.gcc-g++-user.* or if that was just the first 100 and the rest were other components.  Breaking the ptest results up by the second level component would be interesting, if it said something like this then we’d be able to get a feel for what components have broken from the report.
> 
> 7134 regressions detected.
>     ptestresult.gcc-libstdc++-v3-user.30_threads/thread/native_handle/cancel.cc execution test: PASS -> FAIL
>     [ say 10 results per component ]
>     And 6123 more in ptestresult.gcc-libstdc++v3
>     ptestresult.gcc-libgomp.libgomp.c++/ctor-10.C: UNSUPPORTED -> UNRESOLVED

Makes sense. I have posted this morning the series introducing the display limit
([2]), I can work on a v2 implementing the ptest specific display limit

> This one also caught my eye:
> Regression:  runtime_core-image-sato_qemuppc_20230910082140
>              runtime_core-image-sato_qemuppc_20231017222112
>     systemd.SystemdJournalTests.test_systemd_boot_time: PASSED -> SKIPPED
>     Additionally, 1 new test(s) is/are present
> 
> Is that comparing a systemd test run with a sysvinit test run?

I think the comparison is relevant, both are bout systemd system (many systemd
tests are present and OK in runtime_core-image-sato_qemuppc_20231017222112
results). However I do not get why it is marked as skipped and not failed:

            "systemd.SystemdJournalTests.test_systemd_boot_time": {
                "duration": 2.3783957958221436,
                "log": "Error when parsing time from boot string",
                "status": "SKIPPED"
            }

Maybe an issue in the corresponding runner ?

> Thanks for the work on the tool so far, this is a lot easier to read than the full reports!
> 
> Ross

Thank you for having taken time to give some feedback !

[1] https://lists.yoctoproject.org/g/automated-testing/message/1216
[2]
https://lore.kernel.org/openembedded-core/20231019095352.25923-1-alexis.lothore@bootlin.com/

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


