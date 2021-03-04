Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1605.1614816401146952702
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 16:06:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RcqtJyFg;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 497D638C065D
	for <yocto@yoctoproject.org>; Thu,  4 Mar 2021 00:06:40 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id e9so5484181pjj.0
        for <yocto@yoctoproject.org>; Wed, 03 Mar 2021 16:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hkAbP6+P5W7LcmaILrGzcFs+V4hSEWOPt7SxyjKrXpU=;
        b=RcqtJyFglXdFOLsqh9TsK68h0/c4K1TtFjFfelV+z1ua/39/03dPl23sU9shEtdxpZ
         ueWAlxCVgk64dIK13vkNldOylKTu3I3eU4IRvVDIGD64ZgnUYw00nCNK4chW0jb3mFR3
         OW13MFdRaL4FWzni7qNpICsuxyVhsWuA+yxqkmbawIQ5LOO1Vp0uXaOk620UsI/R2Cm2
         QBUtE4CwSWNLinWJnltgV13bqKG/KuI20AV7vTt9fl3Af1Z6agDPnne1jh5OKiY1HZBh
         YNoj4uGupYW6WJ7PsSa/5vTdJdIRzhoFz7Jwe6VvwSZSXLv7X8ebC0DUf60+WYpK4SS3
         bXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=hkAbP6+P5W7LcmaILrGzcFs+V4hSEWOPt7SxyjKrXpU=;
        b=qG+xfzJkrYWeMVOiegkc4bwdz9HbbyYMKc4so22TvKjJQ2Hp7KyIWDR4vQuFatln3w
         Qwtxqkme/TzoqcjK4W2+rDfsyw3iQhC4dkgK/6U8SnvtXm6DhT2+Apzd4n7bUhSO2Tv2
         0f7W5jDEKOHGI0jSuZYZwwo8M3D4hf9pItLbRzYWErEPPQDAAkJE2W6CIlR5EDGKfmNQ
         GXdFX8PywrxHg1Rezn3qn6STLNrL30AgpMrv/JJqGucHYBu/6kMZeGwc2EnNiftli+fi
         x2v5Lb55b+6nZLG9PmtXjbOOK+35NOHaL6zmBsd5YdJoMcwBKgIJLCibtTDMhK7z1diJ
         1QhQ==
X-Gm-Message-State: AOAM532WP+idyyKOBvOKYUpe/whKZPBYnCzgSSuS65cKXx1z9T/Lkzfx
	6xeUEAR0oW/LL/eK+q6seTMvIvTiPUk65Q==
X-Google-Smtp-Source: ABdhPJz1xpyFaq7WUqj8EUOwIkNtpCflKYKXUN4bFqeek5IHsdYbjTU4eIVO8ww1/L4/prP1TIGaMg==
X-Received: by 2002:a17:902:d114:b029:e4:87c7:39f5 with SMTP id w20-20020a170902d114b02900e487c739f5mr1458031plw.72.1614816399302;
        Wed, 03 Mar 2021 16:06:39 -0800 (PST)
Received: from ?IPv6:2601:646:9200:a0f0:4527:ea33:ea35:4f72? ([2601:646:9200:a0f0:4527:ea33:ea35:4f72])
        by smtp.gmail.com with ESMTPSA id 6sm61081pfv.185.2021.03.03.16.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 16:06:38 -0800 (PST)
Subject: Re: [yocto] cc1 binary in final rootfs even when no reference to it
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
References: <CAAfyv37Ca1eWCMXCOXarByH0xtDFtvNE9nF8BXdF4u9OKZdShg@mail.gmail.com>
 <CAMKF1sr3yX2qjKrfq5c9k4h_0zfDszDFD+dw5NX_2TtRyeH02Q@mail.gmail.com>
 <CAAfyv349Bs2D4GdNOrZW_0ryeXjeRJa+EwXPemmkKrF9YNcA4A@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <9f6c9505-0e34-9ffd-862f-32f2f5b1b1ab@gmail.com>
Date: Wed, 3 Mar 2021 16:06:37 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv349Bs2D4GdNOrZW_0ryeXjeRJa+EwXPemmkKrF9YNcA4A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 3/3/21 11:29 AM, Belisko Marek wrote:
> On Wed, Mar 3, 2021 at 6:31 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> this file comes from cpp output package. Can you check if somehow cpp
>> is being pulled into your image
> It turns out that cpp + cpp-symlinks is pulled by python3-pycparser.
> It is really necessary to be as runtime dependency in recipe?

it a parser for C language written in python, so my initial thoughts 
will be no. but there might be some dependencies on cpp, you might have 
to dive a bit deeper.

>>
>> On Wed, Mar 3, 2021 at 6:10 AM Marek Belisko <marek.belisko@gmail.com> wrote:
>>>
>>> Hello,
>>>
>>> on dunfell images I start seeing that cc1 binary (checked by buildhistory):
>>> files-in-image.txt:-rwxr-xr-x root       root         17674124
>>> ./usr/libexec/gcc/arm-poky-linux-gnueabi/9.3.0/cc1
>>>
>>> is present in the final image. I check taskexp but cannot find any
>>> reference which pointes to it.
>>> Any ideas how to check or it's a common problem?
>>>
>>> Thanks and regards,
>>>
>>> marek
>>>
>>> --
>>> as simple and primitive as possible
>>> -------------------------------------------------
>>> Marek Belisko - OPEN-NANDRA
>>> Freelance Developer
>>>
>>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>> Tel: +421 915 052 184
>>> skype: marekwhite
>>> twitter: #opennandra
>>> web: http://open-nandra.com
>>>
>>> 
>>>
> 
> 
> 
