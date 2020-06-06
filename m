Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
 by mx.groups.io with SMTP id smtpd.web10.2401.1591406888904262754
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 18:28:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lOt6gYRh;
 spf=pass (domain: gmail.com, ip: 209.85.210.193, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f193.google.com with SMTP id b16so5741750pfi.13
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jun 2020 18:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=oyWPvmLOI1PJfum8KfCoe8xAC0uSpLpFfxINKQJDdLA=;
        b=lOt6gYRhBhmY7XIU/MBGkrS43K8v2IxfklwXnh675+TebNiBukShz8VRGZB6dnbvq1
         8cexqsQ6wE9T5RnXY5+sX9aiu6oloQZXyDpHOuKgD9b0uVf2ipjJinVt9+nSltqlW+cw
         wRfnew0kg01InpsRBG2ryOTBdsTmCAKO7xTp8/eB6DMfayI78jzQTe1W1qw1pfTuV8eW
         xJqYahLyKfLf6Q5aE7lJmQ9X5J+otkIo2KGxz/oDRtDuoZKH8pSTv1er4j5BT7yc53QP
         kCS4zaoCc1yQBNh9zoY5s2XwUFxM1INaOTvo66PnVr9sLneqUMU0R1P/iJFnVqNc072S
         wOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oyWPvmLOI1PJfum8KfCoe8xAC0uSpLpFfxINKQJDdLA=;
        b=pfAcmByUhF0IBXcYtLzgBXWaISzpz4Z5r8b452Yf+IjIpK2tQihqai9Bg4f5NsQxYA
         Fyd2xY5amQCZnTEqe+rbyi4Up+i/0iYCyhG9Mu43fWzTiZfqK3PT2Y6CqPc1089F1WX1
         MKAgsD/saL+/0i71ko12WtBSuMu3M1r54cJTk0GFgaPUp3W2Rv4Ji7si4tE+HVE5DIHR
         YgypUusxwTLeokZdUu7uvPWNL/FGCLNlao8p77p7hbhcQVGYscHCkQBzlejrveC1mtK+
         3ckhD1w5bkSOXmDK0VnzOYgX1iw70N/VWgYF6ujF72HYCAtD+YTnYJLQ1gGK2345BJuf
         jchQ==
X-Gm-Message-State: AOAM531l/muNzJM6Qd7Vtbq22yjVC/zwCczQ+koRvIvvDXB0ziNAtyI+
	2c9OoSMrDixsTM2zN2r1Ovt66jU4HGo=
X-Google-Smtp-Source: ABdhPJxivXu4xpiyVV9UFCn7e4DxDInPeQonRrh2H9UeOH1JgG6oUgqdYN0eWKxNbdEQ47L1RT0u6g==
X-Received: by 2002:aa7:80d9:: with SMTP id a25mr12940574pfn.220.1591406887920;
        Fri, 05 Jun 2020 18:28:07 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:392e:a386:560f:8a74? ([2601:646:9200:4e0:392e:a386:560f:8a74])
        by smtp.gmail.com with ESMTPSA id j12sm732100pfd.21.2020.06.05.18.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 18:28:07 -0700 (PDT)
Subject: Re: [yocto] Yocto gdb build error on Microblaze platform
To: Mark Hatle <mark.hatle@kernel.crashing.org>, R Keith Beal <r@cmss.com>,
 yocto@lists.yoctoproject.org
References: <95d62cb9-5791-970e-4397-488c497afa61@CMSS.com>
 <e5dc4586-d1a8-69e9-c3c5-9657637ccbc3@kernel.crashing.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <becd5cba-a728-bbad-cd62-d1e818f261b8@gmail.com>
Date: Fri, 5 Jun 2020 18:28:06 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <e5dc4586-d1a8-69e9-c3c5-9657637ccbc3@kernel.crashing.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/5/20 1:23 PM, Mark Hatle wrote:
> This could be an issue with your host if the host is too old.  Unfortunately
> I've not worked with the releases that are that old.
> 
> However, Xilinx did just release their 'Zeus' based rel-v2020.1 version.  That
> version should work on most modern hosts (ones that Zeus works against.)  Even
> if you are debugging older code the newer debugger should work, so it might be
> an option for you.
> 
> --Mark
> 
> 
> 
> On 6/5/20 3:02 PM, R Keith Beal wrote:
>> Fellow Developers,
>>
>>
>> I am attempting to add gdb to a Yocto project based on Yocto 2.3 (Pyro).
>>
>> The build complains about a missing libreadline.a.
>>
>>
>> *| make[2]: Leaving directory
>> '/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/opcodes'*
>>
>> *| make[2]: Entering directory
>> '/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/gdb'*
>>
>> *| make[2]: *** No rule to make target '../readline/libreadline.a', needed by
>> 'gdb'.  Stop.*
>>
>> *| make[2]: *** Waiting for unfinished jobs....*
>>
>>   
>>
>> I tried several solutions from related searches.
>>
>> https://www.yoctoproject.org/pipermail/yocto/2017-June/036676.html
>> <http://url1567.cmss.com/ls/click?upn=THw5ysdXae-2B-2Btp69CrkSktfnnmsBMoq2fcLowO1MzKn3wcqowiND-2FTX2Ck09GJGF11Hdqxt9-2BJySKGonPkx0-2FvLNAXTq0WYwTE0-2B6Uyz0Q0-3Ds3H8_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaaE75TdAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2Fb7gapUyik7iAzbey0Nv6Nh1PPsPq0e6zs-2FHGTQciMLMokCWW2i0XDtIP1PxZS-2FBaX9nG8vzU0xSEsOh5-2B-2BNrbSSvAUSyjTopTajwQc0OlCGBRmdkOAlI4rLI2-2FbXadatAeHM2ppplObheY876Um-2F7s-3D>
>>
>> https://yocto.yoctoproject.narkive.com/gUVw5u2k/failed-to-build-gdb
>> <http://url1567.cmss.com/ls/click?upn=THw5ysdXae-2B-2Btp69CrkSkhlnHi-2FYRYLnr3RlrnNZXmyK27CyplgiatU0F3nje-2FAXjDAERK7GpIYABqm2VrjansniTichrksQOsPzjrfGRnQ-3D3jnn_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaaE75TdAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2FROKHNngrTHmIDyLyzUDU4zrfMIpo78C2wBlDsxv8-2BZrviAWCn1byCAfT7YiEftQVK3DN3LssMFNwtjmKXL-2FfZ3nlLFAqjcUW5B7S21IzlkqE9-2BhkLOYjNKhAmXnXDCrWhn8go40EayViSLFCcW2bIE-3D>
>>
>>   
>>
>> Tried *PACKAGECONFIG_remove_pn-gdb = "readline"* but it does not help.
>>
>> Tried adding *EXTRA_OECONF_append = " --without-system-readline"* to the image
>> recipe but it doesn’t help.**
>>
>>   
>>

Remove readline from PACKAGECONFIG and then
Can you try this patch
https://patchwork.openembedded.org/patch/116843/

