Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 441E2C004D4
	for <webhook@archiver.kernel.org>; Thu, 19 Jan 2023 19:59:13 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.56009.1674158345172277660
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jan 2023 11:59:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=J386qowQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id mg12so8595261ejc.5
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 11:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R8QtEZTTUGpywu0WgW82hEQRvbGDvfVU98SmRyQgbQo=;
        b=J386qowQwO6OPi1zTjKKRSu/6TBA45ZCBUmxsA/w20BNcX+HZ6w29th65a+ogipi+i
         K6e1pAEjt8K/PaT1L2K5zQgDeinbU/S2B0SPvFu9i+py/3g8Jjw5S5Rt6mch8rAEqlu3
         j2w1JoYfLIyuG2FK4rrFCYhUbf0NHiBXVtdaWLan0YFFdok2wXlH8t05ouv5n4Av2UXZ
         b9wWHIcZYTwm9Z4lb/mrXj8iPbcYJpR9Lv1H1BYkWqWr2NaTjQlKCzAc9GF/LsVsxYRC
         oQj1TINKYZqXdIz1VtEb6vSqynJZLhveEPUvHk1Jc9O9aMYDkt1P6iQOIZHTC+w2Ke3a
         lp+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R8QtEZTTUGpywu0WgW82hEQRvbGDvfVU98SmRyQgbQo=;
        b=y3gEU/eXqQuXnqq4tOKUvAKuwPIMecfZ8QBGcreOc0UocPW+9S5eqZTBwX29hEfrNT
         qXqhzBMVetU9YW/UUcxTqZyqdFgnIL5mYt2U0CW2hqBiRNgeA5kD1FHkClUTKZDRuQZ4
         bFUMSxoeQ/0qGeRJvZyYkD93tLl9vvlxIyUm9vUy6XFp4sJgygcgTQbuE8uu2J+5Jg6C
         JNNIN8VwoV1Ypj9t8/qrzpQPH3rkkpYQC4awVOVEc/GxCaaFSIqLeWluFmtVoooBaP2m
         oESnekbrfzzBu26o8yzYVwQwGm1aRoucwwWmVbJhWJXrpAfpG8vaIse0AxPT1ONdmakU
         Ow3Q==
X-Gm-Message-State: AFqh2koPmdDoDLaR74E2Z8xs3PwfSIxqmxY2Jda2da1+A8+5HKjLfpSZ
	/DZdffzWW/m38UIoFFu+vHE=
X-Google-Smtp-Source: AMrXdXtYr3Bf47j3KzmKuFeVKnoMArmm49BcmlMewbXDbkt9xWZqRraMrD2DBDDBf+o8y8syhY/DOg==
X-Received: by 2002:a17:906:5789:b0:871:3919:9a5a with SMTP id k9-20020a170906578900b0087139199a5amr13816945ejq.49.1674158343610;
        Thu, 19 Jan 2023 11:59:03 -0800 (PST)
Received: from ?IPV6:2a02:a466:68ed:1:393b:6bec:4304:ab3d? (2a02-a466-68ed-1-393b-6bec-4304-ab3d.fixed6.kpn.net. [2a02:a466:68ed:1:393b:6bec:4304:ab3d])
        by smtp.gmail.com with ESMTPSA id ab15-20020a170907340f00b0087329ff591esm4116179ejc.132.2023.01.19.11.59.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 11:59:03 -0800 (PST)
Message-ID: <debc7e0e-aa1a-4c1e-e15a-4338a748a8f5@gmail.com>
Date: Thu, 19 Jan 2023 20:59:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
From: Ferry Toth <fntoth@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 trevor.gamblin@windriver.com, martin.jansa@gmail.com
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
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
 <1727d025c543dc13f0d067e072ade145c98c65f5.camel@linuxfoundation.org>
 <6a074c58-21d2-422b-c94f-e05a3669c692@gmail.com>
In-Reply-To: <6a074c58-21d2-422b-c94f-e05a3669c692@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 19:59:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59023

Hi

Op 09-01-2023 om 11:54 schreef Ferry Toth:
>
> Hi
>
> On 09-01-2023 11:43, Richard Purdie wrote:
>> On Mon, 2023-01-09 at 11:39 +0100, Alexander Kanavin wrote:
>>> On Sun, 8 Jan 2023 at 23:13, Ferry Toth<fntoth@gmail.com>  wrote:
>>>
>>>> Now it works I'm not sure what to do. Richard marked the original patch
>>>> as WIP. Maybe it's not appropriate for including into poky? If so I
>>>> wouldn't mind carrying it in meta-intel-edison.
>>>>
>>>> Or may be with a little work (from me) and a run on the CI servers we
>>>> could make it go in?
>>> I'd rather teach make/ninja upstream to watch memory consumption
>>> and/or host pressure directly (e.g. similar to how it handles -l). And
>>> offer any resulting patches to upstream first.
>> Whilst teaching make/ninja about pressure is probably a nice idea, I
>> think there is a use case for sharing the job pool between bitbake
>> tasks rather than having a job pool per task since that scales badly.
>>
>> One issue that comes to mind with the patch is that it is currently
>> writing into /tmp/ and we likely need to work out a better location for
>> the job server fifo. Currently that would break things on the
>> autobuilder as there are multiple builds on a given host.
>
> Ha, I didn't consider multiple bitbakes running simultaneously.
>
> Maybe the location /tmp is fine but we would need a unique (random?) 
> filename instead of makefifo?
>
2nd thought, this would be wrong as we can't cleanup automatically after 
abnormal termination. What would be a good location?

TMPDIR?

>> Cheers,
>>
>> Richard
>>
>>

