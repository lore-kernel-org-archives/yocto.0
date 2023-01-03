Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BC1CC46467
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 15:12:12 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.66014.1672758731506387810
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 07:12:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LNj9ft7Q;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id fy8so10486723ejc.13
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 07:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F0DlmpfGywrUrpK7Vk280R0gL2JlA7iGfV8JJvzAtKw=;
        b=LNj9ft7Qes0e218N2ZtVVWydWGm7JQL9CV6rQgCyvS8OolmkiEwHhj+Wi5XfHz0lYU
         Of6g27cvWUQTq/S/jeWrYmsl5aDDwJEWNjp3oSb/QHIdOwtL+BYlcx/jBZSgmeMKQU+B
         2fORhYGwuQYlIImFxklIcFcJsiOI8vnJW4N4L24D8BPVy0/5u+P3gMCN+v+DFVkPZpN5
         ps3h5OlcARtEpQc4Ll0NrYhQvvjZtT4q7eoOzDmuNX0HiIJlrJGGvZ3ldljLDWod+bYq
         tlpO6klVKIcE3z/t/hU630AeGETz2fhobvXFMNbP5IsBs1twkgWinyR/893dzV6MQTCK
         JBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F0DlmpfGywrUrpK7Vk280R0gL2JlA7iGfV8JJvzAtKw=;
        b=dK55elmsuW5zmKBfxJaIDPwn+VhHsiu1JP10unQGni+lsbDeh/rZl0u/RQB9PuHEA4
         Fo8/PEoUcbIvS09ZTMhzzq+TYD0PQ2DzklIq1EFBxO8qrylMNF3z6Ev7IumVG8+bz5nb
         EaX9Uoni2u2lTJP9HoEfEYAo3Ua7Iq+zAo8yK+UmdYLNzpDMjD3htK9cju8LURpmi60q
         l6edoXg+Ulay4MvCkTGyrlnrTzpgbEqLYKVRXB96rLXP5ibHBNBRRQ7/qZQTB396vIGh
         h2xnXqrOq6OBdwQLQr3zXI0aj9OuCsTPhUzqwDFNuVShofuaDwSZ4mF2FQ+nXbEfx52K
         u79g==
X-Gm-Message-State: AFqh2kpCh/dhK5s+IP3mgF+LDMP6WP86GcBlvEYDe8agm0+PkA1mfmHn
	31e+WLbI9zeBdbzw9sGlQdM=
X-Google-Smtp-Source: AMrXdXtPHYPA9ePBHjXfOQG4vmCVlQMTu9CYgWnnFa0fyGj6SLWefmd0BTZeAZkDeoLZIuXkNjc7BA==
X-Received: by 2002:a17:907:c28f:b0:7c1:eb:b2a7 with SMTP id tk15-20020a170907c28f00b007c100ebb2a7mr2571731ejc.13.1672758729782;
        Tue, 03 Jan 2023 07:12:09 -0800 (PST)
Received: from ?IPV6:2a02:a466:68ed:1:c188:ece5:97bb:2332? (2a02-a466-68ed-1-c188-ece5-97bb-2332.fixed6.kpn.net. [2a02:a466:68ed:1:c188:ece5:97bb:2332])
        by smtp.gmail.com with ESMTPSA id b2-20020a1709063ca200b007bd1ef2cccasm14003076ejh.48.2023.01.03.07.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 07:12:09 -0800 (PST)
Message-ID: <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
Date: Tue, 3 Jan 2023 16:12:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
To: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 15:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58903

Hi Janne,

Op 03-01-2023 om 16:03 schreef Janne Kiiskila:
> Hei,
>
> Is not the easiest solution to build the actual full build in steps, rather than build the whole thing?
> So, instead of doing a

Sure, that is easy enough. Setting PARALLEL_MAKE is easy enough too.

I was hoping to find a fundamental solution.

> full bitbake <image>
>
> Do
>
> bitbake nodejs
> bitbake binutils
> bitbake rust (if you happen to need it)
Yeah, building rust is a resource hog too. I didn't build that for a 
long time.
> and only after that do
>
> bitbake <image>
>
> That way you can control the memory load and build it piecemeal to avoid out-of-memory situations.
>
> For cheapness of memory - it's not always that straight forward,
> a) some cloud build machines might go insanely up in price, if you add memory (it usually then adds also cores) OR
> b) some laptops etc. might simply not have any memory slots available, so you can't expand even if you want.

Yes, and I note that many people trying to build my image 
(meta-intel-edison) do so from a virtual machine as they only have a 
windows host.

And then there are even more limitations.

> Best Regards,
>
>
> Janne Kiiskilä
>
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf Of Ferry Toth via lists.yoctoproject.org
> Sent: tiistai 3. tammikuuta 2023 16.41
> To: Quentin Schulz <quentin.schulz@theobroma-systems.com>; Alexander Kanavin <alex.kanavin@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] bitbake controlling memory use
>
> Hi Quentin,
>
> Op 03-01-2023 om 15:36 schreef Quentin Schulz:
>> Hi Ferry,
>>
>> On 1/3/23 15:29, Ferry Toth wrote:
>>> Hi Alex,
>>>
>>> Op 03-01-2023 om 15:18 schreef Alexander Kanavin:
>>>> I have to note that even the most expensive 16 Gb RAM module is less
>>>> than 100 Euro, and can be obtained for half that much. Surely you
>>>> value your time more than that?
>>> Of course. And if I didn't I could reduce the number of `PARALLEL_MAKE`.
>>>
>>> But I have also seen bitbake attempting to build nodejs,
>>> nodejs-native and binutils in parallel.
>>>
>>> I think by default there are 4 tasks, with 16 threads, each could
>>> require 1GB RAM. Would you say, in such a case Yocto requires 64GB RAM?
>>>
>>> And with increasing #cores it gets worse.
>>>
>>> Not that it is too expensive to throw hardware at it, but it seems to
>>> be a fundamental problem that I would like to resolve. In my spare
>>> time of course.
>>>
>> Just to add that bitbake now supports pressure thresholds (since
>> Kirkstone release I believe):
>> https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user
>> -manual-ref-variables.html#term-BB_PRESSURE_MAX_MEMORY
>>
>> If your recipes put enough pressure on RAM before one or two of
>> nodejs, nodejs-native and binutils gets scheduled, it would prevent
>> that. However I believe if the timing is just right (unfortunate) and
>> there's not enough pressure when all three recipes do_compile start,
>> they would all start and you would have the same issue.
>>
> Exactly
>> Cheers,
>> Quentin

