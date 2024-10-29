Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D43D5B166
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 08:21:30 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.14413.1730190080503631847
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 01:21:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hCeSguWk;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a99cc265e0aso797826366b.3
        for <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 01:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730190079; x=1730794879; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D4RFM8xXPDbA060vXSrtEKtESsjYDLFvVgZEVM+g26w=;
        b=hCeSguWkdiveuOZ7nQGqCjYMoM3eRUCkmxi0TWYdlrODc1O5VWKn6Sr+mBH35epnVQ
         1DsKen4Ea/AUTIjtROnwPPxY758yodVQlbYZu2QpYgMUSwOf7AZtpqOrjQIa7c2uS90g
         r6hZYWSKp4YWPMI6gY8LwOsBrHZSm89alhkHJ9kNxhg/VFh0bltCr3+FIrJrUxrgEIyT
         iAKxjgmGLDReBxcReEtHxoGEpOczT1hDUE+AkJ93DDnOtWMTkPnZX42QfntnIOfmDqU8
         kn/Uyp/JzU3bOsVMXUHsUlY+Dk0Klczx7+174cYmvUbaAvX8PqSdv2NJImg4FXvdBNDZ
         esgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730190079; x=1730794879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D4RFM8xXPDbA060vXSrtEKtESsjYDLFvVgZEVM+g26w=;
        b=IDUWtkMe8QU7tSfkC/86xzr9mIPGpLX3zqyQAahLuOmgDvlrdPzNaNDA4yPEGoTdGb
         u57b+/IHrpKQ3CWKBGHxLRflO/o9fdpTuh5ZsyZiOSogXvsuvLH3k0etpn3VKtP7xQXU
         kmre4kgmaIprFrHFW57zKeyNjpKCziTfI2MFXjecS8Rt+sVdrfG/7Thx1iNqMfMhDoc7
         i7sbc0XyOG8OUEfdkd8VLjsnfMgo6AoEms3IE5oMES8o5lp3NPb9jgDXI0SZPfOqOU6M
         iEUO3pGfnRYLPLk9ikX9BqQC/oQ+MEzPqF7zYI7Ss2Ij+nIwXOJs94rYMk1vGX2gwBNE
         SBMw==
X-Gm-Message-State: AOJu0YzYKSGy6tIhFwh3m8vplY/JXWAmPbYo3mFyDrPGFnXwUB7Aq4WQ
	LDcKj0bnBipZyhz8oabkJn96dW7/tHKvFLuYWh0Q5PCfOg6NyMUYbe7SKg==
X-Google-Smtp-Source: AGHT+IHPAohMKTiTcGTTZO2UWjjSJDE3vnVv+3Laz2NG40yRmifyC0HA0I0uVpC0yjK1oEc1zyObWQ==
X-Received: by 2002:a17:907:eaa:b0:a99:f496:794c with SMTP id a640c23a62f3a-a9de632bf9bmr916311966b.52.1730190078394;
        Tue, 29 Oct 2024 01:21:18 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1dec7dacsm448263466b.9.2024.10.29.01.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 01:21:18 -0700 (PDT)
Message-ID: <6f307e84-1224-4a95-becb-18755fcf8e0e@gmail.com>
Date: Tue, 29 Oct 2024 09:21:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] cargo/rust from meta-rust-bin in eSDK of yocto 4.x
To: yocto@lists.yoctoproject.org, sandro.anders@carmedialab.com
References: <PS09.1730138169422773566.enR7@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <PS09.1730138169422773566.enR7@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 08:21:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64161

When working with non-standard Rust versions from whatever other layers, 
I found it makes my life easier when I add the not-used recipes to 
BBMASK from oe-core, something like

BBMASK += "poky/meta/recipes-devtools/rust"

If there is anything that depends on it explicitly, it should fail 
loudly during next build, so it can be fixed. Otherwise bitbake will 
ignore these recipes completely, so it shouldn't clash with the new ones.

