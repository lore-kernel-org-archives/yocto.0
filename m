Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A07FC4332F
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 02:30:58 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web10.5944.1667788248546576994
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 18:30:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=r/e9ocLD;
 spf=pass (domain: mistywest.com, ip: 209.85.210.181, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pf1-f181.google.com with SMTP id b185so9350865pfb.9
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 18:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zTVYFMp+86eq0/KIEtHLcfzUH/IY9Dh+0wPLqV2laWI=;
        b=r/e9ocLDs9NAHhzcjrk43ZnrHOeTk1w2GwwpE2SruLoF3aiSRkW9GfJ3xL3etjFAcz
         bBO2tKwZVO75YR6tFLo4u2dFUKoTRJYYuAv0zGbN92j5sCXFKb/QCyjTHjQrtIjzu4uA
         gscmJ5FamnOYHrVCJbr2ivj6GKqAhmmOAnm6yKmWXI0pcySlGuPSnvaUTJhMoEgG3UA3
         K6SDNd3X4v7rwxsbdT+IN+V/bZkv5D7dqxNrjjPugWEG3bPpmruNobNBScXCvCuTMm2N
         +RIStLnxloOZu7yBN0dBRAO2iPzMByVsfD3G0oEnVnaTz+WMwD35VPOKqf99SmF0Lc2r
         EvwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zTVYFMp+86eq0/KIEtHLcfzUH/IY9Dh+0wPLqV2laWI=;
        b=zN8XozquJPzVqIaCUElNN1qNch5r0qNdyE3fFHY8bT4jtwj2fu0zYBBhvlPTye27u4
         J4W0LzumgY9Tgx0M76UMq+VxEF1mD7G5bF8odc+C77ouHI8SYnlz74TMOmTcBwkEgeA3
         fTTwv+wwTYwlfJALCUiTw0VzjCr/1deJEemn9rd8py4l0h/373AJ+i8CuDOdJhlKFpNW
         iHxqxInE1Ip2CNc576zev104t2TvuH7vXrt0Sb7urp5c+KOjXiLdgJDel2hfM/zVYqe6
         ++WfGX9K7GYUv7uYiEbkALxUAu0XHQBSFlIQTokzOJsv0Pf1YbGaLdXjVnCbt1Luigcx
         M4ow==
X-Gm-Message-State: ACrzQf1GhNS8KLv5EAD2hoa0884gAOEB8Hd/5MmazVaX1Jg9mlSVLgjk
	69ZSz//xcj07vmYcZbl56TrMcA==
X-Google-Smtp-Source: AMsMyM7BzURPQZLgbnBI4aIKWdSGd4ayYK11xqEUa3VerUjg1/4aBWqmqrCh9LRCmU0DoBdknTJQfQ==
X-Received: by 2002:a63:914b:0:b0:46e:dbd5:ae15 with SMTP id l72-20020a63914b000000b0046edbd5ae15mr41339228pge.94.1667788247991;
        Sun, 06 Nov 2022 18:30:47 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id a20-20020a1709027d9400b0018862b7f8besm3750467plm.160.2022.11.06.18.30.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 18:30:47 -0800 (PST)
Message-ID: <5456d059-7709-efd8-80b9-abb57ef43c6e@mistywest.com>
Date: Sun, 6 Nov 2022 18:30:45 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
 <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <CAMKF1srJcmZsM+Gr=8nGrhTdnGJdgZii+-1vmqdyZQFuGDwo3Q@mail.gmail.com>
 <CAMKF1son6juOfbvEbcaXTb5uFyL2jB2hzgkTyXJFocRhgFtaCA@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CAMKF1son6juOfbvEbcaXTb5uFyL2jB2hzgkTyXJFocRhgFtaCA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 02:30:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58507


On 11/6/22 18:16, Khem Raj wrote:
> On Sun, Nov 6, 2022 at 5:00 PM Khem Raj <raj.khem@gmail.com> wrote:
>> On Sun, Nov 6, 2022 at 8:02 AM Mistyron <ron.eggler@mistywest.com> wrote:
>>> On 11/6/22 02:26, Anders Montonen wrote:
>>>> On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
>>>>> Hi,
>>>>>
>>>>> I'm working with dunfell and want to compile and install the drivers for the Laird LWB5+ module (available from https://github.com/LairdCP/meta-laird-cp).
>>>>> I have included the path to the layer in meta-laird-cp-pre-3.4 in my `bblayers.conf` and since I need the networkmanager and with information from their support team (don't trust the README apparently), I've added `lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in `sample-image-cp-lwb5plus.bb`. When I invoke `$ bitbake sample-image-cp-lwb5plus`, I keep getting:
>>>>>
>>>>>       | /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: undefined reference to `rl_echo_signal_char'
>>>>>
>>>>> even though I've added `readline` to the `DEPENDS` list. Why is this? I expected the `rl_echo_signal_char` dependency to be resolved, any hints?
>>>> Are you using meta-gplv2? That function doesn’t exist yet in the version of readline provided by that layer.
>>> I see, yes my project is using "meta-gplv2".
>>>
>>> Should removal of that layer help, or would you recommend that I update
>>> the readline version within it to the latest? (and provide an upstream
>>> patch to: https://github.com/lgirdk/meta-gplv2 ?
>>>
>> you can also look into replacing readline with editline and see if
>> this would work for your package needs. That will be one less package
>> needed from meta-gpl2
> I should have said libedit and not editline
libedit is the editline library under meta-devtools: 
https://git.yoctoproject.org/poky/plain/meta/recipes-devtools/libedit/
I'll give this a shot!
>
>>> Thanks!
>>> Ron
>>>
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> You automatically follow any topics you start or reply to.
>>> View/Reply Online (#58498): https://lists.yoctoproject.org/g/yocto/message/58498
>>> Mute This Topic: https://lists.yoctoproject.org/mt/94840876/1997914
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

