Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A2E6781F
	for <webhook@archiver.kernel.org>; Thu, 14 Nov 2024 17:17:29 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.376.1731604648857205203
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Nov 2024 09:17:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G+jNtzK2;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5cf7567f369so1169895a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 14 Nov 2024 09:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731604647; x=1732209447; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+emtqWu7KQeDaEAlLoM8o1g7pLCgrAx0HBaNMUN0OCo=;
        b=G+jNtzK2YZfCCk3WbV0M8rfjrbgN3ZkE/CJQVrL/Wni5XHktRG63DsD8AsAMGe1nSv
         EqA0lpN8+RBWn9AmjBaNBtTJ5/Cax5UrQ+P9ggibu7lT+6icWRarAMBmXYO4koHo2eZB
         RIQN/vOTRMfHYY8IFeJ+WSy3axsGRH4spve/WLrKYJCtfysVS8xSNIYzKiYV5Ac2hT6s
         eFl/ApinumcgxYAB15P7F5BR3RahqlwnYeSkupnHWudGY/U1UHAKCIZbJFgtYHM7HmoU
         z97zKtIa76MOTc+/6JyMbwLOSsP0ms3GjqiZK6txH0e3Qqp89kyZJPmisInLSxuC291O
         TLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731604647; x=1732209447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+emtqWu7KQeDaEAlLoM8o1g7pLCgrAx0HBaNMUN0OCo=;
        b=mByJ0vz0Jm1CxUsDt9uUYsdY8OrghWQyX3iE8s3Uxoz+Ahw3FegRQ5wLBzg7zPaTEN
         /Eva3utsceRigaTv4uIXiDu4DmRY1SBQHVuGei6pl8eC8XX2huj3Nkv9EyDrEhLr+fKk
         gQxoTjaQzfVgdVkdOhmtecwJVlfwFbW4RX8A9B16GsmqFoDoOYdIqSuaBDOioysgAlSy
         31Ix40R0ZCO/ZWR8s31nxuqGVeZTYulM99uWvqf7BjJDvLa4WbBX/lxvdzvaHSn8UGYH
         d/6CH2Kc/ZRqM4EMJXrbXinKuxH2cLxrN/pTRU76xrZGLUhbU8P5ktl1eNy+FvAN2xpk
         xbCQ==
X-Gm-Message-State: AOJu0YzbTr65dVeRwYhT1jizU6uKzSGfmDt47rySugOgIi+M9ohnAb/Y
	dPTlJQkxzgVwFA8vsgZ876UBMUyU3MFMu7EEAPxPnsHsxj7C7GyB9KnUQQ==
X-Google-Smtp-Source: AGHT+IFGpM1vQlzJioxtl7GNce5DRdcrrnzxy8q/rI7xiazoe5AaacEx80ViWZC+3aHxOnRHMry3LA==
X-Received: by 2002:a17:906:99c3:b0:a9a:423:3278 with SMTP id a640c23a62f3a-aa1f813667dmr694535766b.49.1731604646915;
        Thu, 14 Nov 2024 09:17:26 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e00172dsm85189666b.120.2024.11.14.09.17.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 09:17:26 -0800 (PST)
Message-ID: <7b90ee51-b052-4c22-99b6-f966b700072a@gmail.com>
Date: Thu, 14 Nov 2024 18:17:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Issue with pulseaudio.15.0 version audio issue HFP/HSP
 profile
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
References: <Qrgl.1731561512622402340.0SLS@lists.yoctoproject.org>
 <CACsETStjvEgnOppMi=ko1XrqEEAdq3WPsDKWwdQo5ykSVzE60A@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CACsETStjvEgnOppMi=ko1XrqEEAdq3WPsDKWwdQo5ykSVzE60A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Nov 2024 17:17:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64278

This is not really a Yocto question, it would fit StackOverflow better, 
I guess that's the main reason for the silence.

Some thoughts, and questions though (in no particular order):

- Pipewire is taking over PulseAudio, mostly because it's less pain to 
use and make work usually. Did you consider giving it a try?
- Do you have ofono added to PulseAudio's PACKAGECONFIG (or "3g" added 
to DISTRO_FEATURES)?
- Do you have PulseAudio and ofono daemons running? If yes, are there 
any notable log entries (journalctl/syslogs...)?
- What do you mean by "able to play audio"? Do you mean that you can 
play some sound file, without any apparent errors?



