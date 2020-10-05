Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
 by mx.groups.io with SMTP id smtpd.web12.1431.1601931437068132786
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Oct 2020 13:57:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5nsO/a4;
 spf=pass (domain: gmail.com, ip: 209.85.167.193, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f193.google.com with SMTP id 16so2542902oix.9
        for <yocto@lists.yoctoproject.org>; Mon, 05 Oct 2020 13:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=AXRRX+NMmaq5MfuHpTXnwYX+LV2N080Pge2QzAKjJ6M=;
        b=m5nsO/a4uijQnOgh0+/tegch7kf7aw+tdKSLcH85iypTg9mWhTAW8axLRU/2EBonUN
         rSiFpscXE37LjkuLJurrzZXyzFzXrVIYszXlwp23V3gAB/NX0uF13oQzlV4pGpR0Z/WU
         doDcQ+sjMr0LkBqAtc6AUF2Z8sUi1gl6WDdVv/HcTv1EbxcGZR4NGY9OgQZyqUxA0Jm+
         s+iC9Cy1/C3qK2NGkdZTexq9pHV6nvBAkmghpJrnSDuNtyFguUYGSfBLyL/jZbVlhTBq
         ySOCj3YpHl8NaZHUOe7/ZLmZXPIB33lgJAtDzh7Rgx4v1bWYmOiA40/qx0JK0xsI2ezO
         DFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=AXRRX+NMmaq5MfuHpTXnwYX+LV2N080Pge2QzAKjJ6M=;
        b=J7EECrXJzKNXe+X44CVJ4SqHPeQe1p63kQa0x+h5Kc7Zjl3Rv0cXh6m9GJZtlpnhw2
         8G2B6O0SO6dTNeOdBD0w28sQbnkwCLCZS/SjB1D2uo7uq6+4Gz+VZQTIAK8j1quacaZQ
         1ztFMbsCpngqMeJvd/ELygpo3woX7j6a9kyepIZsREx+wEDAvAn2kfxVfHiJg5mYwpJs
         b31W7pC1h3gaNT9Dq6A/nKdo54JU/s9DFAoKiIDUNGgEbr91fdGPhPsp1Qv2K7qGO73w
         jrhp1ejew0UtycmkDjLDVHez2z//H9Jr44hzlIc/zH4cUoVT4MDPnFP2yMDOB0ocksTU
         r8yw==
X-Gm-Message-State: AOAM531uzqXvs6axXq8nXi7aqgDyLPK+pVE/CQQNARojE0CnnLAVopdb
	TMF/gd5npr0Z5NXnMEpIh99ICPv2jyE=
X-Google-Smtp-Source: ABdhPJwNGQvfEM8J7DJxLK+oNtpWReX6By9ipyiEmC65ibImJmbDp5mPNgRf3kjdtlw5JwpSL/mrDA==
X-Received: by 2002:aca:654b:: with SMTP id j11mr778726oiw.77.1601931436106;
        Mon, 05 Oct 2020 13:57:16 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id h3sm335012oom.18.2020.10.05.13.57.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 13:57:15 -0700 (PDT)
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
Message-ID: <1baf2ca3-825e-a9c4-e137-bff278f87001@gmail.com>
Date: Mon, 5 Oct 2020 15:57:14 -0500
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

Correct. I don't remember exactly, but there was no combination of 
"-fno-common" and the patch that worked for both native and target 
cases. The only way I could get it to work for both was without the 
patch and with "-fcommon"

>
>> not sure what's going on there, but I suspect for something
>> this old, adding "-fcommon" to restore the original behavior makes the
>> most sense.
> Anyway, I get the same errors as above when I try building it for
> native using gcc 9.3.1. I'll look into it and see if I can improve
> the patch, or if I will have to resort to using -fcommon.
>
> //Peter
>
