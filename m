Return-Path: <m.cavallini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CBCCD6E57
	for <webhook@archiver.kernel.org>; Tue,  2 Jun 2026 06:52:18 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19008.1780383134376921861
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2026 23:52:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koansoftware-com.20251104.gappssmtp.com header.s=20251104 header.b=VmpMn5Sz;
 spf=pass (domain: koansoftware.com, ip: 209.85.128.48, mailfrom: m.cavallini@koansoftware.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-490b09e4cccso4903405e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 01 Jun 2026 23:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=koansoftware-com.20251104.gappssmtp.com; s=20251104; t=1780383132; x=1780987932; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R8HdV5xhTLvqHKAKdBl5eFlTFn67J6nLBslBZVJFPSE=;
        b=VmpMn5SzgAiCjYIyFHRes5aqIiGJYpreJXV6MPpKDaGDo+1Wmg3POOsJTdvsLIFYbD
         RoP3rcVxt7y2Dg8rHol/KwLnAC4vH0hQy9vFO2xFHipFNupsGq8emOnocEnTsLiOMo36
         hBs4+JV63vPyt0wQVpXX0lTIdYu8jamd7QrS/ICi1eSL4kScXZKXTv1C3gLCnVONEnTX
         1wWSsOWcQ7hC8vWzq2gncSEmhWaH7OJjqUYvBegsEH59/rFVkkS00tyiTS/4qifwNrGL
         T/XEGTZmDb07/N5CEquDJ9ingkN3gbYrQl4tJ3UUY3+RNsD7yVShcVMwg7NUO2wUkEoF
         Bcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780383132; x=1780987932;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R8HdV5xhTLvqHKAKdBl5eFlTFn67J6nLBslBZVJFPSE=;
        b=mDq2eOjFrqhyYsXI9CLo8oN/8rosNawZTQBo/GHyBjgCOG/p93eqP1iFPPigZ5niyp
         37hJ7sQnYE5ZVUoaGWaUKsgray4T+brjVrUhADvfG7IlUhStJ/m1WisWRZnvx//AQ4O1
         TydIBSxNoH4D/uGYe0lWYRxngs+zAbpvNKPUDWF/zzOLZe/i7kMx+xCLEk4pB02m1fxw
         TyCRezCVPyqz6vRzLdG5bCdz4k0x1TP7AyGr2PUDIFUlIlMQP3eapDx4H8tqSMSxx0bf
         +INN3xAyYckU8Xbbm8Tp4sGKcIv10nMjGO6kB/AkSJPrjTrs4su6g00KdkNvb6hQDdZG
         ew5Q==
X-Gm-Message-State: AOJu0YxJX0CxwHF6/VIZnv9GOUXPSMO6eKMjhIRDWBzZSQBSDF6BcjVz
	tOrE5DSPdPBJgKrf4OtqfzpjQQQyfV4DfNDj7vMkI5HP2978q8J2QA49r6T2KWgIZPpZgZ00ntE
	uGYIuJVpQ
X-Gm-Gg: Acq92OGPNG0trnBtXYcYygYJHihHWFCifn7BHgZbRwENhCV4UbLPGvO6a3UWBzHrbRF
	XvTV26VGYG/h4mF3pEboWT2qEBHPBGp4ozTFCVzWTRFV8+uMm932M/9S+J3STO/dobrLzydJ/km
	QB7/F9kzG2HyDJo309Gdbixs2oDFykMNcS/0C2MhkpL5BSVEKpuUxM6zglCwu6VpVa/f1B7KflX
	dClFdbAVrS4xsxWxkpve4DilMCzMhmtov4LmoImdNRvLer4NHqMiv8t25MOPPtlJimaFfgjx+5p
	XjtPVPa1t6eMQpxghVEsSguFvPG3ZcuTpaeYa/lAmwM9lSynFzFKbHVLqFj3PKQQaCBCecPaY7c
	x3x9LkG4gIMpnONNOI7Kl94PSUuow9cFBKLpLPb9NNP+0TWNX/tVJ8Vw3vkiJpyM1MARcpkaJpz
	sl7QhQOwhKjwONeNsdHbkqRWUrTFPfkK2Hi3SgGteSVveXji8/KJT8SQn/UEbJN4UYH2fSXhCW5
	TBDw/ZCy31y+ZSofaq/i+xlHrp/rsot
X-Received: by 2002:a05:600d:8496:10b0:490:688b:ece5 with SMTP id 5b1f17b1804b1-490a2943877mr171321395e9.30.1780383132465;
        Mon, 01 Jun 2026 23:52:12 -0700 (PDT)
Received: from [192.168.1.2] (host-95-229-48-41.business.telecomitalia.it. [95.229.48.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b0e18e1csm43085005e9.4.2026.06.01.23.52.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2026 23:52:12 -0700 (PDT)
Message-ID: <f3627c34-9be7-4372-a822-1486a7e6b047@koansoftware.com>
Date: Tue, 2 Jun 2026 08:52:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: m.cavallini@koansoftware.com
Subject: Re: [yocto] WKS Language Server + VSCode Extension
To: yocto@lists.yoctoproject.org, anakin@childerhose.ca
References: <CAHMZgtkHFgJSQxLMcWkmLgxFXuFM8S3CT=X-T5xAN-axpZA4Gw@mail.gmail.com>
Content-Language: it, en-US
From: Marco Cavallini <m.cavallini@koansoftware.com>
Organization: Koan sas - Bergamo - Italia
In-Reply-To: <CAHMZgtkHFgJSQxLMcWkmLgxFXuFM8S3CT=X-T5xAN-axpZA4Gw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jun 2026 06:52:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66584

On 02/06/26 04:28, Anakin Childerhose via lists.yoctoproject.org wrote:
> Hello everyone!
> 
> I wanted to share with you an application that I wrote to make my life
> easier interacting with wks files in yocto.
> 
> I created a language server and a VSCode extension for providing in
> editor documentation, completion, diagnostics, and goto definition for
> wks files.
> 
> The language server and VSCode extension is available on my github at
> https://github.com/anakin4747/wksls.
> 
> The extension is not currently in the VSCode marketplace but a .vsix
> is available on the github releases at the same repo (note the
> language server isn't written in typescript so it still needs to be
> installed separately from the .vsix).
> 
> I hope you find it as useful as I do!
> 
> Thanks,
> Anakin Childerhose


Hi Anakin,
looks interesting.
Thank you
--
Marco Cavallini

