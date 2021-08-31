Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web09.8496.1630428632122988470
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 09:50:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HAuDELC6;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id u6so14818824pfi.0
        for <yocto@lists.yoctoproject.org>; Tue, 31 Aug 2021 09:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:mime-version:user-agent:content-language:to:cc
         :references:from:organization:subject:in-reply-to
         :content-transfer-encoding;
        bh=3viAP5xn7k7tz8dbxt9hooRMDg/JQ3pFP059Ojzq6tg=;
        b=HAuDELC6NZBBefv5WLVw7AgIiNIMrVC3CI8B/zmiB2MNLhqaj2dF0R2+Y5drl5i+bE
         U+opdzQ+K4c76c/oQvQynx0++8i+HcGaSaFPnCWczo+VtnClLVp38B9+8BvRyTDmSgL3
         rJAU/mlmgjtulXItaA89MGj0oIlr+iwNEmmInZizsxAdiPQK8bO706WzVyzwUQGTDC/+
         IGulOGRDx4K14g6J4OwsAhkF5xvNvYjrMwSv94PpMplMGzLIRlunEP9ctBWxuaQ5wSQV
         E2qgTXSN3Tr4jSNyQbAa7k0BwfFtm0hC5aBa/HhgSSXNG9V/Jjj4iuCJL4e1VNg6GFhU
         HlpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:references:from:organization:subject
         :in-reply-to:content-transfer-encoding;
        bh=3viAP5xn7k7tz8dbxt9hooRMDg/JQ3pFP059Ojzq6tg=;
        b=nX0wJAylGExbZFrUuMA/q5uTYWwvc9cVnLUympIVrKupgLELkPfNK2kdxOu+DshBav
         59nC7dvM9X71QqS+a/yV4ydFOkU5XcLtIax8FN2C0T/jPsjcLWq3zVYEhscRaYIYt0ZT
         BNyBYYQrODaLt7ArLeBSS4Ygz8yelSqBDyp6vae/ggzrCpDNNXS9UtGDaUT6NQjy3s9E
         vdtOAFd6X0KXxLm2yNgiwoZRIcRIs+yBZG9hg61Gnd1mHPfEVwCuGjHqzria3IMmZtD8
         HlRRxttvDbikwj9dfzvVksc/x1E/vIEmU0oeTVB0h3BAn42vAXagpm41+EoizWLEesJT
         vV6A==
X-Gm-Message-State: AOAM533BdUJV2IGv5p56V45p6kyAzBKq7pAATC79GrMASg1ox+ZUbtxA
	n0KrFGCG9s5I4qP4QNgJMUk=
X-Google-Smtp-Source: ABdhPJxH3iCCpJToA4u5ia95uejbtDBZ8wd6CwhMw/MV8rfipxhw3CawDsQpSy3HOnb8s36DhyafLQ==
X-Received: by 2002:a63:b950:: with SMTP id v16mr27713545pgo.328.1630428631418;
        Tue, 31 Aug 2021 09:50:31 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:f5c4:30bc:bcdc:7d1f? ([2601:646:9200:a0f0:f5c4:30bc:bcdc:7d1f])
        by smtp.gmail.com with ESMTPSA id b8sm3463678pjo.51.2021.08.31.09.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 09:50:30 -0700 (PDT)
Message-ID: <d385caa5-bf55-e4af-325c-b792db74320c@gmail.com>
Date: Tue, 31 Aug 2021 09:50:29 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.0.3
To: Ivan Riabtsov <ivriabtsov@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <16A050FBE1213E46.30479@lists.yoctoproject.org>
 <CAKAnv4EUDy9Z8M1BCv7rR-_4RBFkbMCXUuf-Po-CPDcmhmjaUA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] editing Makefile after configure stage to disable -Werror
In-Reply-To: <CAKAnv4EUDy9Z8M1BCv7rR-_4RBFkbMCXUuf-Po-CPDcmhmjaUA@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 8/31/21 12:52 AM, Ivan Riabtsov wrote:
> i cleaned out -Werror wherever possible with command:
> 
> sed -i 's/-Werror//g' $(find . -type f -exec egrep -l _no_Werror {} \;)
> 
> and elfutils is builded

Please try backporting this fix

https://sourceware.org/git/?p=elfutils.git;a=commit;h=a01938d584b91e747167bb4b3f30ec300c4d6e43

if this is not enough then I think you just need to edit config/eu.am to 
remove -Werror and perhaps thats enough, but upstream elfutils is 
generally receptive to
Werror issues, so I would also suggest that in parallel you report it
upstream as well.

> 
> вт, 31 авг. 2021 г. в 09:41, Ivan Riabtsov via lists.yoctoproject.org
> <ivriabtsov=gmail.com@lists.yoctoproject.org>:
>>
>> Hello, I have the following error:
>>
>> ../../elfutils-0.166/libelf/libelfP.h:53:30: error: ‘__elf64_msize’
>> specifies less restrictive attribute than its target ‘elf64_fsize’:
>> ‘const’ [-Werror=missing-attributes]
>>
>> i try to solve this by patch:
>>
>> diff -Naur elfutils-0.166_orig/libelf/libelfP.h elfutils-0.166/libelf/libelfP.h
>> --- elfutils-0.166_orig/libelf/libelfP.h 2016-01-12 15:49:19.000000000 +0300
>> +++ elfutils-0.166/libelf/libelfP.h 2021-08-30 19:38:44.866175082 +0300
>> @@ -48,6 +48,8 @@
>>
>>
>>   /* Helper Macros to write 32 bit and 64 bit functions.  */
>> +#pragma GCC diagnostic push
>> +#pragma GCC diagnostic ignored "-Wmissing-attributes"
>>   #define __elfw2_(Bits, Name) __elf##Bits##_##Name
>>   #define elfw2_(Bits, Name) elf##Bits##_##Name
>>   #define ElfW2_(Bits, Name) Elf##Bits##_##Name
>> @@ -632,4 +634,5 @@
>>   #define INVALID_NDX(ndx, type, data) \
>>     unlikely ((data)->d_size / sizeof (type) <= (unsigned int) (ndx))
>>
>> +#pragma GCC diagnostic pop
>>   #endif  /* libelfP.h */
>>
>>
>> But the patch does  not work, error appears again.
>>
>>
>> i try to add --disable-werror to configure flags, but i have follows warning:
>>
>> configure: WARNING: unrecognized options: --disable-werror.
>>
>>
>> The only solution to the problem I could think of is editing the
>> Makefile after configuration, please tell me how this can be done?
>>
>>
>>
>>
>>
>> 
>>
