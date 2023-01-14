Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C973BC46467
	for <webhook@archiver.kernel.org>; Sat, 14 Jan 2023 22:33:35 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.128155.1673735613200278877
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Jan 2023 14:33:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=glEMoAE6;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id bk15so2548760ejb.9
        for <yocto@lists.yoctoproject.org>; Sat, 14 Jan 2023 14:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k6wtsWZWzBqQXdqQC4LhAqa5Pw8TuH8IMvjHoQf2aBc=;
        b=glEMoAE6Yi4cbA46/bfYQGxisJpIDUU8ia9dVUOsOxgbdfxghPthrPdSnG/cLtSelF
         5uN7nSONO0ZyEH2dJzBmeO0oczSOiKzYoJgSe2GdkLikiRtLBw6sNcz3sSZhVLuktvti
         gNR5vtD9ZXOXMz7NrLa4SEOyobTWKR9KS3UBL/PddNepLjalXexbAw+sGn6+LalEjsuf
         zw4WArbjYxkHXjTNAOcNGDGrXnfpRu4SgdnsqziSWl/5JgWTuLALumN8+41VDpfZjfjt
         F0fVb4qIO43Jh64TBxKaeiKI6xCBL6BOuHPtycyRX6TCALSTTre9qsLUKtXAchloS97/
         OLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k6wtsWZWzBqQXdqQC4LhAqa5Pw8TuH8IMvjHoQf2aBc=;
        b=EnJb3bzO5RUhwSQguk9KXXwnIGD4xtPKJr7paXouasH1Y8rITwEgWtZgCESwuNHeWF
         jXSS251ZQ8L9kbwsSQkfrcSB61GN5dGSP4StfW68HGUljgS6KTsFdM74xybDyxOaZ4OY
         tq6k76fsyzjr5bGCA3MrIVYapM5jDqeuIIQghdxJyKVubycObKIBbPOqv+k1E2+EuWE5
         j5hOoftEfoX57XLzAQtBl6qG6lqPjS3RP9INjbtYbSfuZiDqIb6KhNVV9CMpGGx2q+Ta
         g8fjQCT1uKG1/6qMTXAeIHBFiMY07HWBR4yDj6DOBAWrQykTa4yOTcHlZ1cJ1GZ2tH8S
         6ixA==
X-Gm-Message-State: AFqh2krM5lsmHNnbKDr7bThR4mwUbldIVUEUJpxpUsd6H6jCGB+nis2P
	QsiyPhoyvq3rPzsky9zMRlc=
X-Google-Smtp-Source: AMrXdXtW9PQh4+j1/4Lw2OdK/KPSJ1hpYWRxKc82L638qOg8UtxLBmnXOrkAu2qaKTHN5RvCCdymzQ==
X-Received: by 2002:a17:906:850c:b0:7c0:f4f8:582a with SMTP id i12-20020a170906850c00b007c0f4f8582amr78094803ejx.52.1673735611325;
        Sat, 14 Jan 2023 14:33:31 -0800 (PST)
Received: from ?IPV6:2a02:a466:68ed:1:34f5:76a4:8ca:2c15? (2a02-a466-68ed-1-34f5-76a4-8ca-2c15.fixed6.kpn.net. [2a02:a466:68ed:1:34f5:76a4:8ca:2c15])
        by smtp.gmail.com with ESMTPSA id e3-20020a170906314300b0073ae9ba9ba8sm9964609eje.3.2023.01.14.14.33.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jan 2023 14:33:30 -0800 (PST)
Message-ID: <ff270ff7-1014-78eb-55e3-cc5c8ced050d@gmail.com>
Date: Sat, 14 Jan 2023 23:33:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
From: Ferry Toth <fntoth@gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>, contrib@zhengqiu.net
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 richard.purdie@linuxfoundation.org, martin.jansa@gmail.com,
 Trevor Gamblin <tvgamblin@gmail.com>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
 <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
 <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
 <4359a2c6-1e7d-3bc4-b1db-b8809a72adc6@gmail.com>
 <87492ec1-f053-90b4-f86a-70150dfc8b6a@windriver.com>
 <77731899-2e25-e55b-e7c9-0eec0a0c6ed1@gmail.com>
In-Reply-To: <77731899-2e25-e55b-e7c9-0eec0a0c6ed1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Jan 2023 22:33:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58988

Hi,

Op 10-01-2023 om 10:24 schreef Ferry Toth:
> Hi,
>
> On 10-01-2023 02:57, Randy MacLeod wrote:
>> Add Zheng.
>> Switch to Trevor's gmail since he might still be interested in this.
>>
>> On 2023-01-09 05:49, Ferry Toth via lists.yoctoproject.org wrote:
>>> Hi
>>>
>>> On 09-01-2023 11:39, Alexander Kanavin wrote:
>>>> On Sun, 8 Jan 2023 at 23:13, Ferry Toth <fntoth@gmail.com> wrote:
>>>>
>>>>> Now it works I'm not sure what to do. Richard marked the original 
>>>>> patch
>>>>> as WIP. Maybe it's not appropriate for including into poky? If so I
>>>>> wouldn't mind carrying it in meta-intel-edison.
>>>>>
>>>>> Or may be with a little work (from me) and a run on the CI servers we
>>>>> could make it go in?
>>>> I'd rather teach make/ninja upstream to watch memory consumption
>>>> and/or host pressure directly (e.g. similar to how it handles -l). And
>>>> offer any resulting patches to upstream first.
>>
As there is already a clone of ninja available with jobserver support 
available I added another patch to update to that version and make an 
intercept to actually pass the named pipe to ninja.

Find it here: https://github.com/htot/poky/commits/kirkstone

This makes both make and ninja threads running from a shared thread 
pool. As cmake relies on ninja recipies are covered as well.

I guess this takes care of the majority of recipes.

In my case this new patch shaves no more then 1 minutes from my image 
build time (1h46) as the recipes built using ninja are not consuming 
that much memory (like nodejs). I hope others will benefit more.

Todo: location of the pipe as mentioned by Richard

>> Zheng and I *started* on that for make over the Xmas holiday.
>> See the (poorly formatted) thread:
>>   Add support for limiting CPU pressure, contrib, 2022/12/20
>> in:
>> https://lists.gnu.org/archive/html/bug-make/2022-12/threads.html
>>
>> There were mixed reviews upstream with the maintainer, Paul Smith,
>> seeming to prefer that we investigate the job server approach and the 
>> current
>> load averaging. I'll happily try to find time to play with Ferry's 
>> job server work.
>>
> The work is actually Richard's. I only fixed what broke over time.
>> I've been thinking about the various workflows and as Richard said, 
>> it seems
>> that for many people who only do one build at a time, the job server 
>> and maybe
>> a little linker restraint, would be all that's needed. For activities 
>> such
>> as YP AB, we could teach the main job server to also look at 
>> /proc/pressure
>> as a way to limit the pool size we could make a meta-jobserver for 
>> those who don't
>> want/need to worry about non-compile tasks such as tests and build 
>> clean-up.
>>
>>
>> Note that cargo has the notion of a job server:
>>    https://github.com/rust-lang/cargo/issues/1744
>>    https://github.com/rust-lang/cargo/pull/4110
>>
>>
>> and ninja has an open issue:
>>    https://github.com/ninja-build/ninja/issues/1139
>> and an initial implementation:
>>    https://github.com/stefanb2/ninja/tree/topic-jobserver-fifo
>>
>> What other build tools are in need of regulation and/or job server 
>> patches?
>>
> What I read, gcc has already -flto=jobserver.
>
> Other (single threaded CPU intensive) might just be started from 
> jobclient?
>
>> ../Randy
>>
>>
>>>>
>>>> Alex
>>>
>>> Yeah, I'd rather teach the kernel to consider thrashing when 
>>> scheduling jobs. As is now any user process can slow down any other 
>>> users process and even the kernel itself to a standstill.
>>>
>>> But kernel developers consider those issues "orthogonal" (i.e. they 
>>> don't want to make the scheduler aware of io).
>>>
>>>
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#58943): 
>>> https://lists.yoctoproject.org/g/yocto/message/58943
>>> Mute This Topic: https://lists.yoctoproject.org/mt/82015730/3616765
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub 
>>> [randy.macleod@windriver.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
>>

