Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.429.1588271263684598007
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 11:27:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UXefKP+J;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id v10so3536340qvr.2
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 11:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6HYExDxAI3sqHgXS6pd7kEYY3qq9XYJ/saqE09ygfBs=;
        b=UXefKP+Jepq/dTUWFB5s+rGJzcX2mw+wNKhVMyeW5KiaB1m1+E0D6I3XWBc6ie+57Q
         lkNFDoOs1ZMsKKf70x010SnHtGx2suvlamqq5pjinFg1m0VVB/3PkkS7NvVsvkpDo0f8
         RI5drmQpShZq3ATsZlPmjHMSqsMRtq8YKfCGGSrn522A/qr8BfarO2/CtCzi6ZncBpV8
         OjavgfcwwaY5wy9Vyk9aF4ngrpJDrW4tMWVVO5yqUcESXlAyvqE9AW5q0Rux9sF9qZRD
         bBDDdy0kjcTPmXiVpvoD2mjntBy5TN51yBOhV2uHUmySXzwgZeES7F/wwvD4khVmsMl/
         ckNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6HYExDxAI3sqHgXS6pd7kEYY3qq9XYJ/saqE09ygfBs=;
        b=fN6sujofRe5ZYxf35jXnfc6Wx3IUK8A+2XYDOsjCBgCUj/tberdegfZd/PxR5Pb+Io
         dQnkr25gA2MzEkumrIDYbnf6S6T+Q3P0OhHVyAgw0rSL7rabqupOvN5fI/Aea6fiRG14
         MnkH1SJjsiQ1OXCaQzy+gAwycd1l6liMl1IEdVt/5qIBwOpXXktdEOotu4ZFfatudUsG
         kQIqkKDW0de/MkLteMkrA+JP8JEfyUQluVN8F3mcH0aJKma/90exKc6zQ/56GoG8hVkm
         9y9kJe7sP3jN13ARu4/X+hDq15GIIBvyobDNWa8b0nt3xjhoXRDBQBF9ezgPWnfW3ZKN
         BgMQ==
X-Gm-Message-State: AGi0Pub67cOk5vHys2qRbVkc45I185GjPkTFHWR4solCxCNb8Ty5Y+qA
	/JD2lJr96uuK81nFIE+5O/I=
X-Google-Smtp-Source: APiQypLtRC/K4VQaAx8TvWSW4aviVLreetPeuCdu/3/+JLyEcKGGyQPJGYoWYMW3iUfjrg2AoOjTCg==
X-Received: by 2002:ad4:5592:: with SMTP id e18mr195975qvx.13.1588271262759;
        Thu, 30 Apr 2020 11:27:42 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:68fb:d75c:9385:c0c? ([2601:646:9200:4e0:68fb:d75c:9385:c0c])
        by smtp.gmail.com with ESMTPSA id g6sm399359qtc.52.2020.04.30.11.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 11:27:42 -0700 (PDT)
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
 <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
 <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <b70bbaae-b1d0-9b8c-add0-8f6c0b32a4e5@gmail.com>
Date: Thu, 30 Apr 2020 11:27:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 4/30/20 11:25 AM, Marek Belisko wrote:
> On Thu, Apr 30, 2020 at 8:23 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On 4/30/20 11:16 AM, Marek Belisko wrote:
>>> Hi Rudolf,
>>>
>>> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
>>> <rudolf.streif@ibeeto.com> wrote:
>>>>
>>>> I was looking for a way in a wks file to have wic grow the last
>>>> partition to fill up the remainder of the disk. Of course wic does not
>>>> know how large the disk is but that could be a parameter.
>>>>
>>>> The alternative way is to use fixed-size and do the math manually but
>>>> that would not allow wic to grow a partition based on content.
>>> You can use https://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
>>> which grow partition to the end.
>>
>> can it grow a mounted partition ? since that will be the case when
>> growing rootfs partition.
> It will grow last partition in first boot only.

my question was will it grow a mounted rootfs parition if that happens 
tobe the last partition, I understand it will grow last partion and do 
it as firstboot service.

>>
>>>>
>>>> :rjs
>>>>
>>>>
>>>>
>>>
>>> BR,
>>>
>>> marek
>>>
>>>
>>>
>>>
>>
> 
> BR,
> 
> marek
> 
> 
> 
> 
