Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com [209.85.161.65])
 by mx.groups.io with SMTP id smtpd.web12.14052.1602601226019447890
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 08:00:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XT8gJH4p;
 spf=pass (domain: gmail.com, ip: 209.85.161.65, mailfrom: jpewhacker@gmail.com)
Received: by mail-oo1-f65.google.com with SMTP id z1so4967796ooj.3
        for <yocto@lists.yoctoproject.org>; Tue, 13 Oct 2020 08:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=bu2aXgnxDw0s0TXY3d+5Z87uRMMUVfjORQSLxpxt8jg=;
        b=XT8gJH4ptUMq953mhkTHLO4XpjYa1rG0BR80FZg+90FiFSb/mbY5p9PgPu2Vizw92J
         2CJOnJgQ8pA4CdbYuIuej2sSH3NDhAg86iNYaIS5PRr+yk2AqYdASwWCFrBcyferjSMK
         VKpkwuueq+dtV+AnPTkVcCuFtkAjqfWw2EAUJA14mT6KvaY7IQGvdjIRGf0vvJTlYErb
         ldzzDVGK6hvmiw9z43H0sA9Ubto/HgLbee6pcQaY2tlocJDLQx19AgpGhax89c4BZdI9
         a64grnFNLEr4oAvQ7U/BGZ9wuVZcpEZH6TjMyoTs75rIREb2Lnlj50rbAmtIWVaE6QkJ
         Tx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=bu2aXgnxDw0s0TXY3d+5Z87uRMMUVfjORQSLxpxt8jg=;
        b=XIuS9i6VrvRUp6SBKDNhxgBHMpzC6TGFZniw42ddFpG7ncoNaiGZARBBOhFP2sNXRX
         zKn0e7pM+HUsNKb758WDffNTS0pZxUArVU8izlmvn7t4KfVr2yviZcEFVuIAhipAZNdY
         zjhmA/dX7T9X5DKUFojHy6anoBfFWHmWZ8vBB99K+X4hKeaeWTF+2fHQpyz5eVQfLvHg
         iXr2KiccD2AzGcv+TQFjDTzZDKsb1lh26ZtZ+EhRZ+1R7iJcl7jipNbZURwM6mGtdg2G
         uZrJH0kCH91ZumzyBvFm3V7YRFv6M8pWBVBEqPKgwaSz0fwX5n2sGUJ0Nm3NvXWw8Rm4
         oOgA==
X-Gm-Message-State: AOAM530aFBLOwfbqCBjoOJxprt9D+J4shwmWHcBRIRaFlObcdYuyy1In
	hruXq4e94VFaH4dNFDzr7SV6wPNx+Go=
X-Google-Smtp-Source: ABdhPJygfgNhCsCJ39jYKrlfQincpo90tUyUP789EFWbj7GyF0+ATPnKHq7wNRGbKd4JfK297WuR1A==
X-Received: by 2002:a4a:9644:: with SMTP id r4mr9928207ooi.12.1602601225048;
        Tue, 13 Oct 2020 08:00:25 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id b3sm10918069oie.49.2020.10.13.08.00.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 08:00:24 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-gplv2] [PATCH] gnupg: Make it build with GCC 10 (which uses -fno-common by default)
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
 Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <20200831224444.16097-1-pkj@axis.com>
 <CAJdd5GakOno5nBi4HicYQ=PFrwo6o_GD8+C2Pfn4nr-7+Y_6OQ@mail.gmail.com>
 <CAMKF1soCn187tLQbrbtGg2_gWyS=+gU8q7utwo8J0Bdu+NQrbw@mail.gmail.com>
 <CAJdd5GbfPOcAFk5cZfthBK=jL_yNypqFNeVtvC0snh9rBsj_5g@mail.gmail.com>
 <39a0f312f43f4a19919eeec0451ff8d3@XBOX03.axis.com>
Message-ID: <c0df4f49-c051-b3a5-358e-36416deb5126@gmail.com>
Date: Tue, 13 Oct 2020 10:00:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <39a0f312f43f4a19919eeec0451ff8d3@XBOX03.axis.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 10/5/20 3:36 PM, Peter Kjellerstedt wrote:
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
>> Behalf Of Joshua Watt
>> Sent: den 1 oktober 2020 15:27
>> To: Khem Raj <raj.khem@gmail.com>
>> Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>;
>> yocto@lists.yoctoproject.org
>> Subject: Re: [yocto] [meta-gplv2] [PATCH] gnupg: Make it build with GCC
>> 10 (which uses -fno-common by default)
>>
>> On Wed, Sep 30, 2020 at 4:34 PM Khem Raj <raj.khem@gmail.com> wrote:
>>> On Wed, Sep 30, 2020 at 1:37 PM Joshua Watt <JPEWhacker@gmail.com>
>> wrote:
>>>> With this patch applied, I get the following errors when using the
>>>> latest master branches:
>>>>
>>>> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_limb_space':
>>>> | mpiutil.c:(.text+0x84): undefined reference to `memory_debug_mode'
>>>> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc':
>>>> | mpiutil.c:(.text+0xda): undefined reference to `memory_debug_mode'
>>>> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_secure':
>>>> | mpiutil.c:(.text+0x14a): undefined reference to `memory_debug_mode'
>>>> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_free_limb_space':
>>>> | mpiutil.c:(.text+0x1c7): undefined reference to `memory_debug_mode'
>>>> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_free':
>>>> | mpiutil.c:(.text+0x267): undefined reference to `memory_debug_mode'
>>>> | ../util/libutil.a(iobuf.o): In function `file_filter':
>>>> | iobuf.c:(.text+0x1c0): undefined reference to `iobuf_debug_mode'
>>>> | iobuf.c:(.text+0x1ea): undefined reference to `iobuf_debug_mode'
>>>> | iobuf.c:(.text+0x2e0): undefined reference to `iobuf_debug_mode'
>>>> | iobuf.c:(.text+0x305): undefined reference to `iobuf_debug_mode'
>>>> | ../util/libutil.a(iobuf.o): In function `underflow':
>>>> | iobuf.c:(.text+0x4b3): undefined reference to `iobuf_debug_mode'
>>>> | ../util/libutil.a(iobuf.o):iobuf.c:(.text+0x567): more undefined
>>>> references to `iobuf_debug_mode' follow
>>>> | collect2: error: ld returned 1 exit status
>>>>
>>>> If I revert this commit, gnupg-native will again build correctly. Any
>>>> ideas?
> Interesting. I had not considered building the recipes from
> meta-gplv2 for native as we only use them for target builds.
>
>>> does it help if you add -fno-common to native CFLAGS
>> No. It works in all cases if I remove the patch and use "-fcommon"
>> though. Oddly enough, in my build having the patch caused the target
>> recipe to fail one way, and not having it caused it to fail another
>> way....
> Are you saying you still have build failures when building gnupg for
> target as well, with the patch applied?
>
>> not sure what's going on there, but I suspect for something
>> this old, adding "-fcommon" to restore the original behavior makes the
>> most sense.
> Anyway, I get the same errors as above when I try building it for
> native using gcc 9.3.1. I'll look into it and see if I can improve
> the patch, or if I will have to resort to using -fcommon.

Any update on this?

FWIW, I think with something this old it's probably best to keep the 
-fcommon behavior rather than try to patch around it.


>
> //Peter
>
