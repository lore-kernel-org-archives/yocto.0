Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18DC54F51
	for <webhook@archiver.kernel.org>; Tue, 28 Jul 2026 20:35:27 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.489.1785270921511635355
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2026 13:35:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=FdxgrsYD;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-69ffb48d599so297424a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2026 13:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785270920; x=1785875720; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:to:from:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tElLSuCcopjCgfs5YfXuH+f1VKFYeaGdQwhFKc5rOLk=;
        b=FdxgrsYDcSPWXcJoIAVsObSjPMGM3xhgeqz5BOYEMVUPJk+PRhYVNgHBwyUxW13x3G
         NYNnhj3c03hn3NZ/NePjEmoPUoF9mIs74l6A/TK7ep2x5uch+OWxanq5N0CgV7t1mddu
         j2bUFfz50ISbwOjRkYCdVLesl7AOHYC5x2AJ8YFHvrBOCzPO8Rr4kwk5nuGmOrOAKrIn
         cB8rihCSK1j++gHW/xyapcQfUOl0YoWOPHZn1rrpayy4XdM3hFiaWGh4wXH/mUgJeTDP
         FDoukkJeZhYfgz0/VDGDkO3CKATfEbJKG4SpKwuNdDSzsooGddnwPkPHhGsj44DPPZ+W
         ZBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785270920; x=1785875720;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=tElLSuCcopjCgfs5YfXuH+f1VKFYeaGdQwhFKc5rOLk=;
        b=fBSmnd1+LPD4nJctXL3Wuqb/zVphbd1WDfG01nZpUX0LcLpLOp7DPaYwiESyfvIpRP
         CriOJDTvSk0krtrXRPN961kMjHUjCht7kjSFBdDeCu/8S502wZMefPKxTDpcb6WnfjPi
         SHB0JWPdVEk6wZjTBQXLU9G0yXVNa0Evy6A8O1+n2CX1z52zmPjO+soGZwUtXvo6rx1J
         2fslJnSayCFfub98T+TekSqb0I8CDm6itZKHmPvmWIxVoOYW6qoH4UfujkdkpDFhtjbJ
         VglbBWA5tHQOJ0kHDjq5QmDrQkiDeraNt1lM3XPb4MihqVyypUWpq/EYfPS7rS17zflE
         e20A==
X-Forwarded-Encrypted: i=1; AHgh+Ro5qR968wGKfBEalfS3yLJMjEbSV7avrGEYR+MPQ8mo5PmMN3zUW50cAy4fKhswJcbtLc9ahw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx4WarIRx1e9ps0eW5Ji3FlD+yvWuskF36VfWlG0DHv6mKF/sG5
	GBmNt4M9c9AIbITIA+iufbj39MkO2wh1wQPZ4UIlFBQ4RPi2JWy719m4
X-Gm-Gg: AR+sD11VEM9ad+0zyzgNq9JHIpswWQrnx2qbU1jpZQkDsKM86y3F5VZgw61hVope/U+
	ib3/OfuO9gfbpP+sQ2RZ9d+rTsKmBFGR0HjIXd6LI5uXepLlBBIodRJbikvyed2v70bYQRAOHcu
	J8BvHnZKYmUx40+qoF4k/dcdvcJ0PpOVmoCA+FZGEGpnat/UTPAYa+AktvgTtXbAPrEeFoihV7K
	9l6YbKJHXU/nTu9X3AtV42JoxWcfxcnTr8MbgEjNZrugH5SnlNrKOane7HMRJKVq2ZyG5UcMRpD
	f1xBpOGXsQ3AGPk2+oYM8N4WWjlhRdO/G0EwpFU4mfdr8Jzq0Fby0fWf9+rlyhcukGujnlbAuIj
	XrXqWP7vSMWV9GcoIiSmVsj/faZCSP8ZsRvP4EOpC4w0G2VXYImUsv6x7/ae5KKST3heJdLsbjJ
	jQX6lABla9O+1m17BB+dzuWO8LPlLs74Q/l29NljlBDRsvpBDF6k4hhhy1gG5a1CX8DjF3gT6ga
	TAIU34xqFGMUdIVrGeP4mFgUbQ=
X-Received: by 2002:a17:906:9fd1:b0:c1c:2b61:b9da with SMTP id a640c23a62f3a-c1f7212f6c6mr211307366b.34.1785270919493;
        Tue, 28 Jul 2026 13:35:19 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:81a1:18b4:4f00:1fbb? (2a02-a466-68ed-1-81a1-18b4-4f00-1fbb.fixed6.kpn.net. [2a02:a466:68ed:1:81a1:18b4:4f00:1fbb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1f83c688cbsm27648366b.12.2026.07.28.13.35.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 13:35:19 -0700 (PDT)
Message-ID: <5de817e9-0765-4759-a982-d4090d539828@gmail.com>
Date: Tue, 28 Jul 2026 22:35:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Limiting Yocto Memory Usage
From: Ferry Toth <fntoth@gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>,
 yocto@lists.yoctoproject.org, luis.merayo@ridgerun.com
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
 <2be84a80-e227-40cd-b63d-781dab0d9fb1@windriver.com>
 <4a525185-be6e-4993-be82-34e34054d823@gmail.com>
Content-Language: en-US
In-Reply-To: <4a525185-be6e-4993-be82-34e34054d823@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2026 20:35:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66668

Hi

Op 28-07-2026 om 09:30 schreef Ferry Toth:
> Hi,
> 
> Op 14-07-2026 om 23:33 schreef Randy MacLeod:
>> Hi Luis,
>>
>> On 2026-07-10 17:26, Luis Merayo via lists.yoctoproject.org wrote:
>>> Hi,
>>>
>>> I would like to know if there is a way to limit Bitbake's Memory 
>>> usage to a specific percentage of the available RAM. For example, can 
>>> the Yocto build be limited to use a maximum of 70% of RAM?
>> Not without using a container to do the build.
>>>
>>> Could these three variables achieve this?
>>>
>>> BB_PRESSURE_MAX_CPU <https://docs.yoctoproject.org/dev/ref-manual/ 
>>> variables.html#term-BB_PRESSURE_MAX_CPU>, BB_PRESSURE_MAX_IO 
>>> <https:// docs.yoctoproject.org/dev/ref-manual/variables.html#term- 
>>> BB_PRESSURE_MAX_IO> , BB_PRESSURE_MAX_MEMORY <https:// 
>>> docs.yoctoproject.org/dev/ref-manual/variables.html#term- 
>>> BB_PRESSURE_MAX_MEMORY>
>>>
>>> I see the range for these variables is from 1 to 1000000, so I would 
>>> like to understand if there is a way to specify their values as a 
>>> function of the available RAM.
>> No, there is only pressure when resources are over-commited so if you 
>> have free memory, there's no over-commit.
>> https://docs.kernel.org/accounting/psi.html
>>
>> That's the design intent of the bitbake PRESSURE regulation system.
>>
>> There are plans to work on additional build system regulation.
>>
>> The first idea is to use the jobserver design:
>> https://lore.kernel.org/openembedded-core/?q=GNU+AND+jobserver+ 
>> +AND+f%3Amacleod
>> and that would indirectly limit memory consumption since there would 
>> be fewer instances of gcc / rustc / ... running
>> at once.
> 
> I do that, since 2 years or so. https://github.com/htot/meta-intel- 
> edison/commits/whinlatter/
> 
> In principle you need to catch the call to make and ninja (to force them 
> to use the jobserver) and patch bitbake (see setup.sh) to act as a 
> jobserver.
> 
> Now got it working on wrynose, still need to push that. Maybe later 
> today.With wrynose ninja has support for jobserver so doesn't need 
> patching, just a bbappend.

Pushed my wrynose branch now: 
https://github.com/htot/meta-intel-edison/tree/wrynose

> With this you can limit the number of compile jobs. On my builds I found 
> g++ compiles are the heaviest, about 1GB RAM each. So, with 16 cores I 
> need 16 GB.
> Separately I found linking nodejs takes 5 x 5GB (5 jobs linking with 
> LTO?). So, I limited that to just one (since both nodejs and nodejs- 
> native can be built at the same time).
> 
> I'm not building rust so there may be other bottlenecks to resolve.
> 
>> There's also an even less clear idea about being able to restrict the 
>> build by specifying memory usage.
>> That shouldn't be too hard to implement in bitbake in the same point 
>> where the pressure checks happen.
>> Are you interested in working on that ?
>>
>> There are of course other levers to pull to reduce CPU/memory 
>> consumption:
>> https://docs.yoctoproject.org/dev-manual/limiting-resources.html
>>
>> Have you tried them ?
>>
>>
>>>
>>> Regards,
>>>
>>> Luis
>>>
>>>
>>>
>>> File:RidgeRun.ai banner.png <https://ridgerun.ai/>
>>> This email and any attachments are intended for the sole use of the 
>>> named recipient(s) and contain(s) confidential information that may 
>>> be proprietary, privileged, or copyrighted under applicable law. If 
>>> you are not the intended recipient, do not read, copy, or forward 
>>> this email message or any attachments, delete this email message and 
>>> any attachments immediately.
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#66637):https://lists.yoctoproject.org/g/yocto/ 
>>> message/66637
>>> Mute This Topic:https://lists.yoctoproject.org/mt/120213825/3616765
>>> Group Owner:yocto+owner@lists.yoctoproject.org
>>> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub 
>>> [randy.macleod@windriver.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
>>
>> -- 
>> # Randy MacLeod
>> # Wind River Linux
>>
> 
> 


