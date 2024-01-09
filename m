Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09B0C46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 13:28:20 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.16737.1704806898619505643
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jan 2024 05:28:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=ZJVp0WOI;
 spf=pass (domain: smile.fr, ip: 209.85.128.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40e52ebd63dso1529995e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 05:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1704806896; x=1705411696; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ongvwyrkXvdN6Bpb64UYVckbVif/tJXvL2smMEMawr0=;
        b=ZJVp0WOInB9E61HBK49Y1ZjjO9h0eH4MZ7NJBhQXOhir6uDoNsHPWDeU1HPPvlnxn7
         qUkVHdn02RSY6mWacrZr15d8Bvu9RIm+0N6ZqX+hOVmIKvJ4DYKnFQCqzDZo/Lwjh1HL
         N4wsBfXV5mFlGWC4St7rFR9c203NiDSaTX13UsbieUNaQxRE/Y1p5NRhg/l2/xqfZqJI
         NZ0tGybAXB/0hxGZyD+W8mwPDoYR0+TBPblm9x4mXHER9LsBiBYQNmIVaTO6esQ/P7Mm
         N4mF7jdYHtRKk1BnFTV0BoV5O2NDymr1mPRzajOcZmRvPx/8Vrt6Ys5EsaR3a+QsW2wR
         euEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704806896; x=1705411696;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ongvwyrkXvdN6Bpb64UYVckbVif/tJXvL2smMEMawr0=;
        b=vcDqSKzZxMVrXiODs/q/OSgmsElKqSAzvybBfV842ECq7kg7IMKA1Kfk8MJWm4m2IH
         OajgwKMFdmD+1G7UAicpJkBiHxt5NrURqXUcNn5tOU0XjBGZT33JVUQ1C9QC7zaIDA3a
         LkEzJv6Fd7T4qxbulAMp9Q9uT/A+ObVqG8RmaDC8NH/07wFEEsv0s87DUjI8P3sD3B/B
         DMr9Mcn6Hs5WBwFK6Ec9+zXZNoz5HiBV0JK2j84w9BbVPfEwYm0IFbmreQf/CMya8wxM
         14F4AnLRbIJAeYnxmI+rOEkbF/R3R9Lyqq1T2x5rkibxsQDdNxeR+j3rok7h0DP9lvOt
         ob9w==
X-Gm-Message-State: AOJu0Yz9eX6OZrocc+WTwmCMp+QEDL9qTZFA82S6MOUlg21z/jlhkZJM
	3D59mxpue7IfTbpAlL8Nz1v4TIQOoA/sebWjX291Ej7eeXBhWg==
X-Google-Smtp-Source: AGHT+IF6r+XaLm95KEHKZgmoYJVS041ojOiIxg1NRLrccP+tnA4zK5orpCT84y1WLtJWvdmQLwc/bQ==
X-Received: by 2002:a05:600c:4b23:b0:40e:4aed:8af3 with SMTP id i35-20020a05600c4b2300b0040e4aed8af3mr982094wmp.52.1704806896431;
        Tue, 09 Jan 2024 05:28:16 -0800 (PST)
Received: from [192.168.0.28] ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id g13-20020a05600c4ecd00b0040d91912f2csm3648526wmq.1.2024.01.09.05.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jan 2024 05:28:16 -0800 (PST)
Message-ID: <486235f7-0b2c-4878-9d88-fa8f279f41f1@smile.fr>
Date: Tue, 9 Jan 2024 14:28:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Menuconfig saving erased after bitbake clean
Content-Language: en-US
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
References: <CAPJWBni=AhRSKRT5NjSyirmm6e8y5497XKjBJUfE+MAXv9yfxg@mail.gmail.com>
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <CAPJWBni=AhRSKRT5NjSyirmm6e8y5497XKjBJUfE+MAXv9yfxg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 13:28:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62118

Le 09/01/2024 à 13:03, MOHAMMED HASSAN a écrit :
> Hi guys,

Hi,

> I open menuconfig and add/remove some features, save and exit.
> If I build using "bitbake linux-meson" the built image has all the features.
> However If I use "bitbake linux-meson -c clean && bitbake linux-meson" , then all the menuconfig modifications are erased and the default configuration is built. 
> What to do.

That's normal behavior. The output of menuconfig is saved as in the temporary directory (build/tmp/...) which is removed during the clean task.

Information on how to keep the defconfig can be found here : https://docs.yoctoproject.org/dev/kernel-dev/common.html#using-menuconfig
(You may want to use the documentation of your specific branch)

Regards,

> 
> 
> Thanks
> Hassan
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62117): https://lists.yoctoproject.org/g/yocto/message/62117
> Mute This Topic: https://lists.yoctoproject.org/mt/103618090/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yoann.congal@smile.fr]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Yoann Congal
Smile ECS - Tech Expert

