Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5777FC3ABAA
	for <webhook@archiver.kernel.org>; Fri,  2 May 2025 11:29:48 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.16890.1746185376566824775
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 May 2025 04:29:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BX0IyVfz;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e5e0caa151so3278015a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 02 May 2025 04:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746185375; x=1746790175; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cB3R/QhEHs8q43nDXt2fcUjliWQX2sz3O/vJjS0LA8U=;
        b=BX0IyVfzYzMnsZ7t/JaKvHDoTXQPe5RWE7cOsVoUB/F9Nyn8Tcly0VkL3eY4k0FtT0
         2DyTyXReRUFLPlDWegFx1k+wgeCskJGKaghmLdw1dAn1cq55/jecPsFl5SglEvV6mpU4
         Hjh2qSapVYDNRAUXH4bJmPnOJbw8ZY3Uw9OKqMQY1iELVxZIu+Dj46ztg+vne38WhVmg
         a/jflYTN/+TTd8tyUFHaScaFMC+h0x72AFyP1xbWOXPk6n7G8O0n2U5cs87ljQU4xXE2
         KI7uD1A17HB5TmxweOQsQLtn0kFQKEEHhICIs8d/IQhzkqoGuW37tV2XEoeBDoHYsC1s
         svqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746185375; x=1746790175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cB3R/QhEHs8q43nDXt2fcUjliWQX2sz3O/vJjS0LA8U=;
        b=EC4K0HnEiTvyMny80tTUPJ3tRoM4r3SSBKDp2EvybOCpFZfv1NHHpJPGK2mkU94ooW
         /Cm9i8B1oT4Oj4Dznczgdmk2BwFs9ugYzg5Bf3RRNxlbhscB0OJCMTwVLe1qEM4VujfO
         YPmkI4Bgl4181pS5RHi+TYDhHcog0zlAwOI4Lo1QbwGq+Q2ZU0R82ibyJ8J/9Yck6YXb
         OwVFhr+fgCf/keu+1m1VyEQZlH/LNRSNIYNgrH3EBTMzgL2LdmkXfp/2Xs9jnYTyVU0m
         Tmhy/ZsJo6ENY8hAFklaVdndtMP43FEHYH7g0MLrajJZ0OJdGNjl1kGfWTs6mfJO3KGC
         Bd4g==
X-Gm-Message-State: AOJu0YyaJRDSRm9Nus9fBlRPQM/DTLKQhxihIaHVi60d+tixSDf1OBwd
	eG8Zntekkh5jz+6pZUwgZvyYlUglALSREs6prd84ej9pAC6C+3jtQ6WYxt36
X-Gm-Gg: ASbGncsA2Fz2sp7e+jM5VOeKz+hrBh5gBKog6TzTHZEaO4i2c3DTUIxL6T+FpCFCfT5
	H2XlJ6crZfYEn8MyOukqPUQW1Bm2Nh3GDuQAC9w49+XkakTo8M3NWI7BjODt/qf68GGRnoszcYZ
	WbBjh5GsekOq63eiwm10jtkv7hfMjGF5JoSzRwB8ILADu3Rpr6RXv+p3hMeCxZeG6tGx97piR2H
	y/3sI0P3hHxwuqugV+XdJUEqp187bkp0/yzXOSWZEZhYuz7vCI1qJlsPuPptUCVTtG8EEem9Ull
	FUhdtyb3f5/1448UDpdYJsOlwYAzNSsCE1VZNxiruX3yxdFF
X-Google-Smtp-Source: AGHT+IF7qhDtSbCs3v2B9e262PvFqdZqbCYe6LxjkiwZ5kQy4Ta3kC2XTU5jrNNg9TxNIXAQriQh3g==
X-Received: by 2002:a17:907:86ab:b0:ac1:df32:ac27 with SMTP id a640c23a62f3a-ad17afb8ab0mr258730066b.53.1746185374518;
        Fri, 02 May 2025 04:29:34 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891f50ebsm37063066b.79.2025.05.02.04.29.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 04:29:34 -0700 (PDT)
Message-ID: <db9e0094-b983-45fc-84d2-d24a726ef682@gmail.com>
Date: Fri, 2 May 2025 13:29:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Issue with Integrating NPM Package Dependencies in Yocto
To: yocto@lists.yoctoproject.org, delvincv@gmail.com,
 Daniel <dchvs11@gmail.com>
References: <CANDCFSz5o=DgqF2njtQyo8tr28urtPb5PGW6VhE=1sTNz=zLpQ@mail.gmail.com>
 <4547.1746181244824286431@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <4547.1746181244824286431@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 May 2025 11:29:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65276

A note, which may or may not be the answer:
When you use ${THISDIR} in SRC_URI (or in some other place), you need to
use immediate expansion with the ":=" operator:

SRC_URI := "file://${THISDIR}/foo.json"

Otherwise THISDIR might have different value if it is resolved at a
later time.

On 5/2/25 12:20, delvin.c Varghese via lists.yoctoproject.org wrote:
> HI Daniel, 
> Is your issue with npmsw solved. I am getting the same issue. if you
> share your solution it will be very helpful 
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65275): https://lists.yoctoproject.org/g/yocto/message/65275
> Mute This Topic: https://lists.yoctoproject.org/mt/106923227/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


