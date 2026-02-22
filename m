Return-Path: <xerofoify@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 887C4C624CE
	for <webhook@archiver.kernel.org>; Sun, 22 Feb 2026 05:56:36 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9073.1771739787450840696
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Feb 2026 21:56:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ILLA9epz;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: xerofoify@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-8947e6ffd30so30513486d6.0
        for <yocto@lists.yoctoproject.org>; Sat, 21 Feb 2026 21:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771739786; x=1772344586; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SYBffIYkoTGFAq/29RxeHfUqYum+0tBoWkZiMD0gn6k=;
        b=ILLA9epzQeA4fzDaPoq1GyEIvjg0Dpbs4dATHDoX0z02PshW0Cg6WYmD6xr0TG/+gB
         1ZAdsZeNqRE0GGzQCD1B+nnwWUacm3Hav52Pw5I5087DS8X5NrIdBQ8NW8+q0qTHZBgt
         e9o99TEuBJKRypyvMr3SNcOsQ2NZO4vbhaLtzW4GNBLgtRt7cLewa+9AoQ0jrdcRyhlo
         PPxhCD9FjBh8H5TcoNwfELaYEXH5hG6GtGS/+vEWWy5OFzKkJS9jvQLFrxE53sQmBw6P
         T3qkrXg3gh4D8Thch9omL/JqhtDed9yzk3s1R7cG06+xfqFsopNqVitO9PxX2n3YyeRx
         zw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771739786; x=1772344586;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SYBffIYkoTGFAq/29RxeHfUqYum+0tBoWkZiMD0gn6k=;
        b=FuaVTSt85Z+UUtZ8/ir7b3jFEyWxckDWFV4WATH8PUwU0ke98TxJGam1zHp8Qonpog
         5h3N6l9sfJv0Dj0yzOFk8jkm58Wm7HkeYcNO8p929V6ay5K20uHrmSpPFBoF1bQeVMyG
         TU4banmZoagbBNty0eLV25cMmzuSigyAtEKLo+sZ2f+kLFHLNdf0e7tQTCqAvNpZ/W35
         lTl3NjXKTBt7+FDZMmkn4aq60+sKKsOjbioOh3zbqbce1iNhPUV91Hqmv1dLrqb7d/vU
         ZxqAg0Ld4z5r4ydh0oAGA61zWf08pOuSgwTtrsB0KmBOkBgTAiWX8ltutQCxTOYRD23g
         rIGw==
X-Forwarded-Encrypted: i=1; AJvYcCVCJBpGIm4ZvkMo7PDUmvKH3E+81bg8QOKvElnmn5B5Mdh8NjmIK3e6R1Ib3Gwq/AA4ZtiDeg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxtNTIAQu0Nyn7/DFYH7giGkp6Q5/3N6yS+WrXUiI6GpTK9W9jI
	ycRQF4EFKFplZdsbC7XipGh+chjR1+Q0r+chHKnEdPQFrYxPy8VlZImXDz18Fg==
X-Gm-Gg: AZuq6aIMntvu14tiLr0XNUgocS0sx0Df7PMYkDq4IvDZW0TfQwZLqBhCbwKdAtTH9qV
	7/JI9wvJekY7r8oJgS0mL+nbj0xXm9DeGT78JhOF6KPYvzinDU3WPsaqGRCOeYqRaUWu/oP/bsm
	iOhQ289XgRRxpJuBJzWks5LwcdcrB2HfvplCYzBHfoob3ZHowJy3LAd+oCwzm7OTyqDtAMbZHkY
	igPPkSSR75k3XvS7GFkXNjHzQrhGhRzv18HDdmVZ3eAIucuN5vsgc0bXVgIaFAar5WOAWP/rom9
	W78enwGTCpAeesUlKVhAk6yLQ+tVtltSdGyF9hprVnByfre/SOW/YYTcZXg/j91oVDL5X7pBVAd
	b987ia+B/A5srfFTHTdBlrQhNU3D1KMk0O53fRuT1c/95/CxE9kk0ivnGoZL20AA/lEXMytgPaP
	hLY5VG4zMxfBptsocLaVsmptdfe3800eiiYxHTWnflcJZEEqaHi15C8t4gmokveXnY4Q==
X-Received: by 2002:a05:6214:e84:b0:88e:b33f:dc08 with SMTP id 6a1803df08f44-89979d4d48bmr80231466d6.39.1771739786382;
        Sat, 21 Feb 2026 21:56:26 -0800 (PST)
Received: from [192.168.0.78] (173-230-162-209.cable.teksavvy.com. [173.230.162.209])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5070d510ab5sm35775301cf.4.2026.02.21.21.56.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Feb 2026 21:56:25 -0800 (PST)
Message-ID: <af6cce90-66b1-43e1-9861-3287d7405ff8@gmail.com>
Date: Sun, 22 Feb 2026 00:58:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
From: Nicholas Krause <xerofoify@gmail.com>
To: Ross Burton <Ross.Burton@arm.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
 <F1186EBC-365D-4CC0-8BAE-3837F922BE3B@arm.com>
 <13ceffeb-db33-489d-b36e-81868b778fc8@gmail.com>
Content-Language: en-US
In-Reply-To: <13ceffeb-db33-489d-b36e-81868b778fc8@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Feb 2026 05:56:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66263

Greetings,
Pinging this email as its been a few weeks and not sure if the patches 
have been backported.

Thanks,
Nick

On 2/6/26 5:49 PM, Nicholas Krause wrote:
> Greetings,
> I'm on kirkenstone currently. So backporting the patches is probably 
> best. However, what's the longterm strategy around this as its been a 
> program for several years on more bleeding edge distributions i.e. Arch? 
> Even when were talking mainline its a problem with Arch sometimes.
> 
> Thanks,
> Nick
> 
> On 2/5/26 5:40 AM, Ross Burton wrote:
>> On 5 Feb 2026, at 02:37, Nicholas Krause via lists.yoctoproject.org 
>> <xerofoify=gmail.com@lists.yoctoproject.org> wrote:
>>> _pickle.PicklingError: Can't pickle local object <function 
>>> AsyncServer.serve_as_process.<locals>.run at 0x7fea88598a90>
>>> when serializing dict item '_target'
>>> when serializing multiprocessing.context.Process state
>>>
>>> Due to being on Python 3.14. I would prefer not to have to use a 
>>> backwards supported penv for Yocto alone. Does anyone have any 
>>> experience with working on Arch and how to avoid these issues without 
>>> either dealing with penv or yay for getting a older version of 
>>> python, pre 3.12 I believe.
>>
>> There’s a number of fixes for the 3.14 changes to multiprocessing in 
>> git, so you likely need to backport those. What version of Yocto are 
>> you using?
>>
>> Ross
>>
> 


