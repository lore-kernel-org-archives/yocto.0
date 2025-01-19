Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88ED2C02183
	for <webhook@archiver.kernel.org>; Sun, 19 Jan 2025 12:49:35 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.14667.1737290974414663795
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2025 04:49:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gjdoEPw7;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43634b570c1so24540025e9.0
        for <yocto@lists.yoctoproject.org>; Sun, 19 Jan 2025 04:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737290973; x=1737895773; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O7Iw2DuHN/bwG4Jh9pGgMLxRV/2/YnqQHWADCdsHj5w=;
        b=gjdoEPw7I4hsyFInzgLPCWrtIqCGTQr1OqsMiUoQZ05B2AxTy0PwdNF/PEr0LQznGa
         R9dRQGsx5bK065mPUaDT0xa86bdcG7rqIuGNadPZJarehW3n7/0qM9vHrWwCq/a5HxnW
         jznNufh1nTvvmr8/v/b4FBSmECuqROaIfqb2+hj2A9DeOFqDIclIW2/npG8wFhajBhOg
         AFlA20rcy0TD8SQB/lWfk4I6CTvJhXKa11ZyOaMEoTsgX3TlXz7u0d4zzTb5Rpb9u11T
         F2WogQlolVYOMwKV1wv2gu7nRmmdxEn8AlHfntQtxA994OTynqbWr10sx2jibx4ZQrMC
         kl1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737290973; x=1737895773;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O7Iw2DuHN/bwG4Jh9pGgMLxRV/2/YnqQHWADCdsHj5w=;
        b=GSdNvRLxZVxaPAcUPRZ84OH9MFDVJfw+IaTWa9eCKjTAQky7KIEhxcHQjI3JnAmx1i
         CgnjD0tHhEyAtt+EklKwNd2dEjyr9bdV3RkRjZL6Ipfxa4FnCxiXBeRFofEJl0ULx3pp
         M1G6BBx0vpgH/sunqUqwmfwy5epFxlHeFgXsn1PbZREoPiaPdJuqHaCa6RksdYDzCmbS
         zW2c1u/GJrQVfkbaYBcecg8VKwIFBYE/0j7OAMQokgqot6IOYCpzaonczVfn6W/IsSw5
         YmhYSqZ2sOnZoKrVQWgG33m31Ep6gL6VGQAyEb4XET7M216JE+faBuZI+QurxFYukPnk
         04Rw==
X-Gm-Message-State: AOJu0YwuSWFMqJQy5cEfPdXYSkVuAvIlsnC0r/HgK7MSzofm+iHpCbAH
	Prpp/4tj7bxiOCrn7Z8Zq7Qu6h1RTe+c0k2V0tMrWyfRDJ/EPNRC0+uTVg==
X-Gm-Gg: ASbGnctoPPpwASKIq6pakZwPStzEb4WDYREJkFM3nudfoN4gzl+h0ND8m3rfnsXQgtH
	RG46yZr5mG0L86QmCsReoPP+7vcV43HHMbM303oMSHkPMZNMq/STM9yS6ZNvDG6IwDnVFxV7oTG
	rmVVm8bUogTnS5lIMiha19m8UdI5wOyUaQZnHD2roR2nsYco+7RSe1LfovKWVNb+GvPsDq/MvAp
	s+x5Yn41RB+mXnPO+hft3yHeykzTZtjaT8J7kUcu5+gJT1MyWt7NCosHqplV/m0mUiKHE3JBe/u
	Uw==
X-Google-Smtp-Source: AGHT+IEW8qXAtqbdwF6gdS/gXCGSqUjprAvYOqroUz/yje0ZzqqHJzobfMbLSEALoTtTBbbCT0Kg/g==
X-Received: by 2002:a05:6000:144a:b0:38a:87cc:fb2c with SMTP id ffacd0b85a97d-38bf56629cbmr8631334f8f.18.1737290972415;
        Sun, 19 Jan 2025 04:49:32 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322a859sm7452888f8f.43.2025.01.19.04.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2025 04:49:31 -0800 (PST)
Message-ID: <083a5026-a99e-472a-9a4f-1164b0e2114e@gmail.com>
Date: Sun, 19 Jan 2025 13:49:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] MIRRORS variable
To: yocto@lists.yoctoproject.org, mauro@faresoftware.it
References: <77bad18f-3b09-4712-a9f5-3aacf6506102@faresoftware.it>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <77bad18f-3b09-4712-a9f5-3aacf6506102@faresoftware.it>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Jan 2025 12:49:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64590

You can find a number of examples in the mirrors.bbclass[1] file. Also 
note that in git URIs Bitbake expects "/" separator between the host and 
path, not ":". I think this should work:

MIRRORS += " git://user@nas-archivio/var/home/git;protocol=ssh 
git://git@gitlab.newsoc.it:2289/projects;protocol=ssh "

One more thing: make sure to use explicit commit hash in your recipe for 
SRCREV. If you use something that needs to be resolved to a revision 
(tag, AUTOREV...) than Bitbake will try to connect to the upstream 
first, to resolve the commit, ignoring the MIRRORS.

[1]: 
https://git.yoctoproject.org/poky/tree/meta/classes-global/mirrors.bbclass

On 19.01.25 11:16, Mauro Ziliani via lists.yoctoproject.org wrote:
> Hi all.
>
> Which is the correct syntax of MIRRORS variable?
>
> I need to replace
>
> git://user@nas-archivio:/var/home/git;protocol=ssh  with 
> git://git@gitlab.newsoc.it:2289:/projects;protocol=ssh
>
>
> I put this in local.conf
>
>
> MIRRORS += \
>
> git://user@nas-archivio:/var/home/git;protocol=ssh  \
>
> git://git@gitlab.newsoc.it:2289:/projects;protocol=ssh \n \
>
> "
>
>
> but the fetcher doesn't the replace.
>
>
> Best regards
>
>   MZ
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64589): https://lists.yoctoproject.org/g/yocto/message/64589
> Mute This Topic: https://lists.yoctoproject.org/mt/110696165/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

