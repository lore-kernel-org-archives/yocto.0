Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3901.1619734898325202505
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 15:21:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bjmzqq4g;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 05CF038C0881
	for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 22:21:37 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id 65-20020a9d03470000b02902808b4aec6dso58025940otv.6
        for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 15:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Ft73cnFP8KH+UmwVsvLMFOu78RnbgK/CaWKPoXOEbDU=;
        b=Bjmzqq4gIxsMCDaJ2IUQWIaGHsxqcpiRkZcAzBLGcQry2gdLnBheF99D9tcCvh9J0z
         dbXEhqQbtOaeC/DnJ/i8Y0P2Xm1S9j/M0oclcKA0dFPpFu/f9oZ1/McC4pCLCWqcMNwQ
         vEx/qGI2SC1XathCpQXjj6PbntKqFyoqmha6iSWbeQuuKITpIPzgcBUlYLRRzJOkZjxk
         l41G8Bz7EPod8Fg06vhCGHmY/APW8s4WK86fwH9pbrSSNJfcfJUEr0hWnqOL73taPX45
         dtII+iWkHDAJjJcKxo9ypoDQ9NPHa1Z1If2G3W5fpN6MmplF2d33ZJqd05PPtjkGyLFM
         84Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=Ft73cnFP8KH+UmwVsvLMFOu78RnbgK/CaWKPoXOEbDU=;
        b=nZXU57DEpCYHwPw1TkLK87flCztGKg34RDfr90kT7U6BUFY4Kbdj0NMcMiHJ6iM4kL
         pwLpo4ofYgCF7qVyWk9azfXKUygnzdR8d6px2AGsElrhCvLzm0fm0G88mAzdi6KPraT0
         ctl2aN/Gb6BWTbcyNKq/vy0kbBcySULzwQ0aPe/MKyM+aNK8AOfyqUGCsqlpQQnPwWDQ
         LbILgRQPMyD/l6a9pRi2wQ1zVP369UhQc7GC578i17I/0HSBxjyrelGDtc8A4pxLvbvA
         CBWQAkrdQvYD33L+13DD4yr/N17gLqF7vchHDNOijhjMn/6bzy9cbZsKj0O2YG1gAtTD
         LfMA==
X-Gm-Message-State: AOAM531eRlimY/f/V7jaVOikMHMX8y1n05LbFlR2HhdL+HcHHtDrmy9i
	TSOCGE4aMGJ+pw5Fzf1C2mc=
X-Google-Smtp-Source: ABdhPJz04/LI+KypMMAbYwbFg80hZiDR3zLJyOCc9unDHA++tDgfGNqyIfdrj0YCGFbAvmmfn/SsbQ==
X-Received: by 2002:a9d:6d9a:: with SMTP id x26mr991616otp.253.1619734896214;
        Thu, 29 Apr 2021 15:21:36 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:a862:d97f:9823:714e? ([2601:202:4180:a5c0:a862:d97f:9823:714e])
        by smtp.gmail.com with ESMTPSA id x123sm322412oix.23.2021.04.29.15.21.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 15:21:35 -0700 (PDT)
Subject: Re: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: Randy MacLeod <randy.macleod@windriver.com>, Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
 "Jia, Hongxu" <Hongxu.Jia@windriver.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 Bruce Ashfield <bruce.ashfield@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 "Wold, Saul" <saul.wold@windriver.com>, Joshua Watt <JPEWhacker@gmail.com>,
 Jia Zhang <zhang.jia@linux.alibaba.com>,
 =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>,
 Derek Straka <derek@asterius.io>, Kang Kai <kai.kang@windriver.com>,
 "jpuhlman@mvista.com" <jpuhlman@mvista.com>,
 "steve@sakoman.com" <steve@sakoman.com>
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
 <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
 <413f6d51-50a3-c38e-325f-6493059976cb@windriver.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <910eb592-5aea-70c1-eb07-0609749cf255@gmail.com>
Date: Thu, 29 Apr 2021 15:21:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <413f6d51-50a3-c38e-325f-6493059976cb@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 4/29/21 12:37 PM, Randy MacLeod wrote:
> On 2021-04-27 1:06 p.m., Khem Raj wrote:
>> On Tue, Apr 27, 2021 at 9:48 AM Randy MacLeod
>> <randy.macleod@windriver.com> wrote:
>>> Hi,
>>>
>>>
>>> I've CCed some of the maintainers of more widely used Yocto layers
>>> to get comments on about tagging. Please add in people who I may
>>> have missed.
>>>
>>>
>>> For a while now, oe-core has had a yocto-X.Y tag in addition to the
>>> release branch name. This helps users easily find the exact commit
>>> that corresponds to the say 3.3 GA release. There have been some
>>> omissions in tagging but Michael and Richard are adjusting the
>>> release process so that tagging will happen more consistently.
>>>
>>> Most yocto layers have not adopted the tagging perhaps because they
>>> weren't aware of it so that's why I'm writing this email. Tagging
>>> will make it easy to find the first commit for a specific release
>>> independent of what the branching policy of a layer is. Layer
>>> maintainers sometimes create the release branch in advance of
>>> when oe-core is released and by adding the tag, it would make it
>>> clear when the layer considers content to be officially released.
>>> Of course it's up to users to decide if they are going to follow
>>> the HEAD of a branch or, for some reason, stick with a tagged commit
>>> or private branch off that commit.
>>>
>> I think this could be a good thing, although it does put the burden on=

>> release maintainers. mostly they
>> test against the tip of the release branch,=C2=A0 So if yocto project
>> testing is including these layers for wider
>> testing and can then recommend a validated commit then perhaps this
>> could be made viable.
>
>
> How about:
>
> https://git.openembedded.org/meta-openembedded/commit/?id=3D71b546ed859=
5b14d29efc1e8b951f8c845ad10c4
>

The implication here is that the Yocto Project has run QA if this is in
response to Khem's statement above, Or am I miss interpreting your
recommendation?


Now regarding meta-security, I would not use a "yocto" named tag.=C2=A0=C2=
=A0 I am
not=C2=A0 a fan of an upstream Project telling me to use their tagging
scheme. If I do that, then I need to be open to WindRriver, MontaVista,
Petalinux, Mentor, Enea, Arm and=C2=A0 etc tags.=C2=A0 Those Companies se=
nd me
patches.=C2=A0 Does RedHat tell the kernel.org to use their tags? No, its=
 the
other way around.

If I would tag meta-security, I would have to write up the meaning of it
and possible a policy/process around it so if a new maintainer came
along they could=C2=A0 continue that process or do something else. This i=
s a
hard sell as I am not seeing the benefit to this layer in adopting a
tagging scheme.

- Armin

>
> ../Randy
>
>>
>>> Are there any concerns about attempting to do this for yocto-3.3
>>> and later?
>>>
>>> Should we make it a requirement for yocto compliance?
>>> Should it be a feature tested by the yocto compliance script?
>>>
>>>
>>>
>>> Here's what's in oe-core and bitbake now:
>>> $ cd .../oe-core.git
>>> $ git tag -l | grep yocto-3
>>> yocto-3.0
>>> yocto-3.1
>>> yocto-3.1.7
>>> yocto-3.2
>>> yocto-3.2.1
>>> yocto-3.3
>>>
>>> $ cd bitbake/
>>> $ git tag -l | grep yocto-3
>>> yocto-3.0
>>> yocto-3.1
>>> yocto-3.2
>>>
>>> --=20
>>> # Randy MacLeod
>>> # Wind River Linux
>
>


