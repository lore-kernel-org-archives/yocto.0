Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F2EB64DA
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 12:15:35 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.10074.1686744932927090031
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 05:15:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=jBvDdg7F;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686744931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pxCtdxFxPzXeswFXwXfxl/55IVvVbZvH0gT01NY5to0=;
	b=jBvDdg7FGx5kN6n+j/+DorCiqx46WKQ6Td9VtSUTl2F5RCb7OPymK7tImFcVEbTChQjA+9
	IiLWwhfFDuNEKpmCuujq6bvnt2jPI2oFiAJB2bYSAN8H9HLIeG5i1mBFVV5kkB+Ox0n3eX
	haa4eRMcGKFDzYOy6VBE5KX/M0l+UN/3es07CVHb8l/suzodLzcVhRTb96MTabZyi+pDhu
	BQjknKDc/hgH6Mug14dIJYtzSz31D2f+I6uEwW9vK/8KrFnvymwcdVv7V0g9eIO2RM8sZw
	4mU5aeBctyw56ray1GX+7JMiG5W6qaCEo88WoG8IzFkZPaeP/1I1DSRc5g/05w==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 53AA9FF806;
	Wed, 14 Jun 2023 12:15:30 +0000 (UTC)
Message-ID: <122697e4-887c-7262-a359-e046914d80db@bootlin.com>
Date: Wed, 14 Jun 2023 14:15:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
 <895aca2cd720d61c4a1f5a5eabaf606c00117546.camel@linuxfoundation.org>
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <895aca2cd720d61c4a1f5a5eabaf606c00117546.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 12:15:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60300

On 6/14/23 12:31, Richard Purdie wrote:
> On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothoré via
> lists.yoctoproject.org wrote:
>> From: Alexis Lothoré <alexis.lothore@bootlin.com>
>>
>> This series is a follow-up for the 4.3_M1.rc1 regression report issue.
>>
>> It has been observed that the report is empty. This issue is linked to
>> configuration description in yocto-autobuilder-helper, and has been
>> identified through the following steps:
>> - empty report is supposed to be a comparison between yocto-4.2 (4.2.rc3)
>>   and 4.3_M1.rc1
>> - yocto-4.2 results are almost empty: we only find test results from Intel
>>   QA (pushed _after_ the AB build) and not the AB test results
>> - tests results are managed by send-qa-email.send-qa-email uses resulttool
>>   to systematically gather and store test results in local git directory
>> - however, it looks for basebranch/comparebranch to know if those results
>>   can be pushed onto git server, and those variables depend on config.json
>>   content
>> - yocto-4.2 (4.2.rc3) has been built on release branch mickledore
>>   (https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/5212)
>> - since mickledore is not yet described in config.json, send-qa-email
>>   considers it as a "work" branch (contrary to a "release" branch) and does
>>   not push test results
>>
>> As a consequence:
>> - first commit brings in python logger
>> - second commit adds a warning when such case happen, since we are able to
>>   detect it
>> - third fix actually adds mickledore as a release branch to properly store
>>   again test results
>>
>> There must be a more robust rework to do (because the issue will likely
>> happen on each major delivery), but I aimed for the quick and small fix to
>> quickly bring back tests results storage without breaking other things in
>> the process
>>
>> Alexis Lothoré (3):
>>   scripts/send-qa-email: use logger instead of raw prints
>>   scripts/send-qa-email: print warning when test results are not stored
>>   config.json: add mickledore as direct push branch for test results
> 
> Thanks for the analysis. I agree we need to somehow fix this properly.
> One solution might be to always push for poky if the branch name
> doesn't end with -next?

That might work indeed. If we are sure enough that no custom/feature branch will
be used in poky with send-qa-email (ie, only in poky-contrib), I can do the fix
this way
> 
> Since we have the release artefacts for the release, could we add the
> test results after the fact now?>
> Id' be interested to see the 4.3 M1 to 4.2 comparison rerun with that
> added.

I am not sure about where to find those artifacts for yocto-4.2 ? If you are
referring to https://autobuilder.yocto.io/pub/, yocto-4.2 has already been
removed from there. And if you are referring to the archived release on main
site
(https://downloads.yoctoproject.org/releases/yocto/yocto-4.2/poky-21790e71d55f417f27cd51fae9dd47549758d4a0.tar.bz2),
it does contain a single, 40 line testresults.json, so that's definitely not the
full AB tests results.

> 
> Cheers,
> 
> Richard
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60297): https://lists.yoctoproject.org/g/yocto/message/60297
> Mute This Topic: https://lists.yoctoproject.org/mt/99523809/7394887
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/12378809/7394887/1227806781/xyzzy [alexis.lothore@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


