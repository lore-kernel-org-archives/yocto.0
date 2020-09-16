Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
 by mx.groups.io with SMTP id smtpd.web12.23691.1600266293283193376
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2020 07:24:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pttHldeJ;
 spf=pass (domain: gmail.com, ip: 209.85.167.193, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f193.google.com with SMTP id u126so8250309oif.13
        for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2020 07:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=fPzA+WUh72WzKGhFviH/HqWjcmHCAGCifAHuJHPHimw=;
        b=pttHldeJ1gnnlBkQMtw3coUspOqw/+Fa7g4vYgbgPm5HSGH8ICaRS2g+rneij8RLka
         FSWrbW6wpRndO7kwBLo6Qvi2aO7LfRwPi3mSk4yvQJZ4wMCtwnPRl6fRlo18FYMBW0ai
         Of1IRIsNBlfJhywM5UCmDqysoyUrcS5vvEnaiGcagARkoWZTUBS2ppJjLniENuFhwj2s
         QdA6zIfcCToFuie3nrg/Ei9Xx+Qww06V8NwAT1fzZT+3moibr22rtRAFmO27VVXjr0ub
         3HwJ/N4zhaGLzb2qHHDfBRU8M8jGPqCnMAmrBW97YhvbRib3LYXU2bUrsDC/Syz2L36S
         80Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=fPzA+WUh72WzKGhFviH/HqWjcmHCAGCifAHuJHPHimw=;
        b=kR6P22cI/TsIDe/B+36wX5kFhnWjdzFsmv1nAhSPkRHyISbXF1oSnhgwXEAWU5TrdO
         JGTtd3X9xrtzDICUm0TPtnpMni2yNL2bhl/S+Fk9VLdf5OCHzhA5c2B8mmmk/q27/W7d
         9WGgrxkw9sEY96703XHRX4JccpkMQFcKo0MfTiUpLv5G4DroP5hF4aya8EpfVnA4+Oda
         VOyOPfBfEXAbm9qHfyDgvrVx0jGe3USkSpf5DdjL9Q5wuQK3nE/O5u5UotqsMR6W6dPx
         R4jw8EGpt2bnLip+xQ01crDPHogCxIDFUDPDH7A+l1nT8KtxaQ7TjIohoJNlKVgWYAbJ
         JORA==
X-Gm-Message-State: AOAM5305dyFG+rhNfRK53L09HAJUdxKlRcFFWSwXtxiSQbsQC1ld4/5t
	gIfT97nZ/OaX3NBBEf9r22FEqRCNU3c=
X-Google-Smtp-Source: ABdhPJzHJv3sJ5aI7uAh6QxTa1J+JymIvHQzBiP229hiGSmbfo6NCQtswvKGNUM7qqSQwstlEZHbwg==
X-Received: by 2002:aca:c6c5:: with SMTP id w188mr3182986oif.144.1600266292368;
        Wed, 16 Sep 2020 07:24:52 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:4964:c81b:ad7d:d6d4? ([2601:202:4180:a5c0:4964:c81b:ad7d:d6d4])
        by smtp.gmail.com with ESMTPSA id e18sm9295915oiy.52.2020.09.16.07.24.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 07:24:51 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 2/2] apparmor: exclude mips, not supported
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20200916031205.9456-1-akuster808@gmail.com>
 <20200916031205.9456-2-akuster808@gmail.com>
 <CAMKF1sr-T58eyLZN3bHdojsDgVD-kmHgS2JDusHrjvjs3qLfsA@mail.gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <cb196eef-6ac4-2574-ecc9-39566c27544a@gmail.com>
Date: Wed, 16 Sep 2020 07:24:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr-T58eyLZN3bHdojsDgVD-kmHgS2JDusHrjvjs3qLfsA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 9/15/20 10:11 PM, Khem Raj wrote:
> title says mips but it actually is for mips64 only it seems.
right. easy to fix when I commit. Have not built qemumip so its unknown
at this time.

-armin
>
> On Tue, Sep 15, 2020 at 8:12 PM akuster <akuster808@gmail.com> wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  recipes-mac/AppArmor/apparmor_2.13.4.bb | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
>> index 552cac7..dcdc1f7 100644
>> --- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
>> +++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
>> @@ -30,6 +30,8 @@ S = "${WORKDIR}/git"
>>
>>  PARALLEL_MAKE = ""
>>
>> +COMPATIBLE_MACHINE_mips64 = "(!.*mips64).*"
>> +
>>  inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd features_check
>>  REQUIRED_DISTRO_FEATURES = "apparmor"
>>
>> --
>> 2.17.1
>>
>>
>> 
>>

