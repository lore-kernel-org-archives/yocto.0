Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2667DD2A530
	for <webhook@archiver.kernel.org>; Wed, 16 Oct 2024 16:07:08 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.27252.1729094827159171245
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Oct 2024 09:07:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AU3g50JB;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-37d8901cb98so736881f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 09:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729094825; x=1729699625; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HMUgvJ+4+UVMZKGhJ6jQcR3Xk5wr+KJciZpV3VhYsFA=;
        b=AU3g50JB0r013WbRro7d2DSBHiw6UddmSg009qCyLc92C07EIvwLV72TZ8BTO626/8
         1IOXSUKi428VH+WXy9RaPZkU3bsVkYypKqrMhQQtaE09EFuvYEGXISrQm+cmMR2vCKA4
         xfba/WO3sZjNBAxl4ps3KK1HgmdlYr6//T1b5u/Yph3TFoU6PhuoEkuL/4xWNc75Sjln
         z1uqBi/nV8tQ3BHuLhdd51XCh8ww6wd6YUWeY1oDgh+i4ze9mVbEjHq9zkYWkEnxgM9A
         fA43SXLSVC23NtVx2jZkkwI8x0TEtwu6OJXQ09qoeQdV/U1suB0hha7u1wSix5i0rnAY
         Ftqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729094825; x=1729699625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HMUgvJ+4+UVMZKGhJ6jQcR3Xk5wr+KJciZpV3VhYsFA=;
        b=YujmwTVM92ZgNDzlk3Fzv2QL2803wnoc7Z3rTbiyeo7ijz9mXZml2FIq6zvIVggOSj
         JvTF3e5qZ23cCMqAWKEV6o86WE9UIbksAZs5klXOttf4d7QWzZgK0wWx+7FBWbvzy2pt
         xUy6ANFve28KK13jnlPv5i+Fw0IBVfeOYyofMaeZn1i3iNMNK0RK/hANzRVpRgJ5SMNe
         0ppcqY0BqjyRmmbEemOk6hrX77hmnYtNSIZfbBSDZJXTkMIQEcbQBTEjeyJ1WHha2Jb3
         ZC8pQSLB1ozMV4dZPatpjaQT9axcg5II8AOplvxw2H/kvzxUzwbXOpthOikqQbFUihtd
         V1zA==
X-Gm-Message-State: AOJu0YwYoalDAT3+nxA2D67a+9X8xrCDHj7WdBXD0I5b93EZgD7OLO1x
	4w9dd/J1y4CAxpF5X9+kn49d/Cw8xwIopKdYxDKuw22LXwoGXuYAn75Qhw==
X-Google-Smtp-Source: AGHT+IGhR9d7TdkrP00Y8QEm1ZQCt03gjHwpmS6oqsRGCU2bdNxOLDlSSvf4e77vrsiuHX+CtS/ZCQ==
X-Received: by 2002:adf:e807:0:b0:374:bd00:d1e with SMTP id ffacd0b85a97d-37d93d43e56mr81244f8f.3.1729094825201;
        Wed, 16 Oct 2024 09:07:05 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa87b51sm4696701f8f.34.2024.10.16.09.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2024 09:07:04 -0700 (PDT)
Message-ID: <eb40400f-0b6d-48e1-8216-fb34ff6ec880@gmail.com>
Date: Wed, 16 Oct 2024 18:07:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] wlan.ko kernel object not being built by Yocto
 #kernelmodule
To: yocto@lists.yoctoproject.org, Jesus.JimenezSanchez@verifone.com
References: <WIeL.1729093594096600716.n9TJ@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <WIeL.1729093594096600716.n9TJ@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 16:07:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64030

Note that .ko files are built for modules (most often drivers), but 
CONFIG_WLAN is a boolean option, it has no module option. If it is 
included in the final config successfully, then the related code is part 
of the kernel itself, not a separate kernel object/module.

You can find the final config in the build folder (see 
https://docs.yoctoproject.org/kernel-dev/common.html#using-menuconfig 
for the exact location)


