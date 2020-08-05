Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web12.595.1596647261758467698
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 10:07:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=DuER1pAF;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.221.47, mailfrom: scott.branden@broadcom.com)
Received: by mail-wr1-f47.google.com with SMTP id c15so5183325wrs.11
        for <yocto@lists.yoctoproject.org>; Wed, 05 Aug 2020 10:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=aXziv0N6BtLNI2RyoHH21NZWqSEUIgr5RQsdy77S+qs=;
        b=DuER1pAFp3FaSe79oVu3VEURAGqweJXOgwtXa5vjq/YSy4wkOiec3P9Z5z0+aUrWoT
         MKe9bf5KryJB7qFsYCmEZwkx62rpPimWeHVyHr72M3K+zZwrUm1V8u8/mJ7ICirzbS+l
         jnCm1g+Nspos9px7z48Cf6ptO/ylZmzFT9Zno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=aXziv0N6BtLNI2RyoHH21NZWqSEUIgr5RQsdy77S+qs=;
        b=Zfui9kHIiZWPfLme/rVdKFzPNVxr2oN/Z8JEte1gq4uKBSVRI46qywyZHAtIKpmIsM
         rFX0041nxtItEnhFteRuCZAW1ghqCe1WDhM+g6yfWgiKM1AGMjuM2yckvrjoc7vhKTli
         HX0PlMTDofNeLud7Enn9/w9DG/JI4KI4dzP4M8HI7/RFu9rkIo9LHy7e3sK1J3N1WB4C
         z28sAJ4Ng2d6v2wOnuMpbkduedLN04Jnz8wfmd4QIhgdSW6CT/mT+6/vUpTGvM+/50co
         SbX8wyLVdgy+lchuXrdGzg+7qHvp8v7GZeWE5idR4UE4PtFPJdJXD7iypjcl3y5dedkF
         IjGg==
X-Gm-Message-State: AOAM5307Bj+dlcs6GW2bIztyeWNWsHeiDOlqr/WsdDdhn6HbFYajUeEp
	hkVH3XFjGpTkeslr5EsCG2tiVA==
X-Google-Smtp-Source: ABdhPJxix1x27v1F4wK0GXIaXWGzkeRUHqoaLiUepgf0DOdok623ECoCsl7Uhx9fTiiwf1nKaD0kJA==
X-Received: by 2002:a5d:4947:: with SMTP id r7mr3550059wrs.165.1596647260182;
        Wed, 05 Aug 2020 10:07:40 -0700 (PDT)
Return-Path: <scott.branden@broadcom.com>
Received: from [10.136.13.65] ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id n11sm3200067wmi.15.2020.08.05.10.07.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 10:07:39 -0700 (PDT)
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <20200512131738.GQ11927@denix.org>
 <4061.1596576995601033488@lists.yoctoproject.org>
 <14aa33ffb8218838763ba61c809149365d92ab98.camel@linuxfoundation.org>
Cc: Rick Liu <rick.liu@broadcom.com>,
 Jonathan Richardson <jonathan.richardson@broadcom.com>
From: "Scott Branden" <scott.branden@broadcom.com>
Message-ID: <b93acfa6-0d88-9542-8ab5-1372bf5cff18@broadcom.com>
Date: Wed, 5 Aug 2020 10:07:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <14aa33ffb8218838763ba61c809149365d92ab98.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-CA

Hi Richard,

On 2020-08-05 2:50 a.m., Richard Purdie wrote:
> On Tue, 2020-08-04 at 14:36 -0700, Scott Branden via
> lists.yoctoproject.org wrote:
>> With downloads.yoctoproject.org down again this begs the question:
>>
>> Why does uninative tarball get fetched by default from the internet
>> every time?
>> Why is it in not cached like every other tarball that is downloaded
>> by recipes?
>> The default behaviour for the yocto project should be to have the
>> tarball stored in the yocto cache such that it is not fetched every
>> time?
> Those are good questions. 
>
> As far as I know on my own local builds, the uninative tarball *is*
> cached locally in DL_DIR. We don't see repeated downloads on the
> autobuilder either so it appears to work there too.
Yes, the uninative tarball *is* cached but I see repeated downloads.
>
> If you're not seeing that it would definitely be something to
> investigate.
I just did a clone of poky.git and the repeated downloads do NOT happen.
So I now need to investigate what is different when adding layers and conf settings
that is causing the issue.

> Cheers,
>
> Richard
>
Thanks for confirming the uninative caching should work, but it is not in my environment and I will have to investigate.

Scott
