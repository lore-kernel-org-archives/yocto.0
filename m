Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web12.26969.1605717295659874188
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 08:34:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PAyRybOZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id v21so6748plo.12
        for <yocto@lists.yoctoproject.org>; Wed, 18 Nov 2020 08:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GO60WUXf3m0EQK4rQIsx36aLWqwaibkPl4p1yS+xb6w=;
        b=PAyRybOZ7t5CsJbUxH9hnwtxJCEzGrLEu+2xwh1DHlBg69Rg4b+9HSk5LMR4r6XMnB
         I2Z/r7IOd7ijNxnLH/cNlZ3zCgEsVftmnTiNLxbCHl3UBo6hgo/DFWN4F2Mm/i1Oy7CO
         OtqZ7BlbwO4WU9UsRHaKZGx1tQ9Ura9OtW64p1VicVj/3ZphIXSh1oG1pu2YJwHGE93z
         7pnF3HRZhWkiYF9zunDjfr43m00Q9w50WRMJ2bfkSAQxO6N5+6Rm6vejVblF95s/6J2E
         Iy9YuvR1xii6XRWU/VuIcxffmpwanw+v3KHTo9kqqsP+5ThnKvnnWBvSrAsciRN3K2Fl
         UEXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GO60WUXf3m0EQK4rQIsx36aLWqwaibkPl4p1yS+xb6w=;
        b=FnnwiLcuRKYIM/Q2CDceenBK9wuEza2uIJhDZnqwVZ86y7yW+LaavfJWlPVB6h9GMG
         biKcRKYiWcgbLdici84ht6XePcHIRHauVPznut/s07NgcmlUQKXynrjtD7RLGJy7KHfj
         lAB13kvCWbHydJBmFnose+63flEvrZB6rNLlP1S86iQR7kqowC6LSt7qj2oX1dsusVQC
         HnwjVwuO+Ec/W+GUeRHoImQJJBxYtUy1qIsCKv374mTcGg+Wlo/MIefyP7TYB5TERBwY
         rveafjrGwUSI2pDqpUQy5N7e0ScMS/Fap0hIp7SSLQJQ8dN1T0Fh8+uyQA99qDTgfXK8
         WyCg==
X-Gm-Message-State: AOAM53010z/GbAGfdjWBsKuET/zki6FOVoGLYtQxOBDrfrwQwsnd2xMO
	mSxsj0dMLklfp1wQrdnqrmde+GgJ371fYA==
X-Google-Smtp-Source: ABdhPJz3DwbwJQp6cl0CIBj/tOdW69IQlDbV3rm9+AXYf1IRAtf7y2XMQmRbuk7yCD8FfnmxazsHrg==
X-Received: by 2002:a17:90a:f492:: with SMTP id bx18mr653725pjb.123.1605717294715;
        Wed, 18 Nov 2020 08:34:54 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::4611? ([2601:646:9200:4e0::4611])
        by smtp.gmail.com with ESMTPSA id gx24sm2983900pjb.38.2020.11.18.08.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 08:34:54 -0800 (PST)
Subject: Re: [yocto] qtwayland compile issue 5.15 #dunfell
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <aWty.1605668341566593814.GDqu@lists.yoctoproject.org>
 <MADEUP.16488B9785EAF15B.27344@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <e5a216d9-454e-4eb0-f42a-dd6f041e431f@gmail.com>
Date: Wed, 18 Nov 2020 08:34:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.16488B9785EAF15B.27344@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 11/17/20 9:40 PM, Khem Raj via lists.yoctoproject.org wrote:
> Find  QSizeF
> 
> newSize(qMax(width, 1.0), qMax(height, 1.0));
> 
> in src/compositor/extensions/qwaylandxdgshellv5.cpp
> 
> and change it to
> newSize(qMax((double)width, 1.0), qMax((double)height, 1.0));
> 
> and see if it helps.
> 

btw. qtwaywand worked fine with gcc and clang on latest master for rv64
so please describe any local changes you are carrying

> On Tue, Nov 17, 2020 at 6:59 PM sateesh m <sateesh0457@gmail.com> wrote:
>>
>> Hi Guys,
>>
>>                I am getting qtwayland building issue using dunfell version. can  anybody help me to solve this issue.
>>
>>
>>
>> Regards,
>> Sateesh
>>
>>
> 
> 
> 
> 
> 
> 
> 
