Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81B56C61DA4
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 23:48:29 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.57174.1678578505044747504
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 15:48:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=2LrxCtfX;
 spf=pass (domain: mistywest.com, ip: 209.85.216.49, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f49.google.com with SMTP id fy10-20020a17090b020a00b0023b4bcf0727so924690pjb.0
        for <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 15:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112; t=1678578504;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kqAmwhpl3HNCmGByF8NNGH9/8U98u19dV1b+sEyZgXE=;
        b=2LrxCtfXe5rT/+BiPvsCs0dVoEn+rLMv5wsm+3C/GdNefWyhIvLolXIQEmlPQwZ1V3
         7vUnVgG9F1GBBuZNqFLpwHWLXKAd+udC0G7frhbn98cyjPFu68viuKRpn7isVA5n6Wfn
         Q5nnn4UUzLvs/ss/bm4S04mjkOA4vn5yOof3/XWmy+hfY1b/JztQWpHzZhBM+LjtKvJI
         BdWC/wTOqpbnFDdRLiPhxhPxc6fDQ4O/6MbKuO6LOJw7RP6U8dh9CW/gkZyYB37veICD
         RNOpGuHKeWDUi4lLVNe7tCirT/6p6VFd4BNSjEG4pSt37KLN/kNPZIzGJE2YiitM5Bgk
         lsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678578504;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kqAmwhpl3HNCmGByF8NNGH9/8U98u19dV1b+sEyZgXE=;
        b=qRRbLgf8mPNNOFLUnp1Hd8ED1u4PipfQOtYk7Z4H1UXln4o6MGFmNA4sZ/Yqwa/DzB
         F84YPylITvHcrKKif88wD1LII6BTObXz7279QKUSe01wNI+icwcSHkxe0kah23oxTnZz
         WUkuSjss6KaTxSp0tvDjMUg6s/bMfKfRpxWkiW0rSRmd3yW//M/0TmOegLVB2s1K/S2r
         ui9cvd9FesdISdjuVb/cyubve6/Ca9MmuotTTYHNIy6m5Ib5YPLfWo5qYkh/BwbCONCm
         k6JeM741RaRx1qGaFF+h1d4pa4TwzTTS2ItbzVwHxa+jGZOjxghctZbFNFK2WVzTdP7J
         c79w==
X-Gm-Message-State: AO0yUKX9SnhePOrLYVVntamA0IyjEDutdrnmgeEcCG08tURnjhgfGcz8
	HF/NG30OX6QsLZ1cSLa1ARTIv7cXjzKXBnlJw33tpA==
X-Google-Smtp-Source: AK7set8qZCHKxIgWpu5WzHR1zlWkD70RfqO5TlXDRreEbA4bEQZmsd30KL3JEBuPzW6i9/c2qSpADw==
X-Received: by 2002:a17:902:be13:b0:19f:1871:3dcd with SMTP id r19-20020a170902be1300b0019f18713dcdmr3670401pls.5.1678578503984;
        Sat, 11 Mar 2023 15:48:23 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id c12-20020a170903234c00b0019e5fc21663sm1990247plh.218.2023.03.11.15.48.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:48:23 -0800 (PST)
Message-ID: <4ae86512-17ba-c260-52d8-3b074c4f1555@mistywest.com>
Date: Sat, 11 Mar 2023 15:48:21 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] eth devices not visible after applictaion of phy patch
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <174B7A16DDF1455F.32367@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <174B7A16DDF1455F.32367@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 23:48:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59402

I realized that dmesg also shows me:
mdio_bus 11c20000.ethernet-ffffffff: MDIO device at address 0 is missing.
and
mdio_bus 11c30000.ethernet-ffffffff: MDIO device at address 0 is missing.
while:
# mdio 11c20000.ethernet-ffffffff
  DEV      PHY-ID  LINK
0x00  0x00070572  up

i.e. once the system is booted, the PHYs are active and reachabele over 
MDIO.
The MDIO addresses are set to 0, both PHYs are connected to dedicated 
network (and MDIO) interfaces.


On 3/11/23 13:18, Mistyron via lists.yoctoproject.org wrote:
>
> Hi list,
>
> I want to apply a patch to the ethernet devices for the phy, where the 
> patch looks like:
> cat 
> ../meta-mistysom/recipes-kernel/linux/smarc-rzg2l/0001-add-vsc8531-userspace-dts.patch
> diff --git a/r9a07g044l2-smarc.dts.orig b/r9a07g044l2-smarc.dts
> index bc2af6c..82ba67e 100644
> --- a/arch/arm64/boot/dts/renesas/r9a07g044l2-smarc.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a07g044l2-smarc.dts
> @@ -11,8 +11,32 @@
>  #include "rzg2l-smarc-pinfunction.dtsi"
>  #include "rz-smarc-common.dtsi"
>  #include "rzg2l-smarc.dtsi"
> +#include <dt-bindings/net/mscc-phy-vsc8531.h>
>
>  / {
>         model = "Renesas SMARC EVK based on r9a07g044l2";
>         compatible = "renesas,smarc-evk", "renesas,r9a07g044l2", 
> "renesas,r9a07g044";
>  };
> +
> +&eth0 {
> +        phy0: ethernet-phy@7 {
> +                compatible = "ethernet-phy-ieee802.3-c45";
> +                reg = <0>;
> +                vsc8531,vddmac          = <1800>;
> +                vsc8531,edge-slowdown   = <0>;
> +                vsc8531,led-0-mode      = <VSC8531_LINK_1000_ACTIVITY>;
> +                vsc8531,led-1-mode      = <VSC8531_LINK_100_ACTIVITY>;
> +       };
> +};
> +
> +&eth1 {
> +        phy1: ethernet-phy@7 {
> +                compatible = "ethernet-phy-ieee802.3-c45";
> +                reg = <0>;
> +                vsc8531,vddmac          = <1800>;
> +                vsc8531,edge-slowdown   = <0>;
> +                vsc8531,led-0-mode      = <VSC8531_LINK_1000_ACTIVITY>;
> +                vsc8531,led-1-mode      = <VSC8531_LINK_100_ACTIVITY>;
> +        };
> +};
> +
>
> One question I have is, if the ampersand (&) should apply to the top 
> eth node (as seen above) or the inner phy nodes, instead?, I only want 
> to modify the phy settings.
>
> When I boot the system with the kernel & device tree, on bootup I see 
> the following messages:
>
> [    6.721177] ravb 11c30000.ethernet eth1: failed to connect PHY
> [    6.869282] ravb 11c20000.ethernet eth0: failed to connect PHY
>
> and when I log in and check contents in /proc/device-tree/ I don't see 
> any network interfaces.
>
> -- 
>
>
> *RON EGGLER*
> Firmware Engineer
> (he/him/his)
> www.mistywest.com
> MistyWest Logo
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59401): https://lists.yoctoproject.org/g/yocto/message/59401
> Mute This Topic: https://lists.yoctoproject.org/mt/97548982/7254380
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ron.eggler@mistywest.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

