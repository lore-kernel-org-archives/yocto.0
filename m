Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71009C3ABD9
	for <webhook@archiver.kernel.org>; Wed, 14 May 2025 09:58:39 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.98876.1747216716916920418
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 May 2025 02:58:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Jm/G4m9+;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso50091735e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 02:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747216715; x=1747821515; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NNaADiNtQXzMhxeTEG2S5KKsyhUzyKicQmiPYpQGTPc=;
        b=Jm/G4m9+SIbnKhs7TEbELKTIgNjIElePIilzOnK4zamBkPJGDZbTCCoQZad3mVSkN5
         JfLEtRLn37HJOdn001CY55UhqmXbNZvffvfpg9fj+ek//3vT7ii/dvjc06zOI6GgIm7q
         nAMmwG2Suz2s8lTAc4uSGTj1nzZBmRPRY4qBld6toBShYJylirGHVgeI6pN0xtZYMsf7
         AJIPfbDO/XBPAQe8JAnhA34xMWRUHhZ66DtCixZQpXPk2U0UYrI8YjmdiTVtoPBJBvVD
         hkWqr0VCHagii9I/iCkwGvMH/gv0zZ9NvzdqRskmj5Xn7jA2csax5cRRQ09oBbljc9Kq
         PKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747216715; x=1747821515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NNaADiNtQXzMhxeTEG2S5KKsyhUzyKicQmiPYpQGTPc=;
        b=O28NjwVFqIhriwmMCdmjoW/ZOMJy8hnoju5XHMvqJCRT+eAYE+ET2M6H9O7hOicUHA
         5tmnntuG4Q6zNu2LALWvMaTWKUCMCvgo3X+SwkyFmhm3+DJ5N7xAAnXSZ6H3MpSULd+s
         dIn5D8vUSXM7Szd9inylRWXQqZFm64ycfipUO7q0+MjqisrbSbq9NzklC4e9unE71kvb
         yvI/oyKM5XKnz2jVol8dcP9t1koIgE1ea6gfb4o5nktWymziFVtxs2FXaE+S0DjuUh28
         DZCA6EiXJKwydhtQf7QiQur4RP02YruxEBuaKCE7BYGrSFv3Tt9D3cYLSuKeOHh/2d63
         jtJg==
X-Forwarded-Encrypted: i=1; AJvYcCUjDJ5ouY7tvSUnY4hxXqJIkIygZvkUPn9ULt88VhpkltFvqQmESAyLDUloXguJqc+409me4A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyvqZfLTq9B4U7u5H7UddLBSCOGPPwYnyiiDRSYa9zZC++WGey/
	dlZUkGj4olNc0VNJJMRRS1N80i5vPVcPuH3mRtzOH71cB4ybpcuQ
X-Gm-Gg: ASbGncsjIn0ZIWeKMq7IXEaVTFBpJ+YjSSllA46gqBdu8g04jVXZrPQvoBe5ruJNQO1
	AqGREu5ozFG5UPmT107z1ZcfaIXLCrkSFFNjtFrxtanvSTqkg1Gd3c9SNHcuSa7cgyFcdoTFbEU
	JCm3MzVf8o702Xaly5kapJdaPCRFAgPE8O7BdgZ16cEHRIyaK+4roAVTNXM/YYlHisONIZInrY1
	BOIW6eK6YLA1aw1In8K2vDtmG4RL4rrDme11g+Y34xTXwRKhKD88shX4POIfMx6JeTWnhewmYpj
	qJNjWxukMjlJVRFnymcNWhB67zXOrk6h+mPTrYowHFMmbALjLIBOxSp5hd0=
X-Google-Smtp-Source: AGHT+IGQiHT9RF2U8SQ48qRL+Xe6U+BnpLXZaMGUHVyl951Ck5hA7X799OEZVLrtv2SyEUX9bDeCYQ==
X-Received: by 2002:a05:600c:1547:b0:43d:db5:7b1a with SMTP id 5b1f17b1804b1-442f20e4994mr21541085e9.12.1747216715040;
        Wed, 14 May 2025 02:58:35 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39e8578sm23424555e9.29.2025.05.14.02.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 02:58:34 -0700 (PDT)
Message-ID: <7546fef6-0d05-482a-8400-c0adf72d27dd@gmail.com>
Date: Wed, 14 May 2025 11:58:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Disabling APM Events from boot #kernel #scarthgap #uboot
 #yocto
To: matt.holmes@zethon.com, yocto@lists.yoctoproject.org
References: <5c5c21d7-4850-4558-947f-b15617b218f9@gmail.com>
 <1013.1747212908803788387@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <1013.1747212908803788387@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 09:58:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65337


On 5/14/25 10:55, Matt via Lists.Yoctoproject.Org wrote:
> Adding
>
> EXTRA_OEMAKE:append := ' PVRSRV_APPHINT_ENABLEAPM=RGX_ACTIVEPM_FORCE_OFF'
>  
> to my ti-img-rogue-driver_%.bbappend worked so thank you very much!
> Unfortunately something is still having a performance impact on my
> program but at least I can rule out APM events as the cause now.
>
> Also is the location of this config file documented anywhere? I had
> already spent a long time searching for this sort of file and it would
> be good to know for future reference if there is a better way of
> searching for things like this
>
>
Not that I know of (which doesn't mean a lot). With such projects, which
doesn't use a more easily comprehensible system (meson, cmake...)
usually I start with running grep through the whole project, and hope
that it displays at least a remotely useful starting point.

