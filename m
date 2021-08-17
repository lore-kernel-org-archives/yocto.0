Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web09.40121.1629211498492146912
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 07:44:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PdkK50zo;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id o20so32217932oiw.12
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 07:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=2borqM9JdSVtB094HTqYTl2kTBbbsQnKGMEsPIMXyW0=;
        b=PdkK50zo/UXPaTjqtomQSb46a73ZDxzfA4GtKdh6fW3LKk1zaBriu9n+KUGyLw7Rr6
         QaklR10vmY4KXYruweIEO61fEf6IoRiCKybubT5a4BtPpXGK0WI/iRzUwddkyFuUEBIJ
         UyXcSB45oktIqXZGF7/XYyOx2USXWRGZcBQNP1F22eXB9mCfBjFaI8T++jRfe+fG9ihg
         pH+NoyLrncTD21nhF4wO4z0HMNx7gyG6pbJdrZw9dA7WREnSUU8rAWs2sZxUFdib4d9F
         c0qYNk4xwhJ5ZhBq3ShiD7D6dkslX+OWj0eh32uN4rg1PhNCDMxzxgv6/r4zn5t6/p75
         VhCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=2borqM9JdSVtB094HTqYTl2kTBbbsQnKGMEsPIMXyW0=;
        b=XVWN4ZXNqv0UQGg89OT3HE5r7H6zAj0Yz2Okr6VN64NQJhoOtZPc+lJqjCIMdZjejB
         OqFkoomVpqAaLt2jVIOX9ZUvI9Jgj3leXBTTAsCX8nhOOYWixKLiYrgfLmyDyGeiX2H+
         ZHBREqq4IckG2HSHyVbvl0U9owgYPzRkdM7i7VNYXrHSpe94/yPL4zcgP8A7ftJkijjM
         Rpf9OsiJfbuRywcMaycsE8ZaVHrbe4MicwRDhJ7F94KTuT2uKs9XoKxpaGaEsnRb3ee4
         2x0GxC+l44JW9NsqogJw3GjjMV2TUcC96mFYq8XvjqDY38WTTuzuCx7avCHQ0/6KC0Of
         ZDsg==
X-Gm-Message-State: AOAM532QksqqZTH5B7a1DiquTwmkP6f3/tcFIQsTzjGoFFMUDegbj7cx
	GXJC1ATNjzSwpGTcQfLHoarbxWbk1WmLSA==
X-Google-Smtp-Source: ABdhPJxFI35iBpd7GqPXEYni6R5RX1Hkmx1ioX7pMIZjc1lgcLusqwdxLmKQu4JJGCaApwU8wljCQw==
X-Received: by 2002:aca:3d46:: with SMTP id k67mr2781012oia.145.1629211497522;
        Tue, 17 Aug 2021 07:44:57 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id y12sm499588oiv.55.2021.08.17.07.44.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:44:56 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw] [PATCH v2 1/3] protobuf: static link tools when generating sdk
To: Sinan Kaya <okaya@kernel.org>, yocto@lists.yoctoproject.org
References: <20210817140742.3110-1-okaya@kernel.org>
 <23ff22c9-a250-fd2c-c199-8392d331596a@gmail.com>
Message-ID: <299fcf00-d052-fd02-694c-d23a19b3a98d@gmail.com>
Date: Tue, 17 Aug 2021 09:44:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <23ff22c9-a250-fd2c-c199-8392d331596a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

These 3 recipes are in meta-oe, not OE-core which means that the 
bbappends are going to cause a dangling appends error/warning. Please 
add a dynamic BBFILES pattern[1] so that these are conditionally applied 
only if meta-oe is present, something like:

  BBFILES_DYNAMIC += "\
openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/recipes-*/*/*.bb 
\
openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/recipes-*/*/*.bbappend 
\
  "

[1]: 
https://docs.yoctoproject.org/ref-manual/variables.html#term-BBFILES_DYNAMIC

On 8/17/21 9:33 AM, Joshua Watt wrote:
>
> On 8/17/21 9:07 AM, Sinan Kaya wrote:
>> Dynamically linked protoc.exe is failing as follows:
>>
>> [libprotobuf ERROR google/protobuf/descriptor_database.cc:641]
>> File already exists in database: google/protobuf/descriptor.proto
>> [libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:
>> GeneratedDatabase()->Add(encoded_file_descriptor, size):
>>
>> Switch to static linkage per upstream recommendation.
>>
>> Signed-off-by: Sinan Kaya <okaya@kernel.org>
>> ---
>>   recipes-devtools/protobuf/protobuf_%.bbappend | 1 +
>>   1 file changed, 1 insertion(+)
>>   create mode 100644 recipes-devtools/protobuf/protobuf_%.bbappend
>>
>> diff --git a/recipes-devtools/protobuf/protobuf_%.bbappend 
>> b/recipes-devtools/protobuf/protobuf_%.bbappend
>> new file mode 100644
>> index 0000000..b53b22d
>> --- /dev/null
>> +++ b/recipes-devtools/protobuf/protobuf_%.bbappend
>> @@ -0,0 +1 @@
>> +EXTRA_OECONF:append:sdkmingw32 = " --disable-shared"
>
> Apologies, this should use the :mingw32 override, since it's not 
> *specific* to the SDK, but MinGW in general. Anyway, I fixed this up 
> for you since I wasn't clear; this is in master-next and I'll get it 
> tested shortly
>
>
