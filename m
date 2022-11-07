Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34503C433FE
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 02:19:28 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web08.5866.1667787566956558061
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 18:19:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=R9TwK4x5;
 spf=pass (domain: mistywest.com, ip: 209.85.214.171, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f171.google.com with SMTP id j12so9838082plj.5
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 18:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kmvWxorzib78c46SaegsOPym01365vdHhi4lkVrrXYU=;
        b=R9TwK4x5dRhdzIygQ835FT8p0HL/Wvyf08AE04U5t/3HJj+aTEAcKItGbb7l1b2aAW
         n4rgok8mgt40gAftzsx6PD1wCWOmpMpaVkly93AQ3Ug0nulutmhB/l4YylKG9kZAcU/+
         w0Um2SwVHUSni0oqpqGx9hNsfQOMgxKgYmniJRaMndMj9A/5y9kGRl4tbjJBDYaRiBtM
         +Z7URZo3owknxOtKHPkpRXT+LXPxunqJJXdqaBDG2loQbgvZ6ESPrrozaiK7VAlLGv9W
         QoTx/KXp8RjvCVJ10I7D63/iRtcHwO7q8LlT0FXScC94m0HC0Q0eowYMPPcaS9RKFcwP
         7b3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kmvWxorzib78c46SaegsOPym01365vdHhi4lkVrrXYU=;
        b=URf5qhyPSIKt/acdzNqdwRUN2XBE6cnmFlobPLWsmsDDR6jWBpamGuqi7ss5JOfsSl
         nbfPi1bYuQCqu8Rhbl1caQM80DslXzj4iE1HCJ9wlaKS0MLtsQi0YngxCVTQysrGL5CJ
         djeRND8Avr6u77PEaRXwkof5Nl9QDW2xCmTDqvbf+zFMBg/f0oUZ2itK9pG3X8zP2f4D
         l1TD8fBJnh0PHiGos2d7gWk3tnUo8matCI2pk0BFLNZBPBed5pVERmmaASitWb7Ui+MW
         K02L8p4YE8ia0sjW9KvD3CAYD2vGYdn0EhvFJQa7mkrWrQqFKze2/fF5NY/QHtCbj0UL
         si7w==
X-Gm-Message-State: ACrzQf1aU5itKj9pt5LUQCDa5WzxyOpzbcOwtMV5YClnWBbS3DLdG17a
	pH9aI2JjHDJB+H1ZDHc6VZRSqg==
X-Google-Smtp-Source: AMsMyM46pLDItgg5D6npUZrDH0oE5fPFHbXxjqDPrccgRIOuBxTRdEsp+iAvxOw0kLYnBY9iE6nJjA==
X-Received: by 2002:a17:903:2490:b0:17f:bf7e:c521 with SMTP id p16-20020a170903249000b0017fbf7ec521mr48390687plw.161.1667787566388;
        Sun, 06 Nov 2022 18:19:26 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id f17-20020aa79d91000000b005627d995a36sm3173990pfq.44.2022.11.06.18.19.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 18:19:26 -0800 (PST)
Message-ID: <1e2ca4a3-c266-90a4-9315-ecb5502e03f1@mistywest.com>
Date: Sun, 6 Nov 2022 18:19:24 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
 <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
 <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
 <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 02:19:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58506


On 11/6/22 10:12, Alexander Kanavin wrote:
> On Sun, 6 Nov 2022 at 18:36, Mistyron <ron.eggler@mistywest.com> wrote:
>> I'll attempt to "just drop" meta-gplv2, then. However I see that there are other dependencies on readline too, i.e. it might be easier to just replace the existing 5.2 version in meta-gplv2 with 8.2 from here: https://git.yoctoproject.org/poky/plain/meta/recipes-core/readline/
> No. You cannot 'just replace' it, as they are under different
> licenses, and meta-gplv2 specifically collects versions under gpl
> version 2 only.
https://www.gnu.org/licenses/rms-why-gplv3.en.html specifies:

"When we say that GPLv2 and GPLv3 are incompatible, it means there is no 
legal way to combine code under GPLv2 with code under GPLv3 in a single 
program." - What is a single program though? Readline would still be a 
single program within the bitbake build, would it not? I'm not 
"stealing" nor editing its code but compile it as is.

>
> Are you going to ship what you're working on to other users, or is it
> just experimentation?
>
> Alex
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

