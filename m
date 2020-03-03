Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
 by mx.groups.io with SMTP id smtpd.web11.5284.1583248756333023083
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 07:19:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=naaI/Z6I;
 spf=pass (domain: gmail.com, ip: 209.85.166.193, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f193.google.com with SMTP id g126so3090880ilh.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 07:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=V/q37n2ggiaFztq6DDdm8rPAL3zblcayypO5yOIIS5E=;
        b=naaI/Z6Iw6UAaP1rhYQbWzoi0bnXibe6HdgR4gIQH0UK8ppmn8p7fGNQFrU7uzSGez
         hbkxGC5CcR1cfH2RIAI5sb/MDvaKZdDsxQdiBlaV2d9NDYVHKXIOhf1gLzRofe4FSanz
         eoCNHUGAGHLZwzjKDGiIdlHmlicHiZMAFg2pW9EcnwdJ/mqwwk0edWxGwKTm6s9AbTmy
         gv1TIP198oSrnkKb/i5DzOBp7e4Wx3NtueSVjDFh9B1g7otZF4RrxpYVZz4+oZJMeHqP
         JjOV7SefPHVO2Bt2rLHTuB3AXD2bvg55deQ28+SY5kv/AKUWwt+BETLl0eKJG4Ty7P3y
         5buw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=V/q37n2ggiaFztq6DDdm8rPAL3zblcayypO5yOIIS5E=;
        b=R3akGjBGc7Irwz/aHOA5tXpCmRHdt+YUeT7iyh6FhW+aeEBqAjgOJt/rX537YQUWej
         JKRgNGt/3+6QGY6tO5xbzw+7OxyAc90L6oPjtPm63KD2QIhPzLSSIDiaxLlC55H61wc7
         KHRmBjojIe0XmLelR76gYYASa7IgAocqmc/pgNsxxs0hq7ng+TjB5xXwwsOJY5kMGXsw
         nvjsSVbaqJo9nWWZxcm+2++j5RYOqmF+9s43EWHXDR4Bny9QvQ6T/jwMK+asOQENT9BZ
         kDggHlnJv+4J8VW8ZZGMT1sOixbSvGzvaQnJYUrl/O+1XtN8W0o/RAwALf4K4yEBFSa/
         3Ckw==
X-Gm-Message-State: ANhLgQ3etO4Ezw9Y67ke6ybZIQyRBNlkj3xy9XFVnuXgB0RsH6pMPyaI
	4kOmhHuskbaZjRyxDNkcMl5uut+B62Q=
X-Google-Smtp-Source: ADFU+vuLhHiAIMUaQgSonxDQSVy9P5MYNVuaB59jSQj0IQtcmduknbGybh1S6RwNUTOb7YRl39g7rw==
X-Received: by 2002:a92:49cf:: with SMTP id k76mr5208077ilg.207.1583248755400;
        Tue, 03 Mar 2020 07:19:15 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from [10.30.196.58] ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id q1sm7951600ile.71.2020.03.03.07.19.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 07:19:14 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [[meta-mingw][PATCH] libgcrypt: disable amd64 optimization
To: Mark Hatle <mark.hatle@kernel.crashing.org>, Adrian Bunk <bunk@stusta.de>
Cc: yocto@lists.yoctoproject.org
References: <20200225180214.114643-1-mark.hatle@kernel.crashing.org>
 <20200225183616.GA9058@localhost>
 <61ddf01d-b0ed-ce85-4518-79fcc48d1061@kernel.crashing.org>
Message-ID: <8c11ff9b-4e2b-178b-b713-76f44301f7c9@gmail.com>
Date: Tue, 3 Mar 2020 09:19:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <61ddf01d-b0ed-ce85-4518-79fcc48d1061@kernel.crashing.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 2/25/20 1:32 PM, Mark Hatle wrote:
>
> On 2/25/20 12:36 PM, Adrian Bunk wrote:
>> On Tue, Feb 25, 2020 at 12:02:14PM -0600, Mark Hatle wrote:
>>> amd64 optimization when using with mingw32 sometimes results in:
>>>
>>> | ../../libgcrypt-1.8.4/cipher/rijndael-tables.h:103:24: error: expected
>>> ']' before '.' token
>>> |  103 | #define encT enc_tables.T
>>> ...
>> Please send a complete build log, this looks like a parallel build
>> failure where some .c is compiled before some header it uses is
>> fully generated (or something similar).
> I'll reply with a private email to where you can get a copy of the build directory.
>
>>> --- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
>>> +++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
>>> @@ -1,3 +1,4 @@
>>> +EXTRA_OECONF_append_mingw32 = " --disable-amd64-as-feature-detection"
>>> ...
>> I assume PARALLEL_MAKE = "" would also work instead?
> I tried this and it didn't appear to make a difference.  I only see the problem
> when building for mingw32.

Did we ever figure out what was causing this? It does appear to be some 
sort of race condition at the moment, and I'm surprised we haven't seen 
it on the autobuilder (we have pretty good test coverage for meta-mingw 
there).

>
> I've never seen any issues for any other SDK target.
>
> --Mark
>
>> cu
>> Adrian
>>
