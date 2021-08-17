Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web10.43322.1629224344809909057
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 11:19:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hSCqjaK+;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id n27so506918oij.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 11:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=6BdgfykhOFFeLEjuwgasN/3Ov+ZByTMivZpgsXmyupI=;
        b=hSCqjaK+1uXBEPDPJ+iFkYQjqgr8UeHqpH71JM69zYSVX9iYvkQdFyEPhwPQ1Ktz0T
         viEND4ZWgVtq455iATQD+4bxm1+xZYOFSbo7R3Lvpzh41H0/4YBrW5mP8B5CFZ9lhvAl
         WZ9YfxzBxj8wqNN+/rOKW/h4CgwquVg3T4uHwMK7x5nNmdyckuO546SxQdwZXfqpLZDV
         AwLVrC5JYtBmzvKP95an+R+JJCJmOU6tAW6FYmqzMLMITP60Q0OgGfvRd47BkbxUR6lG
         7TI1q7oRt40nWql2oc2XwQ4/6hLySDI28sSJ2bsodAJEDnA0xU6QGqieTcnpeyPNtXUt
         dLFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=6BdgfykhOFFeLEjuwgasN/3Ov+ZByTMivZpgsXmyupI=;
        b=QljHrmPJohC78bKPzRXFknIpV0uSQ7/uT2/BnDIm82YNN3dRuaGXBrARtYbINg3jyl
         1j5fUPjZGPBEpY6U+wymgZDTuxcvwoxmnQosjB8AzCF325kd0fYur3y++iF7I9HuEOFv
         mPIXQgxsELGh1vn4ytxJF4Vi8mnK/7SyGwyInLdIwlFK/DAAGyExJdnuc6eS/qwWtred
         1NjF8ai5PiR3VCfknyVsHmS7s4XX9Na1rdRgNj6ZGhClsqOvGBC2jwEX9dGnlSKhxNCC
         xn6R1FGQf8UDa0vvINPbajyjzYONETi/Vf1UuYGVbDAtGOm44K8drVndQaTPsDqi1rHk
         fGlA==
X-Gm-Message-State: AOAM531vbHE0I0MbKDuyz84ZVQlfaa5Xk7dheLct2Dt3icL4i2dLT1U5
	i0HMNkzArAh5TsxV1oUmklceSkxoue9MEw==
X-Google-Smtp-Source: ABdhPJxp1j5tIO5R2WjMdotK8yOo/8TOCJ+/7Qg+J2I57J2fZtI0rFswuAPZVcLgfFghdPFnlYkzLg==
X-Received: by 2002:aca:6747:: with SMTP id b7mr1317568oiy.134.1629224343784;
        Tue, 17 Aug 2021 11:19:03 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id bi18sm644190oib.54.2021.08.17.11.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:19:03 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw] [PATCH v3 1/5] protobuf: static link tools when generating sdk
To: Sinan Kaya <okaya@kernel.org>, yocto@lists.yoctoproject.org
References: <20210817150957.18246-1-okaya@kernel.org>
 <7c2cf6b1-cbe1-35f6-2fae-39d5beed930c@gmail.com>
 <6e55b59f-c9bb-5357-8b57-f0f1cc1f11fb@kernel.org>
 <98f08e04-6920-27c7-87db-12d6d390cbde@gmail.com>
 <06fe9e3f-b99f-4d98-6e06-f38fdeac18c7@kernel.org>
Message-ID: <d387b65e-3563-3647-65b0-1266f39cd330@gmail.com>
Date: Tue, 17 Aug 2021 13:19:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <06fe9e3f-b99f-4d98-6e06-f38fdeac18c7@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 8/17/21 1:15 PM, Sinan Kaya wrote:
> On 8/17/2021 9:10 PM, Joshua Watt wrote:
>>> We have use cases of both dynamic and static linkage for the
>>> target build that we have not seen any issues with.
>> Are you building with "mingw32" as the target (not as the SDK), and it
>> works there? I wonder why it only fails for the SDK build and not the
>> target build? If that is truly the case, then yes I suppose it should be
>> the "sdkmingw32" override. The strange thing about that (and why I
>> thought it was incorrect) is that we have a few recipes that disable
>> shared libraries and/or enable static with just the "mingw32" override,
>> which is why I assumed it was a general limitation of MinGW, not just
>> the SDK. I looked through the recipes, and it does seem more apparent
>> that it is inconsistent, with a few recipe using "mingw32", a few using
>> "class-nativesdk:mingw32", and a few using "sdkmingw32".
>>
> I see two classes of problems based on my engagement with the mingw32.
> Some recipes just don't build without using the static method for
> the SDK and the target both. (abseil-cpp is one of them)
>
> The nativesdk problem for grpc and protobuf is a silent failure. Even
> though we are able to build the binary, we get a binary that just
> doesn't work on windows. (crashes upon execution)
>
> I still would like to be able to static/dynamic link grpc/protobuf for
> my target using the SDK.

RIght, the "mingw32" override shouldn't affect what you do with the 
*target* unless your target is MinGW; I'm not sure if anyone is actually 
doing that, most SDKs target Linux for ARM, Linux for AArch64, Linux for 
x86, etc.

What is your target?

It's important to remember that the recipe can be built differently for 
the SDK vs the target :)

>
>> Anyway, please send a V4 if it needs to be changed, and I apologize for
>> changing it unnecessarily :)
> Will do.
