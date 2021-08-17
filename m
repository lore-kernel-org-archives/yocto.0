Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web10.43181.1629223816004658942
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 11:10:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oF/4H2WI;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id m7-20020a9d4c87000000b0051875f56b95so8889705otf.6
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 11:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=x61C5987/WBikJpMBJPNgB7MKAzXBry/0PxMSRrFcs4=;
        b=oF/4H2WIGw8KnMpgYSQuzaot5TCjfdAv3m+2Cm6Ey35wDu17Hz+/vW/cigcY0eSjWN
         lL3tsxWGON+ZAyMq083sBYPMxJRIK3AuLCqnJWVOvlC4DoSBH/GEK7YwW7HMLfXbw9np
         00n2bTP+AKixIUCfq/Hzbr19CZxRWHGhs3NbJXJsCCx1rNuJhwjjlSOoplwuoFUK7WKE
         x8jydlEt2lNn2VOEUprTtR3QgAyn4/hkAyUC9BvAPJmjK5tT3HYD1Nyf3L01VBV70/OY
         BciJ2FF5MrmkP4yPQEw/NqAOWRzXVVwvHXt4/jPvu1tBTpbel7fMo2T14ks2hLdcNglO
         VDzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=x61C5987/WBikJpMBJPNgB7MKAzXBry/0PxMSRrFcs4=;
        b=mcWBQhQ10RX+YI7VEUM4bfKkubv1bbUvTupmRMqBeSNJ0Pf8Xh9LZ4HPpX1kL7I5Rf
         FbolWLgAq2N1Lq8x3R2RVn3hHTfnLzI6sXhpfRbaZPkGIRYX2QDjZgcsEnB40MZNy6X9
         IrBLCnbMN4h6jU1VwxLXNaSLezHbXHkZgTPDXMo7Grg0dfKjUGt8VTCnKfA/+n1g650P
         Qft0l1GzrQ8MhKMjhKAS7Ukvj3cCCof7DqcgGVQsVuOBqfg4BGVZ4+5Q081ZyS+Tfkqt
         I2m+kcKwK3MGryRoPSjKu0ufKyJ6Qk69gfzgxak74LfEjPW8LuQZJy85BjIN7oaCnRkE
         Mk+w==
X-Gm-Message-State: AOAM531DhAHZZyuZxHkwI+qEAGukf+SwQRqRsJrORqEtvZd4TCt8cXFH
	GQRo6hutMJ0PrXzZAo9iz5i2M0Wr9MgtNg==
X-Google-Smtp-Source: ABdhPJw5gUTvdJD9WXCHYriN99ej6ltHGy1C54sOdioN6b0OfZhiGNu6miBHoDlj3Bg/TrBvckeYjg==
X-Received: by 2002:a05:6830:b84:: with SMTP id a4mr3557511otv.357.1629223815076;
        Tue, 17 Aug 2021 11:10:15 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id u14sm533450oth.73.2021.08.17.11.10.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:10:14 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw] [PATCH v3 1/5] protobuf: static link tools when generating sdk
To: Sinan Kaya <okaya@kernel.org>, yocto@lists.yoctoproject.org
References: <20210817150957.18246-1-okaya@kernel.org>
 <7c2cf6b1-cbe1-35f6-2fae-39d5beed930c@gmail.com>
 <6e55b59f-c9bb-5357-8b57-f0f1cc1f11fb@kernel.org>
Message-ID: <98f08e04-6920-27c7-87db-12d6d390cbde@gmail.com>
Date: Tue, 17 Aug 2021 13:10:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <6e55b59f-c9bb-5357-8b57-f0f1cc1f11fb@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 8/17/21 11:29 AM, Sinan Kaya wrote:
> On 8/17/2021 7:01 PM, Joshua Watt wrote:
>> I had to clean these up a little bit and pushed them to master-next.
>> Please verify that they still work for you and if not used them as a
>> starting point and send a V4 patchset.
> Sounds good.
>
> What do you think about this?
>
> My reading of the problem says that the problem only happens on win32
> platforms due to how DLLs initialize the heap.
>
> We have use cases of both dynamic and static linkage for the
> target build that we have not seen any issues with.

Are you building with "mingw32" as the target (not as the SDK), and it 
works there? I wonder why it only fails for the SDK build and not the 
target build? If that is truly the case, then yes I suppose it should be 
the "sdkmingw32" override. The strange thing about that (and why I 
thought it was incorrect) is that we have a few recipes that disable 
shared libraries and/or enable static with just the "mingw32" override, 
which is why I assumed it was a general limitation of MinGW, not just 
the SDK. I looked through the recipes, and it does seem more apparent 
that it is inconsistent, with a few recipe using "mingw32", a few using 
"class-nativesdk:mingw32", and a few using "sdkmingw32".


Anyway, please send a V4 if it needs to be changed, and I apologize for 
changing it unnecessarily :)

>
> I'd like to keep target builds same supporting both static and dynamic
> build but limit the tools to static link by using sdkmingw32 instead of
> mingw32.
>
> Should I send a V4?
