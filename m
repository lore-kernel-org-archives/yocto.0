Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
 by mx.groups.io with SMTP id smtpd.web12.602.1583190201424968678
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 15:03:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=X/73J14w;
 spf=pass (domain: gmail.com, ip: 209.85.215.196, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f196.google.com with SMTP id h8so541596pgs.9
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2020 15:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DSgfV91ndYFrKzVAFshOQBl+1oLZfXzKAjJ9z5FiUs0=;
        b=X/73J14wTPPxcYO+hlSrE9xfWay9hcpTBddYux/26uADwSApJTcpW/nLa9VyjVoBAg
         4Ytu8JNrWCPUrIDEujM7VxhKpHvJbUkS6WigmFAonJr2XcTCkpw/zbWet+6TMZ8SEDsg
         hSEp5HfL65+evOQ34QjZdHsSoh/0iGdZj2jtvqSC+hya7FB47/kovm+ifSuQe5UyYmxD
         yjX+fCCljstfp/BkZ/ZRxJdjJCnZ1X5i1YomTaPJt8xQhUjWcp33fWJCdziZbU2q4Ho6
         iQTqbkepDVALnN/DxsuFtQI8pJd0sH6EXM7aEtRzRyNtHiNjyvwt4vXfvr32P/xAmz8A
         wnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DSgfV91ndYFrKzVAFshOQBl+1oLZfXzKAjJ9z5FiUs0=;
        b=uhwd1AwTw/Le6Fgwf6m5fMFxVZ6OpQPPtVxZNtITqA94CgSDrM0iqHxDLLLY7ufl8P
         EQhWmXrQAjpVo5ZcqTbrn2VjbhZmkslQbmh0eIPqKoHGj2PD2I3/4PwZ2qA3nNu7TKH9
         8TRei2GSOJ3cY9PhUDT5Kd8kpEvzF7lybuEbUc0wGKM5JqjASxYCDEWVNkhiUTdcunWb
         c7t+V10CLeUzATrAxP4ObSSk/LlLaVdh36PYOZxPQBQMrlFuPmI1QlpvXzUj6x94nu3T
         SKI3UFr1cN3/n6t1FB1N3UatG5i7g/4w+CsCjZgg0RXql9kBBmnBoA5HSPWZvHrNyAQn
         CarQ==
X-Gm-Message-State: ANhLgQ3tDCgB2Ho5UXGegfrzgErkLJz+S3uaXtZYRKVmMwT4c7OZCfL1
	NhA2UVVDdkQcCbyavzyD0F8LVP39Gf4=
X-Google-Smtp-Source: ADFU+vvIP6CkC1dsNscL1t+7UOvLaT3MyLoP2knqmqB2CMIU8on175T9LGe18yPkhORPGnooPRHz0g==
X-Received: by 2002:aa7:9a1b:: with SMTP id w27mr1244647pfj.248.1583190199815;
        Mon, 02 Mar 2020 15:03:19 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:8446:2edf:6d4c:9a00? ([2601:646:9200:4e0:8446:2edf:6d4c:9a00])
        by smtp.gmail.com with ESMTPSA id h22sm22047221pgn.57.2020.03.02.15.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 15:03:18 -0800 (PST)
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
To: Denys Dmytriyenko <denis@denix.org>,
 Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: yocto@lists.yoctoproject.org
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
 <9e823c2a-36d2-f2c0-3b52-0e92f86c6a54@gmail.com>
 <35f9783b-70f8-ef58-c113-e1b2fe20e038@kernel.crashing.org>
 <20200302223038.GE1578@denix.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <b1faecfd-b210-abbd-ff76-352495aa0e62@gmail.com>
Date: Mon, 2 Mar 2020 15:03:17 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200302223038.GE1578@denix.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 3/2/20 2:30 PM, Denys Dmytriyenko wrote:
> On Mon, Mar 02, 2020 at 04:27:05PM -0600, Mark Hatle wrote:
>>
>>
>> On 3/2/20 12:42 PM, Khem Raj wrote:
>>>
>>>
>>> On 3/2/20 9:39 AM, Mark Hatle wrote:
>>>> In gcc 8, the behavior of GCC changed and expansion of wild cards to calls
>>>> of gcc were disabled by default.  This behavior may be required by some
>>>> (poorly written) makefiles.
>>>>
>>>> This will allow someone to do:
>>>>
>>>> gcc *.c -o myoutput
>>>>
>>>> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
>>>> ---
>>>>    recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>>>> index 9c0d828..e0463c6 100644
>>>> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>>>> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
>>>> @@ -1,5 +1,5 @@
>>>>    INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
>>>> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
>>>> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"
>>>
>>> this change is fine. is this the only place we need it ?
>>
>> Yes, it doesn't do anything if the generated toolchain isn't mingw.. and AFAIK,
> 
> Where does this bbappend go? Should this patch be designated to mingw layer?
> 

its using an override, so it wont be effective elsewhere, perhaps 
oe-core is better place for it.

> 
>> we're only build cross-canadian there.
>>
>> (binutils and others don't appear to have this option, unless I just missed it.)
>>
>> --Mark
>>
>>>>    LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>>>>    EXEEXT_sdkmingw32 = ".exe"
>>>>    ELFUTILS_sdkmingw32 = ""
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
> 
>> 
> 
