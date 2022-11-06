Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4A63C433FE
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 07:45:49 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web10.14347.1667720739841228836
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 00:45:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=qEJ0h6Ni;
 spf=pass (domain: mistywest.com, ip: 209.85.214.173, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f173.google.com with SMTP id d20so7438693plr.10
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 00:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICcO5/IvjAQn4mbkZlerKJ/r36KBnvWM9reJAEMT3nY=;
        b=qEJ0h6NiGzmTbSPq+FeoqaM68ZzD/Px8blAN0x2I1uQOqzShrZlBaVPqbPIueakpwi
         IXd9DIYWoA3gPT0o2bJJzmfR1wZnGaL1brA0B9mXOvsHe91n1vBg7JdzhoMvuPLxuts3
         kKOpzAJ1jJ+n1j5THHs4kk7krlGWAayABg8580Gnu86REktH0VrYgrFhD44iv9/3lpmX
         RiMPaWHP/xBrPqB+ua7nWH1RwYS/8+vLqOckuKcukqMI0l8aUTls033UHuLmpGT25p3p
         6M92do7rTQpoJ6Nq9hb6L2zQBTo+0SQIFl7ZyJFlF9hIb634pq0J4UmwGwkstCnRqvje
         hmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ICcO5/IvjAQn4mbkZlerKJ/r36KBnvWM9reJAEMT3nY=;
        b=ehvjY/OS8afZaz4m1KEUmAq/Q1qb0R5KPvoL3OgM1ggi/sk5MaS8Ion+xjskinyKg0
         Di5/bX9Ur+KakJLe3AWigZ2gTOFhFUuWoI3xd6Xqyo7Qzcv6LrLk5rKYtjxcex85xGh5
         nDwfCmHmvKIuY2zU3HOoKKv6JQdwds2hcNdq+L0B+34WGPGk6Nn1V9tZv0J+IB27Odzi
         mnTRbk3acfNSeFGyfbyGLpxPNkM+6UILO88rHwAIclNAh/BbgKYW5Jy43EuPtz1ag5ei
         Gzceu15zXwVxYXqXLQYXFeQCNjxpg80U8/NVwgvGTS/tKg+Jn8MAU2XONU8HI1m2RuT+
         KwJg==
X-Gm-Message-State: ANoB5pnoSMxTLMISXEiQ27zCc92C/EeUKgSniZPs8dTf0Wa1vJhJxkRI
	W+QRKvHmkLKB9rIsom+F4vy+WPC1yiRjl8AT
X-Google-Smtp-Source: AA0mqf5bzilIUEmFapgT+URpDssrwn/c5GD9FjMiiotgwypNrcPncgZ3yIKNwnt5ierh8bqd8+3lXA==
X-Received: by 2002:a17:902:ce8f:b0:188:7295:9373 with SMTP id f15-20020a170902ce8f00b0018872959373mr6622476plg.38.1667720738628;
        Sun, 06 Nov 2022 00:45:38 -0700 (PDT)
Received: from [192.168.1.223] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id x7-20020a1709027c0700b0017f9db0236asm2714726pll.82.2022.11.06.00.45.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 00:45:38 -0700 (PDT)
Message-ID: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
Date: Sun, 6 Nov 2022 00:45:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: undefined reference problem persists
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 07:45:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58492

Hi,

I'm working with dunfell and want to compile and install the drivers for 
the Laird LWB5+ module (available from 
https://github.com/LairdCP/meta-laird-cp).
I have included the path to the layer in meta-laird-cp-pre-3.4 in my 
`bblayers.conf` and since I need the networkmanager and with information 
from their support team (don't trust the README apparently), I've added 
`lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in 
`sample-image-cp-lwb5plus.bb`. When I invoke `$ bitbake 
sample-image-cp-lwb5plus`, I keep getting:

     | 
/usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: 
undefined reference to `rl_echo_signal_char'

even though I've added `readline` to the `DEPENDS` list. Why is this? I 
expected the `rl_echo_signal_char` dependency to be resolved, any hints?


