Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C30C36010
	for <webhook@archiver.kernel.org>; Fri, 11 Apr 2025 11:48:30 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.23878.1744372104541437348
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Apr 2025 04:48:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ACaAk1Dr;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac25520a289so319142966b.3
        for <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 04:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744372103; x=1744976903; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LKMjgVMQdYYGZAPYAKe/91A/25HoX+a4+Jm3vlXrKvg=;
        b=ACaAk1DrrvMB9O7pvkhS4e94CyKdQyg9fKe8h4DSMJkcencwy1Og7Jf08xFSuAPNJ+
         ns3VbZFyCpl+H2uWSPaJaT/qiiV5o/5EwzTGSWK+AbMiSI7LYz9qgHWmNQNmykj6iZcx
         euL/76KP0RPiSuYVkwYOsKGgDfRC+dCHxEA1Sc/Sk0ULP7ioFUiVjC9A1/qc5ih12u7u
         cArQE3LrP3KB9xCH4oMHBgnULwVmQiLjkA11xzsJM43gLP+kXtph5Md8w5i0AeR5hF6h
         avoG5wo1NiOjy0Ws3bZgPu+sUzfgE2xPt9JcORKkJ8DtqTfKuPDAb13cj1gh6DcbZ51v
         vW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744372103; x=1744976903;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LKMjgVMQdYYGZAPYAKe/91A/25HoX+a4+Jm3vlXrKvg=;
        b=jvxjw4jJ5XY4OK2cBdHNuKpj950J4gBKFwEnTWlhqU9K1+N9/RSALSJ/rNXzB0biEn
         vYk0gdQqfgf3wnahWAnEqrQYQt/GvlF3ajDHZMV6aaneHGLGZKCq+YrKLhUXsjrsfrkF
         aCdTRJozfd2KAwcbAZCJrWXrjzo9qYY3m9ktmvSLMssem/Ud2r5opJcwQkAho6xNvixU
         q/s3V22MgxtL5uxjhmnCKyn7TuyLSZxHbHeccTDga07pHM8Zj1X9UKyG8o5DtnMxGMJG
         ciEz21s81DdmlhgxakZ9mVFbp3pjsUbH8t2BizoYIJwTLiJgmMO+/tdreJK4tLJUdbGT
         Xd7g==
X-Forwarded-Encrypted: i=1; AJvYcCV2eKbzsBIHcXmOXoJKtbY7K430/frUzD5+bOpa0vOKEZ28JPC9jyxz8DxBqw+O56JA26sEqQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxAeHFTdEPjmKQbSTx+9Gw/Uv9G+lnUst84sz4cGneskZHIi8ab
	Y+ViB2pH3+tyXFg27G2ww0Oa99K6jD9dW2dorvzlN0bywNTHM5np
X-Gm-Gg: ASbGncuROoBXOMMov4OodLJJHkOCjBvqL80AFfLnVcseOzNGMmiEnS+yijmBKXIq7lH
	MPr+zaRnBT71ED3SMKk6obYfTz9ktIFKmBvRpHZXcFMRffwJPls4eLP1ZbaPMwEKjkaKmhGueQr
	XH4J/GGIOy/huHVVTZ0nTuxfStHoyarfp4qtIdhZ+b+R39TqAJ601uSiAG5fXA8QsV++EUntgoX
	g2oygpP6pnEnkqAlJQZVbRcvcC1Ywg03DA6TmQshYUl6BAKV/YdKqqOouoA4UTKds1dMwWYjTXQ
	dsYIM2wMp00t5JSoBMVhKAPbE0zs37tkyzluH/+jvNUZ5tlf
X-Google-Smtp-Source: AGHT+IEsQ7zJ1sDIqQu99BbVlnXr+K83D/ER13gcsdzk7r/IC2VU17CX81TvvlfMXyOyDzjZUZHGpg==
X-Received: by 2002:a17:907:1c07:b0:abf:c20d:501a with SMTP id a640c23a62f3a-acad3493bccmr219606066b.16.1744372102393;
        Fri, 11 Apr 2025 04:48:22 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccd2c4sm425706866b.129.2025.04.11.04.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 04:48:20 -0700 (PDT)
Message-ID: <27168653-ce9a-417b-8f89-5efc9466ab9c@gmail.com>
Date: Fri, 11 Apr 2025 13:48:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: nguyenthaithuanalg@gmail.com, yocto@lists.yoctoproject.org
References: <5c2e8a3c-a94e-4e0b-922f-1836da6a64d9@gmail.com>
 <2395.1744368739943834005@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <2395.1744368739943834005@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 11:48:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65140

On 4/11/25 12:52, Thuận Nguyễn-Thái via Lists.Yoctoproject.Org wrote:
> Hi Gyorgy,
> Thank you so much, I can add/build successfully a recipy in Yocto.
> I have a question, I have a project and wan to contribute what should
> I do?  Firstly, is there someone review my project check quality,
> feature, ...?
If you have an project that would be useful for others too, and you
would like to contribute for the Yocto community, that would be fantastic!

Most new recipes can be submitted to the meta-openembedded layer, which
accepts contributions via mailing list, and also via GitHub pull requests.
You can find info on this in the readme of this layer:
https://github.com/openembedded/meta-openembedded/tree/master/meta-oe

Once you submit your recipe, it will go through 2 main processes:
1. Peer review - people look at your patch, and if they find anything to
change, they will tell you.
2. Your recipe will be also compiled for a number of platforms, to
ensure that the recipe is correct. If it fails, you will be informed
about it.

Generally submitting your patch via the mailing list is preferred, this
is where more people will see it. GitHub works too, but there are much
less feedback there.

Hope this helps.

> Best regards,
> Thuan

