Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB39CD493B
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 01:53:57 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
 by mx.groups.io with SMTP id smtpd.web10.6957.1695261231404287643
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 18:53:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=hthWDelZ;
 spf=pass (domain: ibeeto.com, ip: 209.85.167.178, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3a86a0355dfso304050b6e.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 18:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1695261230; x=1695866030; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=29z19Rl4+HZsyCJduiPlqMyotkEfWaASex0DI+i5VVk=;
        b=hthWDelZ5wzePUmI/ZpxSBEOorUWufOjDxQFUc9Dr+fJ3b8ZUhEaXeT/JeNuh4D4Oe
         al3iufD/UefkqCE4QZt/Tv3JXkd81yws3/ggL70APvW+5FNt9gbw/j6pqv0IpWJU/do3
         2MaF9+578dc3Sq2fJopYjkLQizA15iohxlYSc89UWKGxX3rCPoJlT+aoctHlFYsyspKD
         uV2HjTbY7HcMCW9t4jVicP+mP+e1ND60Hg4Wz4Ty/5/hW+U8evfqLjvw678Eb1s3v0Cj
         XjyUTP+GtLygUW6PnSvGdfaDGzHpJpbqIEFnhw1VyjJlt0FTgjF1zrQWEmaXIED20m6Z
         cqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695261230; x=1695866030;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=29z19Rl4+HZsyCJduiPlqMyotkEfWaASex0DI+i5VVk=;
        b=YrNGCFbdITrP3NYJkU9Cp6sNejT1eBrB53YHODcbYxTHTBNmHKbfTfmywxUR7fS2y6
         iwdYRK5M9maBtmAJnpkwZuAcnehRqP//2aJDqLnxun2TnlQxPPUyLE2NyapGXCuz+cj9
         7NT+ID5issxAU5YrzcCaKO3g4XAg1h2H5bj4sG52TqHVeNjjmyEOVknroZibmsiBvgsq
         HroMz4EHZyUCF+/EZsXdUBMk3oeQjkZKn7Tn7lylznM6NbUwdFh0p2LvKiM6V2qurRbc
         JuiL7bUJXxlyShl2FkuGPh1iFnyAHeepTsgqUlmu06DgI+eWZZayZcNECiKLJ/nlv2Jh
         o6wQ==
X-Gm-Message-State: AOJu0YwGcCdwgcUBqslNQ2D7NNnP5VCOBHwhgdvaZvCstMwWKozK0mp5
	b9nP0UOCg4oss0QBUgGQWY+pOg==
X-Google-Smtp-Source: AGHT+IE9Baf0oKxSovA/clucUJbFVeOkr/CnHddNX5Lh7gDkGEdeJ1vGd248YWSU5iKrfOLI885gdA==
X-Received: by 2002:a54:400e:0:b0:3a9:de3a:d155 with SMTP id x14-20020a54400e000000b003a9de3ad155mr3845667oie.58.1695261230632;
        Wed, 20 Sep 2023 18:53:50 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id n24-20020aa79058000000b0068fb5e44827sm161988pfo.67.2023.09.20.18.53.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 18:53:49 -0700 (PDT)
Message-ID: <679dd836-454c-9f0c-0adb-4ee16cd59816@ibeeto.com>
Date: Wed, 20 Sep 2023 18:53:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] Forcing uninative?
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>, alexandre.belloni@bootlin.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <cd75554b-294d-5ea3-ea0a-d8120390c757@ibeeto.com>
 <2023092021160802de53c6@mail.local>
 <CAMKF1sog1=8TJ+DruZc5RCkuvTUOZtM4gRHCwnN-YfU5HjhK5w@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
In-Reply-To: <CAMKF1sog1=8TJ+DruZc5RCkuvTUOZtM4gRHCwnN-YfU5HjhK5w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 01:53:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61062


On 9/20/23 18:32, Khem Raj wrote:
> On Wed, Sep 20, 2023 at 2:16 PM Alexandre Belloni via
> lists.yoctoproject.org
> <alexandre.belloni=bootlin.com@lists.yoctoproject.org> wrote:
>> Hello,
>>
>> On 20/09/2023 13:59:54-0700, Rudolf J Streif wrote:
>>> I need to resurrect a Yocto Project build environment based on honister. My
>>> dev system has since moved on to a newer glibc etc. As expected, I am
>>> getting this warning
>>>
>>> WARNING: Your host glibc version (2.37) is newer than that in uninative
>>> (2.34). Disabling uninative so that sstate is not corrupted.
>>>
>>> The distro's gcc now is 13.2.1.
>>>
>>> Now the following packages do not compile anymore:
>>>
>>>   * rust-llvm-native : which there is a patch (applied to kirkstone):
>>>     https://lore.kernel.org/openembedded-core/CANPvuR=G1NxfJb67xD19FoNh4eTDsTM4TDyF+vDbh6crNH=dgw@mail.gmail.com/T/
>>>   * libdnf-native : because std::uint32_t does not exist anymore
>>>
>>> I don't care about the sstate as I am creating a new one. However, how can I
>>> force uninative to be used and would it even solve the problem (I would
>>> think so as the idea of uninative is to isolate the build from the host
>>> libraries)?
>>>
>> You should rather use buildtools. You can install those with
>> scripts/install-buildtools. The -r option is there to allow you to
>> select a target release. You can try something like:
>>
>> poky/scripts/install-buildtools -d ~/YP/buildtools -r yocto-3.4.4 --installer-version 3.4.4
>>
>> This will then tell you to source buildtools/environment-setup-x86_64-pokysdk-linux
>>
>> This should be enough to be able to build old releases.
> real issue would be getting native packages compiling with newer
> compilers, unless you are ready to do such backports this
> is going to be a problem. I would suggest using a supported/tested
> distro for honister release inside a VM or container to build it.
Thanks, Khem. Yes, that is what I eventually resorted doing. It's much 
quicker to fire up a VM than trying to do the backports. :)
>> Regards,
>>
>> --
>> Alexandre Belloni, co-owner and COO, Bootlin
>> Embedded Linux and Kernel engineering
>> https://bootlin.com
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#61058): https://lists.yoctoproject.org/g/yocto/message/61058
>> Mute This Topic: https://lists.yoctoproject.org/mt/101487564/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386


