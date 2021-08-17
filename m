Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
 by mx.groups.io with SMTP id smtpd.web12.38916.1629205579704128033
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 06:06:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRW8eqLx;
 spf=pass (domain: gmail.com, ip: 209.85.210.46, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f46.google.com with SMTP id m7-20020a9d4c87000000b0051875f56b95so7800143otf.6
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 06:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=guGCfZXfMNJmaEtFsrD35kse11JtRX7bfsU7aLlqubE=;
        b=GRW8eqLx6cmbmQSgclyQrTeH8KWTbtk9M2zWqNDMFktc7G/Er7D6r+zXRnWFBxBlOY
         dmZnqwjfa/gyPcxaZbDuqEYUiKQywFBmLa62R7vvoK5DgI2BHa3rQ8wx2sW95WyN66bm
         8IeUQRL0qFmLzhzcNhIgRMfWbVsXJoKW2ebIjMULxHAqeJPK0s8eVJfQi+39oXc77Pi9
         emI9/E3xcdmKcg9Zf0QlZs9JfB7en4kGxzc2H3geSchfLcajuZTc3kOgHmvwswYkHaqm
         8F/eibAaYOSS2wQK50n6N/uEzswJWbaxKP16VCAnexQcFM6nCUWLkmyUJu0EIhrjdA/H
         R0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=guGCfZXfMNJmaEtFsrD35kse11JtRX7bfsU7aLlqubE=;
        b=OciY6NytCXW6q12MIKB4oJFGKVKKZk78h8avGWA5qLqiGx2OhOvq8EdCheI5MSQhPD
         sqdRHsa1xjafGXeDh/+G/FbAd8+zFFNIRhWiCofQFay7TZVH6uZvwhfrMv6eEJEgVZjg
         4DSLUv0MaYkiWlNtXIgH7mO0IrwEHbsvmLumNffcokkhH4V65U05jxGARBVfdCteGNTT
         Z52YyRYboGj/wpzfKnjpWKqmcywJrm0FjyBk0RokE76logiCsGPjYoxGoKmO5Zl7+zNW
         VnxXgS8fRO58iBBMPh+aFR+MFyrtJzZcgWTZ4GxMVzUkdiNuzuTyeXRbzigdtr42laMv
         hc7A==
X-Gm-Message-State: AOAM531GVSjrWWJ0SyEJEwMFgWOgYeMMKmhDUIpTmtF1TKns5qEYjyi9
	czCv5aG7PwbVTAEM9Lu8IVJrelaNLwYdyQ==
X-Google-Smtp-Source: ABdhPJwLzDMZt2RWKafX25Ig0lLD0y7S+tXHM1EmxMLwlEoyNU++6HMR8Ac7f3EL0N58ENJ8Cz0nsQ==
X-Received: by 2002:a05:6830:3181:: with SMTP id p1mr2597994ots.210.1629205578373;
        Tue, 17 Aug 2021 06:06:18 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id h14sm366640otm.5.2021.08.17.06.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 06:06:17 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH 1/3] protobuf: static link tools when generating sdk
To: Sinan Kaya <okaya@kernel.org>, Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20210817013605.5760-1-okaya@kernel.org>
 <CAMKF1sqpLA2NeM1N-Ro0+aqm_yhvaD7XyxMnN_HZ1NBDm8nLgQ@mail.gmail.com>
 <c0dcf16f-5f21-77cc-b6a9-4f0b542d2630@kernel.org>
Message-ID: <2ca2458d-4754-8312-8e30-16833a621324@gmail.com>
Date: Tue, 17 Aug 2021 08:06:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <c0dcf16f-5f21-77cc-b6a9-4f0b542d2630@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 8/17/21 6:03 AM, Sinan Kaya wrote:
> On 8/17/2021 6:26 AM, Khem Raj wrote:
>>      +EXTRA_OECONF:append:class-nativesdk = " --disable-shared"
>>
>>
>> This is not an inert change can it use some mingw specific override as well
> Change is targeting meta-mingw repository. I looked at other files
> in the repo to see what the pattern is.

All of the bbappends in meta-mingw should be using the :mingw32 override 
(or sdkmingw32 if it specific to just the SDK). If you found an example 
in the current code where that is not the case, it needs to be fixed. 
Either way, you need to use that override in your patches.

