Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38F33E77188
	for <webhook@archiver.kernel.org>; Mon,  6 Jan 2025 10:33:11 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.56782.1736159586331754619
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2025 02:33:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j+SRSNC0;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aa692211331so2738097066b.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jan 2025 02:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736159584; x=1736764384; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QTbhDbJShcIvx6h3hn2qTWJzXcVj9PMeJfd6O6s+SXA=;
        b=j+SRSNC0IYZakuZlZ6iuP7dEVpPaPpE2j73oT5V9R3cI6gAbacpbnTZFFfyHr0bprh
         1je8HYmtJKWtrVzLVC4zTOYLQh0UKaXFiZpfCdI9OupL0O9UzOC1mUW+9M6e2pRmvpi2
         cXU7oI1fqF+cZH6Mu9cRyeTuKdn1ivrdExShZvr0x6bIj3G3rQt8wWaxAup7XBMi94nY
         kbeemjS4to4YYWLepOlpH7xsW8gHr3nJXsHU9m6VaH/6DoEKVEMndRuhU5IBHFMUvp2M
         y9Ik/WKMsVTPJiFjNNx7rhcit5oOnM+vFiSTaSC2z4hevsFgKbotFfddtjQUyKuMTITc
         teTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736159584; x=1736764384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QTbhDbJShcIvx6h3hn2qTWJzXcVj9PMeJfd6O6s+SXA=;
        b=TP2KAocK/GVs5Tn0TkOQIzLBDvYuOJN5/EcvWdY0GcGtPU+koxtOYg0ZF32FcQUEJ1
         WeHu3Ehiy2ED80cqixOvy1WBKBQNuvSSjaytdtoVYkBynbqkSwYr/XMKpsQZv2d1X3WQ
         RGif9aF1vnK7sdTxKAkNzJAKr3sFJUr3xEn1yY8HY7pBM9BJV1lmguRR4IrLnIXcPfBn
         ndhhJo+SaxPKBQN/Zm8a0VcyW0QWMWdcd2TmgKCZrHLbPKNvO9DB1dSNlVUQ9cexnW4m
         pl8xQHMG34H6feE7gWRs4vmgFX5JuAyesmnnm9pbHmxisZmrtdJTuixyqeHCAoqoi0QK
         euPg==
X-Gm-Message-State: AOJu0Yy6O/1JGtMTIQN0HALRs6JhKSNMkyEuWwbvM/Z9VmjCtH3n/J1G
	Us9RKWCYAZ7kcl5aoN83r/N/s5qi5EqsTJ+8S2VnD/axUUJv5ne8mH1S1A==
X-Gm-Gg: ASbGncug3U9XOWQyFrCDvVU8X9sclVU7fc6pDMxSnhwvXynIehxDNtQE8OFmHoHtpyl
	/XA4arEo4rN6sOfeOcRF5LzbnVDecbrTOSuUUgKr8hAb83PGl0Wl2GozCU5VE6t4gFGVw7/1Kd8
	dloTZDc4JNuUBPlCtED45akNlPoOa4266kuWtAgtx56r9UvMMr2oi5a4cWxvHaa8CJX47LBTMOu
	jW6w4wfyLK0Va2mGkCmPifmZ/mtB5OULEw5ZB1DTvfanIKOj5jWfc2u9ET68qce
X-Google-Smtp-Source: AGHT+IGmiblKjPaJuq4NGKoMcRl8+Bh8qLqYFvdGhn4nAZdb7er4lmz0lS7NfmuT5LF7aaSmnNvGjw==
X-Received: by 2002:a17:907:1c96:b0:aaf:ab78:34f0 with SMTP id a640c23a62f3a-aafab784915mr971466166b.30.1736159584332;
        Mon, 06 Jan 2025 02:33:04 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06c654sm2258566266b.185.2025.01.06.02.33.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2025 02:33:03 -0800 (PST)
Message-ID: <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
Date: Mon, 6 Jan 2025 11:33:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
To: yocto@lists.yoctoproject.org, kumar.manu@siemens.com
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Jan 2025 10:33:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64496

> *
> *
>
> *IMAGE_INSTALL:append =lightttpd *
>
>
Just to confirm: "lighttpd" has only 2 "t" letters (not 3, as in your 
message), and it should be enclosed in quotes. Also, note that when you 
use the override-style ":append", you have to take care of the spaces 
around the appended value too:


IMAGE_INSTALL:append = " lighttpd "


