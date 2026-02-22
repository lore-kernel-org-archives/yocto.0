Return-Path: <xerofoify@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12DA2C624D0
	for <webhook@archiver.kernel.org>; Sun, 22 Feb 2026 07:13:57 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9714.1771744430630046720
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Feb 2026 23:13:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EskLXA/u;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: xerofoify@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8cb420f7500so350281785a.2
        for <yocto@lists.yoctoproject.org>; Sat, 21 Feb 2026 23:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771744429; x=1772349229; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FIrXZdQJo0N2IbeKA5EF47zkO64s3Ns64mhoI4zBUXY=;
        b=EskLXA/usrMOWS0RxSDHz3VSUJ8Rax9lpEFJ8/qGdLwNdhTWBOdfd7iKytc/xlFBlv
         i+1mZaZzSoiLknZ2vC16XT4/NK/iMkQcm0WXiVKj496L1+T0Gsg4LFB2ceUUwRodRwW9
         fKts//kYs3Rf7d5Cc7/5XwSwouiLlE4zjnN1r2JKRNyxnNY3lUhplmv7vEF/qxjCtzey
         uHm2Ojd87WCHUkJgpvjhovVIPlzyz/GQKz/hArRutZsOLQznqLsD1H3MTCFXIMFtM01k
         xRDWnq8zzN/k6+keFZ85jiGeV8fe+O9WbLg5TIbrTD0X81xW92eKRwo9RgON65Rlm7cc
         iCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771744429; x=1772349229;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FIrXZdQJo0N2IbeKA5EF47zkO64s3Ns64mhoI4zBUXY=;
        b=qi7YIV6399XgDioFQi4WF778d2ZNkGxfDjFb/ZCH38CT77tTZ121SoxM50ktc6LKHo
         UkqEYyt17kDIKxKkpxn7bwwwmPHVj6HdaBYjz4r8ktu9pazJb4PEd6BKhFAG1YU0n74s
         Ta7WqgqXkftup1xkPU9D2eBRcC1mzqUuZ1ovb7k789cqgEoE721iNVesei2+l5o0RNfP
         OVu7tS80XcrlrJQ34Ki1jzuOwaMfA78T62V4fBcA0Uv0xNsshOA0XKKdefe2+0PqGEm7
         0cBoj7nB2CyAT1+mzuhZ552x+jKZ00JE83wmTPP3JVxxTvtLrBFAfKqmjmX9NI8urIMo
         v+0g==
X-Forwarded-Encrypted: i=1; AJvYcCUpugmG9+wCU7dY4C5OKnOqt1vrbwUxEuUHVW9II6w7PEOUDYifLsmTdBz9hq1+YFiS89DF+w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxjsG92CUQjwuo8n2Mk6MobaYL3JFiDRnP0fNMJMZN1yx0kDO6g
	fmKb5kI4Oyjc03lhq2y36vZctjGwB5WMVT28kZ99iEbS7Y236BnNWM1/jCRtYg==
X-Gm-Gg: AZuq6aJlyz2M1FVIkmG36aoiaN0NQheUqhK8OyfYLuQw/CFOt1RjTQtAZHrtWw35nqv
	8j2OiXqU33qyODJ0eXU7R35vltzNXXVyKUgn5mU7xxrDf46wAB+fmADIyKXedXw/aNQvQAlqh6Z
	nQSgViTY92r3T7Fn+U2DaEvBoCDh2GS6DSD1weNMmWvZl7dc8h3QaGxSw+mpT5kKKwejF1yfpkD
	q5Dw22XWjhXBkelhxZCOkoMFu5FAzVEKfWns88MguBSInGtFf1xBhdBr3huv4OXI3FXckKU+Yi5
	lgMG9H9VVHk4fupO22BQ0eM7t5cXJcfZXUg6wmoPveF5WLkEfkj7zu7jEFhhr7KV/RLsCiuvT79
	ReCz1dXQGJzUMOMn4QOrPAq9SMgNytWJ1oC4maGIO/0eOybMfPrlM8HuqWZCAWhzqnLOaBJSdpY
	pIBmzXGx0jpaBYuqLKTI2FadjJzzZwHThmOyqeNPiu6fiPrZbobMlMgnnhd2Gszwupiw==
X-Received: by 2002:a05:620a:371a:b0:8ca:1e09:48d9 with SMTP id af79cd13be357-8cb8ca14b6emr629149185a.35.1771744429444;
        Sat, 21 Feb 2026 23:13:49 -0800 (PST)
Received: from [192.168.0.78] (173-230-162-209.cable.teksavvy.com. [173.230.162.209])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e63091dsm36276506d6.41.2026.02.21.23.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Feb 2026 23:13:49 -0800 (PST)
Message-ID: <b365fc07-7469-4dea-8747-5d10221c04d9@gmail.com>
Date: Sun, 22 Feb 2026 02:15:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
From: Nicholas Krause <xerofoify@gmail.com>
To: Ross Burton <Ross.Burton@arm.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
 <F1186EBC-365D-4CC0-8BAE-3837F922BE3B@arm.com>
 <13ceffeb-db33-489d-b36e-81868b778fc8@gmail.com>
 <af6cce90-66b1-43e1-9861-3287d7405ff8@gmail.com>
Content-Language: en-US
In-Reply-To: <af6cce90-66b1-43e1-9861-3287d7405ff8@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Feb 2026 07:13:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66264

Greetings,
Please forget. I've switched to scrathgap which works fine. Kirkenstone 
is frozen so I would not worry about my previous concerns.

Nick

On 2/22/26 12:58 AM, Nicholas Krause wrote:
> Greetings,
> Pinging this email as its been a few weeks and not sure if the patches 
> have been backported.
> 
> Thanks,
> Nick
> 
> On 2/6/26 5:49 PM, Nicholas Krause wrote:
>> Greetings,
>> I'm on kirkenstone currently. So backporting the patches is probably 
>> best. However, what's the longterm strategy around this as its been a 
>> program for several years on more bleeding edge distributions i.e. 
>> Arch? Even when were talking mainline its a problem with Arch sometimes.
>>
>> Thanks,
>> Nick
>>
>> On 2/5/26 5:40 AM, Ross Burton wrote:
>>> On 5 Feb 2026, at 02:37, Nicholas Krause via lists.yoctoproject.org 
>>> <xerofoify=gmail.com@lists.yoctoproject.org> wrote:
>>>> _pickle.PicklingError: Can't pickle local object <function 
>>>> AsyncServer.serve_as_process.<locals>.run at 0x7fea88598a90>
>>>> when serializing dict item '_target'
>>>> when serializing multiprocessing.context.Process state
>>>>
>>>> Due to being on Python 3.14. I would prefer not to have to use a 
>>>> backwards supported penv for Yocto alone. Does anyone have any 
>>>> experience with working on Arch and how to avoid these issues 
>>>> without either dealing with penv or yay for getting a older version 
>>>> of python, pre 3.12 I believe.
>>>
>>> There’s a number of fixes for the 3.14 changes to multiprocessing in 
>>> git, so you likely need to backport those. What version of Yocto are 
>>> you using?
>>>
>>> Ross
>>>
>>
> 


