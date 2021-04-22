Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web09.13073.1619101341587233491
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 07:22:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AK/e8Lo5;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id c17so31808262pfn.6
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 07:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=AZWk1R6K2/7VYUpjcjQ04725e9heNoFsiCydI70dAFg=;
        b=AK/e8Lo53OLt4kcAJgDu2C1Gzx7DiFN25eQbKcDqGRL+VlezTuoUiT0x6mUUoKilHV
         qwZpFInjV5oXmdMsvAq4rxxyYZKO3sqTqyYmznqen0S0s6PwMnQYJ6sh9rTu8FAJF1eo
         +w8jnBvnnK0jzwq0264P84gpJUIG+H1DK4NNuowxv38uy/7QHC2sW39lP4lzZXtP+adD
         w1bbGihpX5AjiyYgHsF4uXD66FYSjXOn6mb19IkkKntr70a5cZXCqnlDGDrWdVxoRTWP
         Lt2ffwrOvScN32DGqi9wwuJSy3nFVebx2g178/JYKqnoPD+g3toA/jaid71OiYD0iowq
         rPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=AZWk1R6K2/7VYUpjcjQ04725e9heNoFsiCydI70dAFg=;
        b=YXC5Qavyytu3Vt7ChoBKRMFA7c8g5Ud/2jzpMqEo08RWlFbQmCS+uaI9TalMqWbMet
         UyCvp4c9Zo6ZppxQTdhlV6uujQDEf9KeEo92iE0jJjEAxMrqVRdvVVGN8qqe5Dm48AZw
         ofzQDRj5fzZKeN0AKogCkoUIrKkM3shf4DxmqEz3A1RhRU8OZubALeYQjxEMp/JLarlJ
         VtClXp2clKx1K3/ENtNPkFf6duLhwXIa652BsLxzOCL5HsXpdhDfUvYtBC3b+MYNh2+n
         IjTBy4bvVIu/bZBN5sizT7+R8wu/rY2+JivRuDgfi8f5V8+Q2V2W15wRTFLGEXjqyopZ
         tFEw==
X-Gm-Message-State: AOAM531Hu8MH6K8FAGPh2u1Zs28inwxn8F/FDwCBgX93SugHFjw55bAT
	ej8xl5OsFklF/6+sKJtpWCQGQOIhdfylvg==
X-Google-Smtp-Source: ABdhPJxOQebZVLTXP6nHnMAMY6N7CYW2zHOP4H/10THEu4Y/0M1kzKOlUhOhWMAa+Ia03PVaYKvKNw==
X-Received: by 2002:a62:7556:0:b029:255:f802:45f with SMTP id q83-20020a6275560000b0290255f802045fmr3694622pfc.56.1619101340829;
        Thu, 22 Apr 2021 07:22:20 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:e183:e120:a0a1:83e4? ([2601:202:4180:a5c0:e183:e120:a0a1:83e4])
        by smtp.gmail.com with ESMTPSA id o62sm2376745pfg.79.2021.04.22.07.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 07:22:20 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] packagegroup-core-security: exclude apparmor in mips64
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <20210420144121.30087-1-akuster808@gmail.com>
 <9ae92c9f-f9d0-da35-2dc3-9782f60acc43@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <7a055801-f9a7-2b0f-0c08-3b381a1481e8@gmail.com>
Date: Thu, 22 Apr 2021 07:22:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9ae92c9f-f9d0-da35-2dc3-9782f60acc43@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 4/20/21 9:07 AM, Khem Raj wrote:
>
>
> On 4/20/21 7:41 AM, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   recipes-core/packagegroup/packagegroup-core-security.bb | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb
>> b/recipes-core/packagegroup/packagegroup-core-security.bb
>> index 9ac0d2c..a6142a8 100644
>> --- a/recipes-core/packagegroup/packagegroup-core-security.bb
>> +++ b/recipes-core/packagegroup/packagegroup-core-security.bb
>> @@ -80,6 +80,9 @@ RDEPENDS_packagegroup-security-mac = " \
>>       ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
>>       "
>>   +RDEPENDS_packagegroup-security-mac_remove_mips64 = "apparmor"
>> +RDEPENDS_packagegroup-security-mac_remove_mips64le = "apparmor"
>> +
>
> this should be mips64el
Actuall, this is the wrong patch. working on too many systems.

Thanks for the review.

-armin
>
>>   RDEPENDS_packagegroup-meta-security-ptest-packages = "\
>>       ptest-runner \
>>       samhain-standalone-ptest \
>>
>>
>>
>> 
>>

