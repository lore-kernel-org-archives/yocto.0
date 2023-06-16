Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 223B3EB64D7
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 22:30:42 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.163.1686954633258310804
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jun 2023 15:30:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Vf0GY6TD;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexis.lothore@bootlin.com)
X-GND-Sasl: alexis.lothore@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686954631;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mu8KEaNmWCtsXMekSaU/bXeIKumvpLVd6nYfWLlFZM8=;
	b=Vf0GY6TD/vHz2ncmTWr7k3LoP0iMmi6H2N9o0VZO4/6223ZAfFVxsrYUYeqNuU1DT/ilz8
	qP3hINgPf9JoT0Fsi+nKujK2EKI72it0S3oK4k9G3qhPFGmjkkCibSWWguoB4TNHw056Ck
	KUjCbdYHnVXbJVRlkXKQFPXHQ4wusTTGMXYcrFlb5n2Fuy7r7shsn8PZAEaVx+K4KSKP5/
	8Ysto4hmOgEx5cqg0oSP2bnuOBUwv5IdHIo+uuLSUrTGdf0XisVMPPvj4uUkLd34BA2LQt
	LGM2CNX77ratrZfiW7ydeIYRae/25twzF9L6xVZHuCDHDSrYthF7AD+tCLCHIg==
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
X-GND-Sasl: alexis.lothore@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 87F201C0002;
	Fri, 16 Jun 2023 22:30:30 +0000 (UTC)
Message-ID: <c61f70da-6e1c-3afb-ff9e-ec95d11a725f@bootlin.com>
Date: Sat, 17 Jun 2023 00:30:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 0/3] fix test results
 storage for mickledore
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org,
 Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20230614085614.27951-1-alexis.lothore@bootlin.com>
 <dc91f7ad96c8bfdc64aafca6e412f827790def6a.camel@linuxfoundation.org>
 <6b8c3e9e-45b7-fcd2-5905-b8c136feacbd@bootlin.com>
 <f201c8c3-83bd-c716-b085-1f1cb2315fe8@bootlin.com>
 <8cb782ce103c73e52440793ccc66459627ef44e0.camel@linuxfoundation.org>
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <8cb782ce103c73e52440793ccc66459627ef44e0.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 22:30:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60330

On 6/16/23 18:30, Richard Purdie wrote:
> On Fri, 2023-06-16 at 16:58 +0200, Alexis Lothoré wrote:
>> On 6/15/23 22:34, Alexis Lothoré wrote:
>>> Hello Richard, Michael,
>>> On 6/15/23 15:41, Richard Purdie wrote:
>>>> On Wed, 2023-06-14 at 10:56 +0200, Alexis Lothoré via lists.yoctoproject.org wrote:
>>>>> From: Alexis Lothoré <alexis.lothore@bootlin.com>
>>>>>
>>>>> There must be a more robust rework to do (because the issue will likely
>>>>> happen on each major delivery), but I aimed for the quick and small fix to
>>>>> quickly bring back tests results storage without breaking other things in
>>>>> the process
>>>>
>>>> Thanks, I've merged this as it is a good first set of steps.
>>>>
>>>> As I mentioned, I think we should hardcode poky + "not ending with -
>>>> next" as the test, then we shouldn't run into this issue again.
>>>
>>> ACK, will do the fix
>>>>
>>>> I'd also like to retroactively push the test results for 4.2 since we
>>>> have them and should be able to merge them onto the branch. I'd then
>>>> like to see what the revised 4.3 M1 report looks like.
>>>
>>> I have started importing the archive kindly prepared by Michael in poky-contrib
>>> test-results repository, but I am struggling a bit regarding regression report
>>> generation with freshly imported result. I still have to confirm if it is the
>>> generated tag that is faulty or if it is a kind of an edge case in resulttool
>>
>> So, I have managed to generate the regression report locally (there's likely a
>> tag issue for older tests stored in test-results to be circumvented in
>> resulttool), and it is a bit disappointing. The report is 13MB large, and is
>> filled once again with false positive likely due to non static ptest names,
>> likely due to leaky build logs. Here's a sample
>>
>> ptestresult.gcc-g++-user.c-c++-common/Wbidi-chars-ranges.c  -std=gnu++14
>> expected multiline pattern lines 13-17 was found: "\s*/\*<U\+202E> \}
>> <U\+2066>if \(isAdmin\)<U\+2069> <U\+2066> begin admins only \*/[^\n\r]*\n
>> ~~~~~~~~                                ~~~~~~~~                    \^\n
>> \|                                       \|
>> \|[^\n\r]*\n       \|                                       \|
>>         end of bidirectional context[^\n\r]*\n       U\+202E \(RIGHT-TO-LEFT
>> OVERRIDE\)         U\+2066 \(LEFT-TO-RIGHT ISOLATE\)[^\n\r]*\n": PASS -> None
>>     ptestresult.gcc-g++-user.c-c++-common/Wbidi-chars-ranges.c  -std=gnu++14
>> expected multiline pattern lines 26-31 was found: "     /\* end admins only
>> <U\+202E> \{ <U\+2066>\*/[^\n\r]*\n                        ~~~~~~~~   ~~~~~~~~
>> \^\n                        \|          \|        \|[^\n\r]*\n
>>      \|          \|        end of bidirectional context[^\n\r]*\n
>>         \|          U\+2066 \(LEFT-TO-RIGHT ISOLATE\)[^\n\r]*\n
>>       U\+202E \(RIGHT-TO-LEFT OVERRIDE\)[^\n\r]*\n": PASS -> None
>>
>> Most of this noise is about gcc ptests, there is also a bit about python3 and
>> ltp. I manually trimmed gcc false positive to reach a reasonable size, here it is:
>> https://pastebin.com/rYZ3qYMK
> 
> Thanks for getting us the diff!
> 
> Going through the details there, most of it is "expected" due to
> changes in version of the components. I did wonder if we could somehow
> show that version change?
> 
> I'm starting to wonder if we should:
> 
> a) file two bugs for cleaning up the python3 and gcc test results
> b) summarise the python3 and gcc test results in the processing rather
> than printing in full if the differences exceed some threshold (40
> changes?)

I would say yes and yes, and I like the idea of setting a general threshold,
either an absolute one or as a percentage of total number of test cases in
current test.

> 
> Basically we need to make this report useful somehow, even if we have
> to exclude some data for now until we can better process it.

Absolutely. I will use this report as a base to bring a new batch of
improvements. I will also add the stats I have been talking about earlier, to
know for example if for a test case, the generated noise is really affecting the
whole test or is a drop in the sea
> 
> I'm open to other ideas...
> 
> Cheers,
> 
> Richard
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60328): https://lists.yoctoproject.org/g/yocto/message/60328
> Mute This Topic: https://lists.yoctoproject.org/mt/99523809/7394887
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/12378809/7394887/1227806781/xyzzy [alexis.lothore@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


