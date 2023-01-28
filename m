Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C65C27C76
	for <webhook@archiver.kernel.org>; Sat, 28 Jan 2023 15:21:56 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web10.15398.1674919308521890431
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 07:21:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=D2GFg9QQ;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id t14-20020a4ad0ae000000b004f51f61de9fso908670oor.13
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 07:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VfK/wflAJ8Yo9shVHmR/bYn8bNdflXBMJcVcmEVxLlE=;
        b=D2GFg9QQcTIxjWDgaljDFzD3Qc6482i0xGWV7uRTp1ZUPYG+8edie5WnbexymKQQz8
         ApgvLpJVONT9nWPuUz6JxLjfJndj9LkMHBuK0gdGOozysOnJcv9+o3VrAB40zxabMLQB
         6BkgSSdj9vrgPIRcPPiPPUZCkn35kwj1PeAHY6m8JolhsLuvFHdPgOT7ASSmQltjcEiD
         o5oRGW0oNB9EGSsi19zYBmfEGIp+Fyfz+LGUBYw3T6SSCZ96+VZHjmnkhWK2iGCkLkkv
         AVlu7fwK2fRsFd8T94Qi7D8NJ61yzLL6a7MGNbE2cUfU0fMkjDix2DFhRNYwkhBV2DRF
         5neA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VfK/wflAJ8Yo9shVHmR/bYn8bNdflXBMJcVcmEVxLlE=;
        b=JdRSC4NurugyfhWKGn2WPJOxwijlejEol97PpoXKQYUP0xUMAQnV8XhxVRBvxFLb+Z
         78NqqcyJzlWKVFdivago1xuCDt4DsSlyoP3xURPMzWESboSsmm/6cQNXL7KaD7Cdb5bZ
         gY2R8LcxJf6MABCHN+zNOOOpfki1GGfjiv2gRzkiEJlOtW7upZBFzSJxK7LZHEQwogG5
         PPiagapXkHu/fzf+utVQL4Zq7aydIlOrqiP831waBAq2/xVlyl+5Nyf0yP7gk3hMsZlO
         /4cYVIxDtKsPACqAl062LFZtsOEWTOIsca+uTbV2MUJdhS4Ks+fUNgM/Y62OS4kLWpZE
         gxvQ==
X-Gm-Message-State: AFqh2kpU/qbLpqvMrAqb7wU34xg5zL+kJo4B/kty5wAOJk00y+1p5O9c
	NKbxXz0TOxYZXVvo94rXW5w=
X-Google-Smtp-Source: AMrXdXtlXiDm+9PULPI+fDvm+09dnafBZv5F/xysXYbStNslSeM1qUyKPvl41TUdFgcpoNXEvzuHdw==
X-Received: by 2002:a4a:5247:0:b0:4a5:4335:100c with SMTP id d68-20020a4a5247000000b004a54335100cmr21457315oob.7.1674919307808;
        Sat, 28 Jan 2023 07:21:47 -0800 (PST)
Received: from ?IPV6:2600:1700:9190:ba10:f329:fc42:2781:4396? ([2600:1700:9190:ba10:f329:fc42:2781:4396])
        by smtp.gmail.com with ESMTPSA id p2-20020a056820044200b0051746c26921sm681305oou.47.2023.01.28.07.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Jan 2023 07:21:47 -0800 (PST)
Message-ID: <9226da3b-a46c-cec6-7913-b29b9def1a37@gmail.com>
Date: Sat, 28 Jan 2023 10:21:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [PATCH] samhain: rework due to changed oe cache handling
Content-Language: en-US
To: Max Krummenacher <max.oss.09@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: Max Krummenacher <max.krummenacher@toradex.com>,
 Martin Jansa <martin.jansa@gmail.com>
References: <20230127123047.207925-1-max.oss.09@gmail.com>
 <6b728be4c46a8cf1c757bf766732ce18683f5ce7.camel@linuxfoundation.org>
 <0def27f27e7f868ffc635086ec05c41479bd3fc5.camel@gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <0def27f27e7f868ffc635086ec05c41479bd3fc5.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 15:21:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59091

Max,

On 1/27/23 3:58 PM, Max Krummenacher wrote:
> Am Freitag, dem 27.01.2023 um 16:14 +0000 schrieb Richard Purdie:
>> On Fri, 2023-01-27 at 13:30 +0100, Max Krummenacher wrote:
>>> From: Max Krummenacher <max.krummenacher@toradex.com>
>>>
>>> OE-Core changed the cache handling which made the use of ${BPN} fail.
>>>
>>>> Parsing recipes...WARNING: .../samhain-standalone.bb: Exception during build_dependencies for
>>>> do_configure
>>>> WARNING: .../samhain-standalone.bb: Error during finalise of .../samhain-standalone.bb
>>>> ERROR: ExpansionError during parsing .../samhain-standalone.bb
>>>> Traceback (most recent call last):
>>>>    File "Var <MODE_NAME>", line 1, in <module>
>>>> bb.data_smart.ExpansionError: Failure expanding variable MODE_NAME, expression was
>>>> ${@d.getVar('BPN').split('-')[1]} which triggered exception IndexError: list index out of
>>>> range
>>>> The variable dependency chain for the failure is: MODE_NAME -> SAMHAIN_MODE -> do_configure
>>> Simplify the setting of MODE_NAME and SAMHAIN_MODE by moving them from
>>> the inc file to the recipe files where we know their values.
>>>
>>> Relevant commits to produce the error:
>>> bitbake:
>>> ee89ade5 cache/codeparser: Switch to a new BB_CACHEDIR variable for cache location
>>> oe-core:
>>> 7c15e03dd3 bitbake.conf: Add BB_HASH_CODEPARSER_VALS
>>>
>>> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
>>> ---
>>>   recipes-ids/samhain/samhain-client.bb     | 3 +++
>>>   recipes-ids/samhain/samhain-server.bb     | 3 +++
>>>   recipes-ids/samhain/samhain-standalone.bb | 3 +++
>>>   recipes-ids/samhain/samhain.inc           | 8 --------
>>>   4 files changed, 9 insertions(+), 8 deletions(-)
>> This is the second report I've seen of this. I'm wondering about
>> changing the default PN dummy value in bitbake.conf to include a "-"...
>>
>> Cheers,
>>
>> Richard
> Richards patch [1] fixes the parsing error too. So we can drop this
> one unless the simpler logic is worth taking it.
>
> [1] https://lore.kernel.org/all/20230127163308.2649311-1-richard.purdie@linuxfoundation.org/

I am going the simpler logic so I will be taking your patch.

thanks,
Armin
>
> Thanks Richard.
>
> Regards
> Max
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59087): https://lists.yoctoproject.org/g/yocto/message/59087
> Mute This Topic: https://lists.yoctoproject.org/mt/96564509/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


