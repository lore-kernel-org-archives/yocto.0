Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web12.5280.1612511329059198310
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 23:48:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZoLKT90n;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id j21so2409839wmj.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 23:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rQgvnGW9mIQScPHJAp/hqZZgdPffPx49QtZJox81qlc=;
        b=ZoLKT90n286qjTkXfqeoQRpIe6E3XO+aGerCgIVUZklBFaezQh3994gMdSi8xQmPYY
         Z4lhZrNz/SZUfvQGVuPp+urVjWJG+cSgPfg0+nYmJT+GxDVSI0ZxAQGKp+7NsYszKTOH
         tw08zU7L18vnpmBsU/MRn4N2H5SMRbTrOWuvA8jHmmaM774dUFdqhFsEmyUNUhZ7ovva
         0kfn95rS9SH3f+q3M/iH9M1Bjb9yfey8a6YX0lb7ODtLXnTusvIcALDS35Sz2OE/9ju9
         vfTSImZLRjnrI8zXQPX1FgAREBSF2v7nXbLOc7F8MKbRip58vFYRs0m7X65tKdoFWgY9
         O0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rQgvnGW9mIQScPHJAp/hqZZgdPffPx49QtZJox81qlc=;
        b=Ebys7kMcRAG6vj2RULQQ5eOsUeva+qGI6xqsEv5O6lx38KG9IVGRK0DRUPJS0z7V7n
         IkGCI6npG6YNIfsocq2rLxZfk+86mnzDV08LJiwddC11tmntIl86sdoBavSuOTnady6L
         lvazfQOteYG1DyRO+EBKDuclEqWmNQuBCJBO6HrdZ7DE73x3F+/Q0m4YAZc1dESrwdxS
         vWottX6cF4EvwdMvj3wJNkMHqvS3yKFPevE5e96eKsfuqOCRaViZa6LL6Ad9AZPWua2f
         BytuZcNnVLHzpd8KFlTeoGVUgbtFrshbAWTJUNSBtN4dwG4yCDP6gzXaC4GO+uaaBh8J
         DfzA==
X-Gm-Message-State: AOAM531xlyx0DhDijH8cUm8CVhuGUi5e0u0Esc7N/axdqnUSH75t7Yua
	0fgIExUSeZbtodgeAoSiFfA=
X-Google-Smtp-Source: ABdhPJwjvMa85kJ92nPcIA6r7RAsE1YkHFuRZ+r5evsTHjoVLg11/7roXUsUH6zy8KPUEmUlcDQk8Q==
X-Received: by 2002:a7b:c853:: with SMTP id c19mr2425599wml.118.1612511327543;
        Thu, 04 Feb 2021 23:48:47 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-140-5.home.otenet.gr. [2.86.140.5])
        by smtp.gmail.com with ESMTPSA id b18sm11499547wrm.57.2021.02.04.23.48.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 23:48:47 -0800 (PST)
Subject: Re: [yocto] [prelink-cross][PATCH] Add SPDX license headers to all source files
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Meh Mbeh Ida Delphine <idadelm@gmail.com>, yocto@lists.yoctoproject.org
Cc: mark.hatle@kernel.crashing.org
References: <20210202105438.21650-1-idadelm@gmail.com>
 <482207e7ba33b79b30e1357c64fd85353519f00b.camel@linuxfoundation.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <8ff03c82-18a6-b246-252d-d5e33fa2fc0c@gmail.com>
Date: Fri, 5 Feb 2021 09:48:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <482207e7ba33b79b30e1357c64fd85353519f00b.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 04/02/2021 19:17, Richard Purdie wrote:
>>
>> -   GNU Lesser General Public
>> -   License as published by the Free Software Foundation; either
>> -   version 2.1 of the License, or (at your option) any later version.
>> -
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/

I guess the correct SPDX id is then:

LGPL-2.1-or-later

In order to get this right I would highly recommend to use fossology to 
look at those files.

>>
> 
> This file mentions "GNU Lesser General Public License" and version 2.1
> which is not GPL-2.0!
> 
> It is critical to get this bit right.
> 
> Cheers,
> 
> Richard

Regards,

Robert

> 
> 
> 
> 
> 

