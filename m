Return-Path: <bill.mills@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBB8C10F1A
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 17:21:58 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.1486.1715275315861192098
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 10:21:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=V6N360Ef;
 spf=pass (domain: linaro.org, ip: 209.85.219.44, mailfrom: bill.mills@linaro.org)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6a04bb4f6d5so6884066d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 10:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715275314; x=1715880114; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:cc:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aSU0Ek8sGhHLoGg3OPMkVI9BZUiItl26d01CyOZVcBk=;
        b=V6N360EfzKBb6bkZtsaqD8KFJpxEMnZi+jHvr6qRGvVEYh7DcG8twMHHLS17B2oTFn
         LysW2aZ4dDSbrQCawO9tkQUSCeUuBhTTNh10HvejPRI6PxO8jtz96ZYMPM/DYV4uPz4A
         qpJR0jp31q0hUp10Yy6Ei9waDkLZxEgHqLtoTYFHTtgE5EbRYoYDRJHh08bFz7KYuBVi
         beBpoeCqu3Rvxtx3lqCFLD7jVmCBxOpGSyu439qI7gJcmcyq6ns+WbQ4EPDkgD9ZzAgx
         9cxZ25GNcjHKJFLuDBuY4NFpz9LfoQsUa6hXyyPi7j5eSAgdx/0jLlT+89uO9kFHgfRF
         rJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715275314; x=1715880114;
        h=content-transfer-encoding:in-reply-to:cc:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aSU0Ek8sGhHLoGg3OPMkVI9BZUiItl26d01CyOZVcBk=;
        b=ahT1W02BW/SLXczSIR7U2dxY+Y9KCwS8qG6YqZlpEX888hzZsEssAJdgdKi2l0QYxK
         mgx/kLwGG0Fs2M/sE8xJM8kNW3pfaqDl2/ws53AJn4YVmL59fxuaNQejEDjxSl7DdtUl
         EIF+yJIBQiuViNmOJYjdOzPNYOfYskRQWqgBrH1bbBQGZBE9WuQdy1GOkiiHSBFSNi9u
         zmojJjtrVFAlp09KHmXbd5SY0oCMXjGtSsGBGwhxyVNXmeir1ePBD6AtoF7VbewNelb4
         AHbbkz6jiwt/3WW728JBb0mQkn60WYkXpXkWgz/mMHKdZY5JH/GW9Kbvyqjpw+FAFQaj
         gwDQ==
X-Gm-Message-State: AOJu0YypnQYX60iql3IB7fN882CPLVZ74U1KG87X8+CnoK+g0jOOQV6l
	Kgue8yozwUNSUZdYbGVUoTcbKudqMW3o/+GOLaKEschI27hYMAVpu8JU5RuGWhWDnXOkEgB+NvY
	OV1Y=
X-Google-Smtp-Source: AGHT+IGvpQA+zBaRaH838Zy3IE1zVjLKi8F9VjkzzQdDacJ9Ve6JqlOd0Y8yt7r8N5kkhTJwWN3naQ==
X-Received: by 2002:a05:6214:5242:b0:6a0:cb69:2ec8 with SMTP id 6a1803df08f44-6a16822c920mr121446d6.43.1715275314514;
        Thu, 09 May 2024 10:21:54 -0700 (PDT)
Received: from [192.168.2.7] (pool-72-83-14-124.washdc.fios.verizon.net. [72.83.14.124])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6a15f17b4cfsm8785096d6.26.2024.05.09.10.21.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 May 2024 10:21:54 -0700 (PDT)
Message-ID: <800eeeed-19e1-4b10-aab5-34f5c4a9d51c@linaro.org>
Date: Thu, 9 May 2024 13:21:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.1.rc1)
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
References: <0101018f588765c1-a41d2a62-bd93-4b59-ade3-86684525d648-000000@us-west-2.amazonses.com>
 <45f44a2531134bfc9a419d9aa76355d0c0db0660.camel@linuxfoundation.org>
Content-Language: en-US
From: Bill Mills <bill.mills@linaro.org>
Cc: "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 Mikko Rapeli <mikko.rapeli@linaro.org>
In-Reply-To: <45f44a2531134bfc9a419d9aa76355d0c0db0660.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 17:21:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63065

Richard / Steve / All,

On 5/8/24 10:12 AM, Richard Purdie via lists.yoctoproject.org wrote:
> On Wed, 2024-05-08 at 14:06 +0000, Pokybuild User via
> lists.yoctoproject.org wrote:
>>
>>      A build flagged for QA (yocto-5.0.1.rc1) was completed on the
>> autobuilder and is available at:
>>
>>
>>          https://autobuilder.yocto.io/pub/releases/yocto-5.0.1.rc1
>>
>>
>>      Build URL:
>> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/6885
>>
> 
>  From discussions with Steve, I think due to failures in this build
> we're trying an rc2.

We are looking for a pipe cleaner for automated machine tests.
If this is DOA we probibly don't want to use it correct?

Unfortunately the 5.0 rc4 release is no longer on the autobuilder.  (But 
rc1 rc2 and rc3 still are). [1] How long are they kept and when are they 
deleted?

Is the dir structure of the release [2] the exact same as the rcN?  It 
appears so on first glance.  Did rc4 get mv'ed instead of cp'ed? Is this 
the expected behavior?

[1] https://autobuilder.yocto.io/pub/releases/
[2] https://downloads.yoctoproject.org/releases/yocto/yocto-5.0/

Thanks,
Bill
> 
> Cheers,
> 
> Richard
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63056): https://lists.yoctoproject.org/g/yocto/message/63056
> Mute This Topic: https://lists.yoctoproject.org/mt/105981534/3619240
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bill.mills@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Bill Mills
Principal Technical Consultant, Linaro
+1-240-643-0836
TZ: US Eastern
Work Schedule:  Tues/Wed/Thur

