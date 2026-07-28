Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C762C53219
	for <webhook@archiver.kernel.org>; Tue, 28 Jul 2026 21:36:57 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1919.1785274611050151388
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2026 14:36:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=ancsKlw6;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6a051b73866so121844a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2026 14:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785274609; x=1785879409; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=OuQ/K9J0DU1L0YpT+MQYugaTq2wcs98QBFKRzpS9rf8=;
        b=ancsKlw6tLj0SWt6uZ6FnR5TDCdBZ1jvDRPxsEYrpwHd+cNxzI4tdC0/RON86REIIn
         dJwhdOIYFkAN1KG3bAO6Z1Jtihku7qfN1BKD1DIHQEkD6khqw4dCTLgv8/IBvZ2QiVKr
         AaZIn5VZcirkSbgq7waRx3auStDozXiS+bffr27EX8h0xel10oibXL1xIy2Fd1KWToux
         Tw9gFkTt64syGp+M4+yd/Rq5MwDvyl3kBY4R0ymoDZQob9ARrHFPU8F3saJUzui2iR6R
         tP3F1g+AOdt/hIm/0cZPXDX3FE2XuEfn+KWfF80D7y49c7wEpdgtuOQXvel6t4ERUeoi
         6Clw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785274609; x=1785879409;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OuQ/K9J0DU1L0YpT+MQYugaTq2wcs98QBFKRzpS9rf8=;
        b=dUfp2Bg5Pf6tyEKKD6kMZDqjjo05kjLRxeivl5dol3ebHmkwrkCvwAOOMhXq4F1Jw4
         BE56AmhKCTRWh+nTmLGy4eCe4Vx7/l12AvRe01E++2IYWD1gFRslNWn7jMkILUhFz+sL
         wT2Wo8vBZLpc4GyeqFNwbq+IBTaqUPD8NN5SglebTOpwXWeq44gA2qkVQQzvYVKwS7yL
         qb96e4NCME1kBfChcw6ziHRIGYdQ+vukZ2LQ1JaCdhzwg6gdQQOtlOY8nIqI3XoUyFAK
         aeXmuuI00icxuTAB57zhEwMb06wPTmxQM8SzxE/g5Di7IntdRn/SOZgfqrx4Iwib9mB4
         2UDQ==
X-Forwarded-Encrypted: i=1; AHgh+RqF0RGWsa7NcMMMzSr5wPO7T2U4tQX7o50rBAAmjY3Rwri5teAilBtg4kCLzWyczNPqnpa86w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwI3AXlFlU/Pq9avROVKik3jvFlF4XCWb0WXe88AGDWRcHKMxar
	QQMLnsVtwaDREwqXM258/iA5/w3XmwPlL1bsutfTxLe/SKJJjLaqa097
X-Gm-Gg: AR+sD10SRNe3rtrSTW/SG86lv3Xbk55NecSP5ampoIVqjVnnbyX6Q6cLUMoQogwWzHs
	cf294o8eB6k+NY8/jljCyOGjjV+sOtnOulVrHfOOGsaZpYbmYo6YGPQzmnn5ZCnI8zYWSTYbTLV
	KCgs2I3eG0LpGlecVaEHssFsjVhCPdZkU1zZLe/yUtn+YeuLkXeZDT0n5AjESBgCypdp2R9ZyTh
	JzoqRCMRQnroVrx7IyGHYgczgmjDYxBsT4w+Tot2+lMz531a5AWJPD0rnAY2pU5ovI3dSLsaCL3
	GZfF1+BloYJpde3UZXFnsfPJsWWvW3LDL1nEkDdsNfHuEDw+qPi/FHUs9/Gc0sTRELSn9Mnbn2r
	eLH7lKSnMpG+fOrFU8CAaLSzlRcH4AaFuvwR4tJZPXUPqrrzm/3BSzdWc4gwgwbHGkAnO/KrR/Y
	o52aPYyLpI920mm0ix8HI4oMLJM14iyIkMSRyP2rXLHB9SZ81riloQSRqhjYRgu9L1Kw3x4V0JX
	9dLuB7W8NK0Zsq9y5FeU5e8SdA=
X-Received: by 2002:a05:6402:388e:b0:6a0:1b50:bff9 with SMTP id 4fb4d7f45d1cf-6a034aca34fmr2270829a12.42.1785274609111;
        Tue, 28 Jul 2026 14:36:49 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:81a1:18b4:4f00:1fbb? (2a02-a466-68ed-1-81a1-18b4-4f00-1fbb.fixed6.kpn.net. [2a02:a466:68ed:1:81a1:18b4:4f00:1fbb])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a050be87bdsm164127a12.11.2026.07.28.14.36.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 14:36:48 -0700 (PDT)
Message-ID: <1ce91f9f-439c-402c-8f00-b4e7738403e7@gmail.com>
Date: Tue, 28 Jul 2026 23:36:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Limiting Yocto Memory Usage
To: Randy MacLeod <randy.macleod@windriver.com>,
 yocto@lists.yoctoproject.org, luis.merayo@ridgerun.com
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
 <2be84a80-e227-40cd-b63d-781dab0d9fb1@windriver.com>
 <4a525185-be6e-4993-be82-34e34054d823@gmail.com>
 <5de817e9-0765-4759-a982-d4090d539828@gmail.com>
 <d4ace895-a971-4e77-98ee-1aa067f3ff78@windriver.com>
Content-Language: en-US
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <d4ace895-a971-4e77-98ee-1aa067f3ff78@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2026 21:36:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66670

Hi,

Op 28-07-2026 om 23:20 schreef Randy MacLeod:
> On 2026-07-28 16:35, Ferry Toth via lists.yoctoproject.org wrote:
>> Hi
>>
>> Op 28-07-2026 om 09:30 schreef Ferry Toth:
>>> Hi,
>>>
>>> Op 14-07-2026 om 23:33 schreef Randy MacLeod:
>>>> Hi Luis,
>>>>
>>>> On 2026-07-10 17:26, Luis Merayo via lists.yoctoproject.org wrote:
>>>>> Hi,
>>>>>
>>>>> I would like to know if there is a way to limit Bitbake's Memory 
>>>>> usage to a specific percentage of the available RAM. For example, 
>>>>> can the Yocto build be limited to use a maximum of 70% of RAM?
>>>> Not without using a container to do the build.
>>>>>
>>>>> Could these three variables achieve this?
>>>>>
>>>>> BB_PRESSURE_MAX_CPU <https://docs.yoctoproject.org/dev/ref-manual/ 
>>>>> variables.html#term-BB_PRESSURE_MAX_CPU>, BB_PRESSURE_MAX_IO 
>>>>> <https:// 
>>>>> docs.yoctoproject.org/dev/ref-manual/variables.html#term- 
>>>>> BB_PRESSURE_MAX_IO> , BB_PRESSURE_MAX_MEMORY <https:// 
>>>>> docs.yoctoproject.org/dev/ref-manual/variables.html#term- 
>>>>> BB_PRESSURE_MAX_MEMORY>
>>>>>
>>>>> I see the range for these variables is from 1 to 1000000, so I 
>>>>> would like to understand if there is a way to specify their values 
>>>>> as a function of the available RAM.
>>>> No, there is only pressure when resources are over-commited so if 
>>>> you have free memory, there's no over-commit.
>>>> https://docs.kernel.org/accounting/psi.html
>>>>
>>>> That's the design intent of the bitbake PRESSURE regulation system.
>>>>
>>>> There are plans to work on additional build system regulation.
>>>>
>>>> The first idea is to use the jobserver design:
>>>> https://lore.kernel.org/openembedded-core/?q=GNU+AND+jobserver+ 
>>>> +AND+f%3Amacleod
>>>> and that would indirectly limit memory consumption since there 
>>>> would be fewer instances of gcc / rustc / ... running
>>>> at once.
>>>
>>> I do that, since 2 years or so. https://github.com/htot/meta-intel- 
>>> edison/commits/whinlatter/
>>>
>>> In principle you need to catch the call to make and ninja (to force 
>>> them to use the jobserver) and patch bitbake (see setup.sh) to act 
>>> as a jobserver.
>>>
>>> Now got it working on wrynose, still need to push that. Maybe later 
>>> today.With wrynose ninja has support for jobserver so doesn't need 
>>> patching, just a bbappend.
>>
>> Pushed my wrynose branch now: 
>> https://github.com/htot/meta-intel-edison/tree/wrynose
>
> Nice, are you interested in trying to get that or something based on 
> that work merged into oe-core/master ?
> I have been wanting to do for a while but other responsibilities keep 
> pushing it to the back burner or out of the kitchen completely !
>
Yeah that would be great. The patches were originally suggested by 
Richard Purdie. What spooks me a bit (based on earlier experience) is 
what additional stuff (self tests?) would be needed to get this accepted.
>
> ../Randy
>
>
>>
>>> With this you can limit the number of compile jobs. On my builds I 
>>> found g++ compiles are the heaviest, about 1GB RAM each. So, with 16 
>>> cores I need 16 GB.
>>> Separately I found linking nodejs takes 5 x 5GB (5 jobs linking with 
>>> LTO?). So, I limited that to just one (since both nodejs and nodejs- 
>>> native can be built at the same time).
>>>
>>> I'm not building rust so there may be other bottlenecks to resolve.
>>>
>>>> There's also an even less clear idea about being able to restrict 
>>>> the build by specifying memory usage.
>>>> That shouldn't be too hard to implement in bitbake in the same 
>>>> point where the pressure checks happen.
>>>> Are you interested in working on that ?
>>>>
>>>> There are of course other levers to pull to reduce CPU/memory 
>>>> consumption:
>>>> https://docs.yoctoproject.org/dev-manual/limiting-resources.html
>>>>
>>>> Have you tried them ?
>>>>
>>>>
>>>>>
>>>>> Regards,
>>>>>
>>>>> Luis
>>>>>
>>>>>
>>>>>
>>>>> File:RidgeRun.ai banner.png <https://ridgerun.ai/>
>>>>> This email and any attachments are intended for the sole use of 
>>>>> the named recipient(s) and contain(s) confidential information 
>>>>> that may be proprietary, privileged, or copyrighted under 
>>>>> applicable law. If you are not the intended recipient, do not 
>>>>> read, copy, or forward this email message or any attachments, 
>>>>> delete this email message and any attachments immediately.
>>>>>
>>>>>
>>>>>
>>>>
>>>> -- 
>>>> # Randy MacLeod
>>>> # Wind River Linux
>>>>
>>>
>>>
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#66668):https://lists.yoctoproject.org/g/yocto/message/66668
>> Mute This Topic:https://lists.yoctoproject.org/mt/120272854/3616765
>> Group Owner:yocto+owner@lists.yoctoproject.org
>> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>
> -- 
> # Randy MacLeod
> # Wind River Linux

