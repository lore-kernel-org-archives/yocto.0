Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500DEC4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 16:02:52 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web09.17869.1667750570370514142
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 08:02:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=UOAcLUaw;
 spf=pass (domain: mistywest.com, ip: 209.85.210.180, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pf1-f180.google.com with SMTP id y203so8565797pfb.4
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 08:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ilba1rH5BWqq26zViOwYnCQXz4db5k5i2WQOjwRia8c=;
        b=UOAcLUaw+tt1iL3mvEdo9DMQM3f5Z0ySjqTm12o8a73u/Oa+JfuFj99gtGlRZJi/kq
         nDUPkQgyrsDWJWi8nF0gB/rwJDy7K6CBHkE5CJkEp/xVopb+ckUTs8wu98dy55TsxNpi
         W2bub5nVQdTnfYS3ypSiWEyWwn9giL9KrNtfIp5HhdLC6CbIQZS2w2NrV7xvan4K8yDU
         ODIhAWzfWnR2uUr8I+1207fZaS6DWXjKC3CZ0Ga+aw15D9L3mXLCnvUJAg5dWL007yHy
         uI0c/dPn2W50I3qC7Thvr8AmzJ+C+x5buNaN6h6YUxd2ahFmx9lGGgsN0W6zNEBzfBvG
         tEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ilba1rH5BWqq26zViOwYnCQXz4db5k5i2WQOjwRia8c=;
        b=mTB5LIrorNg+8O4HniT00W8NHlPb6Uw3d6pyvMTQW4o3EHy0mICOIEERoc9iZj34qZ
         GpBtCLjBz4SZerUdAzehVu9OoZvngRYusTw7/6MANW+9qgxu2Df4vRX9goJ2bgXcgBb/
         MsujhEAO19bUjFvKARrpESL1Zv2CGH+Vdzkf4Xa2QKzBRcxMyV7+K+Z8TWwl9Tz+WaCO
         5rrPwzIn0D6c0fxtFTiFamZrtaMBvfeMNN9fiXNjpQmr4n+wz27CCSFJT4qPzPcYPSwA
         Z+V/IqcKL00UxjKDWo5HZuBytfcZdsGZ0EzpPBk/3E4iz1wXke2AB8RA6hj297iXUDW2
         ehng==
X-Gm-Message-State: ACrzQf1j+5wGMCadU43G79QL+DGdrgU5u5DyWk0pHsKvBrOH5mt55VIU
	m8y2S+03pSLjZtzsjeP4x8icyw==
X-Google-Smtp-Source: AMsMyM5JZB0UbgRGbvgCwGFsT13JfrmkW31cMZmUQrQjSB4njam8mFrKkFcbjK8er/YC/QVQ3tq7Ng==
X-Received: by 2002:a63:4e5a:0:b0:438:9513:da55 with SMTP id o26-20020a634e5a000000b004389513da55mr38390337pgl.381.1667750569529;
        Sun, 06 Nov 2022 08:02:49 -0800 (PST)
Received: from [192.168.1.223] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id x12-20020aa78f0c000000b0056cee8af3a5sm2755406pfr.29.2022.11.06.08.02.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 08:02:49 -0800 (PST)
Message-ID: <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
Date: Sun, 6 Nov 2022 08:02:48 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 16:02:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58498

On 11/6/22 02:26, Anders Montonen wrote:
> On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
>> Hi,
>>
>> I'm working with dunfell and want to compile and install the drivers for the Laird LWB5+ module (available from https://github.com/LairdCP/meta-laird-cp).
>> I have included the path to the layer in meta-laird-cp-pre-3.4 in my `bblayers.conf` and since I need the networkmanager and with information from their support team (don't trust the README apparently), I've added `lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in `sample-image-cp-lwb5plus.bb`. When I invoke `$ bitbake sample-image-cp-lwb5plus`, I keep getting:
>>
>>      | /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: undefined reference to `rl_echo_signal_char'
>>
>> even though I've added `readline` to the `DEPENDS` list. Why is this? I expected the `rl_echo_signal_char` dependency to be resolved, any hints?
> Are you using meta-gplv2? That function doesn’t exist yet in the version of readline provided by that layer.

I see, yes my project is using "meta-gplv2".

Should removal of that layer help, or would you recommend that I update 
the readline version within it to the latest? (and provide an upstream 
patch to: https://github.com/lgirdk/meta-gplv2 ?

Thanks!
Ron


