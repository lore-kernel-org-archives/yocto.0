Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9E2EC53219
	for <webhook@archiver.kernel.org>; Tue, 28 Jul 2026 07:30:52 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.6621.1785223852082841538
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2026 00:30:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=BZwm6YPZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-69c1220bd51so5322292a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2026 00:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785223850; x=1785828650; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Jrp28IDctIHHLwKy6FBxHgvXT7hvvD7KxwqlGIPSHrk=;
        b=BZwm6YPZt4u073B1NRirpVSTkMJA+QzelGiDnAIz1PIH2B0S7C2NOLZwBq0dtsc1TM
         MiVaaQVVox6+kmRNTVEuTYuJrowXBT0JLbXXwBf92HaL6qE6MqTN8rdErfzLuPMdhhxM
         Y19+qZehOoqKjvWEcDDQIQ6TSbg1Mva8DOi81IDVghjCvyF9umBcuI/Rjv6JcwVTkRqo
         nK0zhsgqTLdfI96U0esmcoHa724qJ1VpAi/DzBSATNjnoTF66kVs2u7Q/ob4eHXC89qj
         J2YjInswWzZ0245zFRF5EJXPds+Yk/KpDODvXWA4WMw4v75xRYGdvFSWhlMzCwf1Wcby
         uyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785223850; x=1785828650;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Jrp28IDctIHHLwKy6FBxHgvXT7hvvD7KxwqlGIPSHrk=;
        b=newD/j2APedEdxWIPBdsaIwgnFp11h1jDr1s+jmPvUPbAXFX3AJfTGRJkFrF4w2IvL
         ElRT7n998uzNuuIRFidhYpWF7qhluUqeVKS6QAWqDaR0s4Az/fTrAkgIF5mvoXFs+geY
         NjNi28hcG38FkhRAQHeJRplf/2mCcyi0s6Ftoh/LTaxQWJ1wyn8Ifm2t+lSn3aeEl4NW
         BVINTG9JDclT5csh6qv6/jQ5EoCoy4aA6FaCI66ath0IC+GjME0ol7TIOA7g8WKvA/dm
         Y+wpGuD05ZNDy8wOgvOLYo3a98aFiJLokIYQVT/qIZ1VKfXQGZgPOOh3y5y39Jxai1QO
         9D1g==
X-Forwarded-Encrypted: i=1; AHgh+RryNdBVkuiw/wBTzJkTm6Yuyll3tcWJBokEcT6ehuLoMBDnahZ8RwrwUFm9FzXysKeETnNn5Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxV/Ud3bj46ET8xyfJnf580BpWPejEvNP3ova59uvWQA1CIu31v
	JBhPP1Bs1dGdIJ1zxOqvHtXqwCH0wQfQoNdNr2DULMzzLdAgIcRuhp3b
X-Gm-Gg: AR+sD125npoMhOEcRfUnCJMsY7rO3F+cxsd4/iMJ+MdpiyDo7DdUCZI7jOcRZyLALxR
	k4/tUUHic3PRJKFHxAjsDN8wSaLO+ky0WjGsYn1UwRRKmwwrqnxbF0YJCPU8cr1vUvIg4k/kJn5
	O6snaoUvlD/Yx1G5/mk0iF9/w/nEWSeFj5csuS+dwe9lzhXKVCwLSC1Poh5XeqBymfdD2KiQmLn
	KEPJ1oKuK637BDQ/sTytHke1iSy57XrEC6NFaAYSXAEfqRlvn9Qgtv5gnyXiw8HSPsUU+TNr1yV
	9Y/6lRx2LWE2zYKoy1ZQcu3USPlDf2IqojTJ+01W06nQy+jKeRaK4gIiqvgKHkF6NBE/RoamHpH
	yg/BnfuLnzjXyZSSk4Kl6UhYwYpvOCaMCkA5TIIR1fqke98ZnbT48W7s+K7aODwlWDCNWRHT11T
	urcjGy1AJaBKGhHPd83Qa+/qXLjrlcbTnMLK7Bm0HO+itvtGWZ1WfIeKtdj3Lc9OZarrTLR5/A8
	oq0g4vOo9ZsayTqWVQCf77s
X-Received: by 2002:a17:907:6090:b0:c15:b4f3:6d25 with SMTP id a640c23a62f3a-c1f721bd9d3mr48757966b.19.1785223849903;
        Tue, 28 Jul 2026 00:30:49 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:6512:305e:ef4:be93? (2a02-a466-68ed-1-6512-305e-ef4-be93.fixed6.kpn.net. [2a02:a466:68ed:1:6512:305e:ef4:be93])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69fb5543ab7sm3524430a12.17.2026.07.28.00.30.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 00:30:49 -0700 (PDT)
Message-ID: <4a525185-be6e-4993-be82-34e34054d823@gmail.com>
Date: Tue, 28 Jul 2026 09:30:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Limiting Yocto Memory Usage
To: Randy MacLeod <randy.macleod@windriver.com>,
 yocto@lists.yoctoproject.org, luis.merayo@ridgerun.com
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
 <2be84a80-e227-40cd-b63d-781dab0d9fb1@windriver.com>
From: Ferry Toth <fntoth@gmail.com>
Content-Language: en-US
In-Reply-To: <2be84a80-e227-40cd-b63d-781dab0d9fb1@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2026 07:30:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66665

Hi,

Op 14-07-2026 om 23:33 schreef Randy MacLeod:
> Hi Luis,
> 
> On 2026-07-10 17:26, Luis Merayo via lists.yoctoproject.org wrote:
>> Hi,
>>
>> I would like to know if there is a way to limit Bitbake's Memory usage 
>> to a specific percentage of the available RAM. For example, can the 
>> Yocto build be limited to use a maximum of 70% of RAM?
> Not without using a container to do the build.
>>
>> Could these three variables achieve this?
>>
>> BB_PRESSURE_MAX_CPU <https://docs.yoctoproject.org/dev/ref-manual/ 
>> variables.html#term-BB_PRESSURE_MAX_CPU>, BB_PRESSURE_MAX_IO <https:// 
>> docs.yoctoproject.org/dev/ref-manual/variables.html#term- 
>> BB_PRESSURE_MAX_IO> , BB_PRESSURE_MAX_MEMORY <https:// 
>> docs.yoctoproject.org/dev/ref-manual/variables.html#term- 
>> BB_PRESSURE_MAX_MEMORY>
>>
>> I see the range for these variables is from 1 to 1000000, so I would 
>> like to understand if there is a way to specify their values as a 
>> function of the available RAM.
> No, there is only pressure when resources are over-commited so if you 
> have free memory, there's no over-commit.
> https://docs.kernel.org/accounting/psi.html
> 
> That's the design intent of the bitbake PRESSURE regulation system.
> 
> There are plans to work on additional build system regulation.
> 
> The first idea is to use the jobserver design:
> https://lore.kernel.org/openembedded-core/?q=GNU+AND+jobserver+ 
> +AND+f%3Amacleod
> and that would indirectly limit memory consumption since there would be 
> fewer instances of gcc / rustc / ... running
> at once.

I do that, since 2 years or so. 
https://github.com/htot/meta-intel-edison/commits/whinlatter/

In principle you need to catch the call to make and ninja (to force them 
to use the jobserver) and patch bitbake (see setup.sh) to act as a 
jobserver.

Now got it working on wrynose, still need to push that. Maybe later 
today.With wrynose ninja has support for jobserver so doesn't need 
patching, just a bbappend.

With this you can limit the number of compile jobs. On my builds I found 
g++ compiles are the heaviest, about 1GB RAM each. So, with 16 cores I 
need 16 GB.
Separately I found linking nodejs takes 5 x 5GB (5 jobs linking with 
LTO?). So, I limited that to just one (since both nodejs and 
nodejs-native can be built at the same time).

I'm not building rust so there may be other bottlenecks to resolve.

> There's also an even less clear idea about being able to restrict the 
> build by specifying memory usage.
> That shouldn't be too hard to implement in bitbake in the same point 
> where the pressure checks happen.
> Are you interested in working on that ?
> 
> There are of course other levers to pull to reduce CPU/memory consumption:
> https://docs.yoctoproject.org/dev-manual/limiting-resources.html
> 
> Have you tried them ?
> 
> 
>>
>> Regards,
>>
>> Luis
>>
>>
>>
>> File:RidgeRun.ai banner.png <https://ridgerun.ai/>
>> This email and any attachments are intended for the sole use of the 
>> named recipient(s) and contain(s) confidential information that may be 
>> proprietary, privileged, or copyrighted under applicable law. If you 
>> are not the intended recipient, do not read, copy, or forward this 
>> email message or any attachments, delete this email message and any 
>> attachments immediately.
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#66637):https://lists.yoctoproject.org/g/yocto/message/66637
>> Mute This Topic:https://lists.yoctoproject.org/mt/120213825/3616765
>> Group Owner:yocto+owner@lists.yoctoproject.org
>> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
> 
> -- 
> # Randy MacLeod
> # Wind River Linux
> 


