Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web10.2334.1596087607204384901
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 22:40:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m9PM5Owh;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id d188so8339214pfd.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2020 22:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Ym+22bu9qqeQAENXBg8vanOdPKZTwb7oov7IbQLJa6U=;
        b=m9PM5OwhlCFwqsMF2D4SIpoTydhBi8E8N3Tf9IVPHGnn1MP2QhUtmz3/fQxHqcWLF6
         +OeL0XmSHBsC83j/4FoG8v2xFtqGsc2SbXxEMtOr2a3PKrgb+Y1ZqcFbd0edsVm0xqaC
         VRKcE6dojIO1fe2gvBTiTHl32JyCNCrZeOMVwe7iJCTMv2vubcjp92qHnoMpkOVLtrp6
         p7odrI9+Eh5/Yk4+nTrjzpFZmQB17DrMptzKNB+rrYZBdUF48kPD8XRIejh7fGDepPZY
         64Nx2hiX474SHfe6voiWOf16lVv6ZHId10g5DRqXz0R1XRbxX0Qzz+Aub1V3Z4LOQLc6
         2EJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ym+22bu9qqeQAENXBg8vanOdPKZTwb7oov7IbQLJa6U=;
        b=r61rDfirN8MQOvyMBREKDMppcHFG2GTvgASdi3CDLRoMy78Dyupgr8useXRlCm+I31
         ChDTa+mVTfM15RLN3YK47H468XM0ZJbyNgRzOkmezv7gLbpYOU1n5kqDMd3qqCER13ma
         ZfUKrp0pCVH84myBEMeSt8+DnR9j31+rtGyG+by9Xk4vozzFflyxZnFyPbWatvswV5oZ
         ajKAkCkOxZgYh3UZtM9r9Jlfg9RWnhtZVT+9jp2QnwHmZIBp0xPbQvBeSx+/rNru05AF
         CZWJMwuG8uyUWrHF6+FG/H3qDw2L3Jd9/j5QOlLzJGztcFSs5B7dQKCLQYqTz5iXnMct
         yLuQ==
X-Gm-Message-State: AOAM532Fdh1KTg+aW79Y1HOvFhgSLzShmNBLvLy+yvkrxZI6haebohSb
	2wfJwruShNCnnpM3hPDderu44ZMJuRo=
X-Google-Smtp-Source: ABdhPJzS03GfsECoJQt7i+BUySXWOdTul+SaqTyh73LsrluLANu4Euo759v4sMsRzJEkLV3F2WWnSQ==
X-Received: by 2002:a65:6381:: with SMTP id h1mr906091pgv.0.1596087606407;
        Wed, 29 Jul 2020 22:40:06 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5ba:2655:68eb:112e? ([2601:646:9200:4e0:5ba:2655:68eb:112e])
        by smtp.gmail.com with ESMTPSA id j94sm4027891pje.44.2020.07.29.22.40.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 22:40:05 -0700 (PDT)
Subject: Re: [yocto] Building extensible SDK
To: kfa@deif.com, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>
References: <WBxu.1594201038361970285.H0ZY@lists.yoctoproject.org>
 <589397f5-4ba5-d2a0-c318-fc3187537aab@gmail.com>
 <6f1314dc8f5448ad998aa66d10929345@deif.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <51ed3fe1-a7cc-6476-eb2c-55e56842be94@gmail.com>
Date: Wed, 29 Jul 2020 22:40:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <6f1314dc8f5448ad998aa66d10929345@deif.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 7/28/20 2:58 AM, Kjeld Flarup via lists.yoctoproject.org wrote:
> The eSDK looks interesting, but the documentation does not say anything about how to build it.
> Am I missing something about how to obtain the eSDK?

its all in the manual e.g.

https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-building-an-sdk-installer

> 
> 
> Regards
> Kjeld Flarup
> DEIF R&D - Platform Software
> 
> 
> 
> ________________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Friday, July 10, 2020 02:38
> To: Kjeld Flarup; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] Add application with library to target
> 
> On 7/8/20 2:37 AM, Kjeld Flarup via lists.yoctoproject.org wrote:
>> I have a functioning Yocto build today, but two of the recipes are
>> optional. An application and a library.
>> I would like to split my build in two.
>>
>> One that contains the basic system with kernel rootfs etc.
>> A second that just contains the application and the library
>>
>> If I just had the application, it would be simple just to use the SDK
>> and generate the application.
>> But when adding the library, things starts to be more complex.
>>
>> I would also like to use my existing recipe with dependencies etc.
>>
>> What is the best approach
>>
>>    * Can this be done with the ADT?
>>    * Can a layer solve it
>>    * Do I need to do it all manually with the SDK
>>
> 
> I think eSDK might be good fit for your usecase.
> 
> https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-extensible
>>
>> --
>> Regards
>> Kjeld Flarup
>> DEIF A/S
>>
>>
>>
>>
>> 
