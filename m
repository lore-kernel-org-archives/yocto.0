Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7F2C36000
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 12:29:10 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.19931.1742560143675117561
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 05:29:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QXIuRN9v;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab7430e27b2so390166566b.3
        for <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 05:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742560142; x=1743164942; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JNVg+qAMaDrur8oXMQpt8LYmF0iMJp0kkfxqKY8L5p4=;
        b=QXIuRN9vMbLvLK9bmxs+TLHKVRlWqzXBep6sEbTEbK3v32KbVaz2HjOOlYSPnCOUvm
         zhhKcQwElb6+tBSnda7ObAK0IzD4LK8Mu0qteh36YnfCxwt0COiVcYy70P67NzSyraeY
         hAF/iLujJnDHN2tD7Phkkq1gu9g0rgfK6lLx/hObf20kI3gSK2IjZLOWcF/Q1AnBqApe
         uzD14hlvAhqnghWE6MTmAhlKw2lvagDf9R6rYqxbHxhGKxuoqJN0E/QxjMoFMH/rlsAo
         FG2UsOYH80a6i38vFcuygXJSHdd6UZAIuctHtq/ZsaFo+nj0hdiaijU1nTd3osxFtb1m
         s6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742560142; x=1743164942;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JNVg+qAMaDrur8oXMQpt8LYmF0iMJp0kkfxqKY8L5p4=;
        b=HWhVeZj/UPN/+Cfd22ESds7i/7EjBmOD/zNjHKn09j6h8PwwfCqXe6zz+jrx0eInoI
         Iv0N32b6J4+J9SXVuZfle8GB4HFznfVUOuLszsJX3gtwIc9Ou9GJD2d3P46J1DSXkfnm
         CWhorq2DZZVl9MSD0eTOaSwEWNLqiaPPBiQJii7mU0TCRkBQmv4dev2wG40KYKkstRLC
         EnfD+tsd6j/G+wmUzo1vYicQpGYX6hSEGGmpXhTai6i8AmVoNXy1AsZGzmIaZVyMdaRX
         WvRYT4Oe72+y5CjZx3Z1wN39P4baNJWUswD812QzXPCj8FExcUwieHhxiS6+czqPfzn9
         TDEw==
X-Gm-Message-State: AOJu0Ywa29lSMcfR6lWmcQFgd9cOmmvsJAYE6rFsRVGpGrOrEreD2WL7
	8hvVGaZrN1jBU262P0qREMhv4iMNWpoI+W1uBQyDuQ6x372kjku947Yvyw==
X-Gm-Gg: ASbGncvQ6dmmQ2A2ddCF3V5L7/sPe0IeUORJlGO6hDhENExgkA1LgynXT4puNYhwsRP
	I90iNuaTPqBP/X67IqY5NfZFzcXvwaUatXVf8gIpN0Fcb5tjmp4/GlfAuge15BCrSJDREJdL/Ml
	5EvypCY8i9nJUewYX8l1G2QfM+7755mUt6eCaUkTKdTD8rv9EIvDAfz2UhhFlasNv4G+ZkOFZzp
	H5wcaIWWcSZaXtc4Yedr3LSCqoMXEcxmLM+s/yTlu6QEaJx5Cx5Q+V33WEOGGkNWLSlTJGQAmD8
	w+n2bTPfPu1nb6bIaMONjsnb4lk7Kd4M6qDdvrsaw2pQa2PXHfMF
X-Google-Smtp-Source: AGHT+IGQmWM0WvS4sS+eAX1KyqGCmyDdDWBNgKPfZEP/0x1bJ0lDQJ9w0aHY1eUPR5Z/CU0yH9oWIg==
X-Received: by 2002:a17:907:97ce:b0:ac3:b115:21b8 with SMTP id a640c23a62f3a-ac3f2530d3bmr279308066b.47.1742560141739;
        Fri, 21 Mar 2025 05:29:01 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efda6d3fsm142260366b.184.2025.03.21.05.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 05:29:01 -0700 (PDT)
Message-ID: <57c24bff-4dde-4646-9c50-245cbbdd3821@gmail.com>
Date: Fri, 21 Mar 2025 13:29:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Cronie default crontab
To: yocto@lists.yoctoproject.org, markus.webert@libreo.de
References: <GGz6.1742552138080948626.8ApJ@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <GGz6.1742552138080948626.8ApJ@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 12:29:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65001

On 21.03.25 11:15, markus.webert via lists.yoctoproject.org wrote:
> Hello,
>  
> I stumbled across the default crontab configuration that is shipped
> when adding cronie. The default crontab was added here cronie: Added
> default crontab - poky - Poky Build Tool and Metadata
> <https://git.yoctoproject.org/poky/commit/?id=4a7446ed99a0c21ee81c22a69dd3fbbb8e396291>.
>  
> I wondered if there is a reason that the cron.{daily, hourly, ...}
> folders are created but the run-parts is commented out in the default
> crontab file?

While I can't comment with certainty on the reason behind 11 years old
commits, this behavior doesn't look very odd to me.

Looking at 2 of the distros I'm using:
On Debian the cronie package creates these folders unconditionally, and
the main crontab file comes prefilled (with your expectations) in an
uncommented form, provided by cron-daemon-common package.

On the other hand cronie on EndeavourOS creates these folders once again
unconditionally, and the same package provides the main crontab - and it
is empty, without even comments. This seems to be more like Yocto.

I guess there is no real standard for this that could be adhered to?

> Took me a bit to figure out why placing files inside the cron.x
> folders has no effect (scripts are not called). My expectation would
> be either not having the cron.x folders created at all or the default
> crontab file has the run-parts lines uncommented.
>  
> Thanks
> Markus
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65000): https://lists.yoctoproject.org/g/yocto/message/65000
> Mute This Topic: https://lists.yoctoproject.org/mt/111825500/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

