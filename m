Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED0DDC636D7
	for <webhook@archiver.kernel.org>; Tue, 21 Feb 2023 15:46:07 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.45999.1676994361312750291
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Feb 2023 07:46:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=2TZ7b2/s;
 spf=pass (domain: mistywest.com, ip: 209.85.216.48, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f48.google.com with SMTP id qi12-20020a17090b274c00b002341621377cso5228252pjb.2
        for <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 07:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q9BUzPm/LYCZbFDQuEo9rgIIjn3bqr9YOXZVYtPn5NM=;
        b=2TZ7b2/sfnv8raJg4vVC0RB/AB0QQ7SXlBqEHi7Peb/ll3rToEwpZEkES3icbrPGFE
         seDOSu2sCvAzzIL2nLilJR7fxkxLowZemGJkfBkRthSRktVdXDcLcBixrcRWyeyuumHu
         5VjqmkOH7nBdi37lLdRT9/IzB30gbf8u6fQqp2LctY4XDhlHTXSi7qwVqTgA/IoXUGOI
         ZX4HcNPHzEKz7EytKIaCZX2FCKOEoJ+/LoWs9UDZwzvZOVojfto1kaOZpSR0edhql32I
         oCxWy9WI++dD2VWbXM2rXk5/OITxTg/wx0f8ZeWg+DtYNwFOZryYLY09goXny7tlGBJJ
         qArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q9BUzPm/LYCZbFDQuEo9rgIIjn3bqr9YOXZVYtPn5NM=;
        b=ABuaIi9zw+2dlePYJuAySlOfAKf4vctW0JI+nWqnRZP/jrHRI+WPkVt5YW0bPh+qqm
         pSvIq0PKhF//EcE6chsxTBjDjcfSFKmT3i4tEocIpjU2Ymk5lUgfoRiC5Fi1btV2ULbb
         Ccb+UMlLi4/Ue+Mnk3M7L4otQCSO67T0DycJzW0yuzKG3dCXssRBv1VcVkhV/G545g5u
         hD8QiAFwkMNunDvlWexxUXxMZYuSkjTFcFE8kaPr4h+z2ZP91gHRZIsHA591yq4gu+HX
         sFAwHusR1WDipzGL45Vnxp9gjE7RjlIv66KoNbwgWQ9f+ycVHDs42cdnsyXcSWGxBRpO
         Hq8A==
X-Gm-Message-State: AO0yUKWzo4zG3fQte3Jf42yJq0GHLzY5drKTwOkalyvYXweaN6o8E+wg
	h7Iyur+t1vk+SiG9ayYJtRokrUnhw+gaJ1SzLaI=
X-Google-Smtp-Source: AK7set9iyKstzECvojl62VeCN96Ad7AcqaajlaHPQFBSpNX6WOERcat/J7CsFMEJjBPn7SnljJrJKw==
X-Received: by 2002:a17:90a:ff15:b0:233:ee50:d291 with SMTP id ce21-20020a17090aff1500b00233ee50d291mr5251143pjb.22.1676994360487;
        Tue, 21 Feb 2023 07:46:00 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id i30-20020a633c5e000000b004fab4455748sm3241592pgn.75.2023.02.21.07.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 07:46:00 -0800 (PST)
Message-ID: <777de6c8-6d08-bb85-9047-98b73366f662@mistywest.com>
Date: Tue, 21 Feb 2023 07:45:55 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [yocto] trying to install files when those files already exist
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <e0c2ab60-7907-dc4c-521d-eec2f408ab4d@mistywest.com>
 <CAMKF1sonQ9FdWoURfV=P5pq3QUTXuOjKhAVRbpAD+9wWbjt=+Q@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CAMKF1sonQ9FdWoURfV=P5pq3QUTXuOjKhAVRbpAD+9wWbjt=+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 15:46:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59269


On 2/20/23 23:18, Khem Raj wrote:
> On Mon, Feb 20, 2023 at 8:20 PM Mistyron <ron.eggler@mistywest.com> wrote:
>> Hi,
>>
>> I'm running into a "is trying to install files into a shared area when those files already exist." error and am not sure how to resolve it. I get the following:
>>
>> ERROR: linux-renesas-5.10.83-cip1+gitAUTOINC+e52825e45b-r1 do_packagedata: The recipe linux-renesas is trying to install files into a shared area when those files already exist. Those files and their manifest location are:
>>    /home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard
>>      (matched in manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
>>    /home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard.packaged
>>      (matched in manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
>>    /home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/lib32-kernel-module-cfg80211-5.10.83-cip1-yocto-standard
>>      (matched in manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
>> Please verify which recipe should provide the above files.
>>
>> It obviously has something to do with the drivers for the lwb5p laird module I'm trying to add.
>>
>> How do I go about resolving this on my dunfell based build?
>>
> there are two recipes building same files which end up in same
> location on target rootfs. So you should either disable the in-kernel
> module or not include out of kernel module recipe

Okay Thanks, since it complains about 20211, it may be the following 
kernel config:
CONFIG_CFG80211=m

I'll remove it retry.
Thanks!

>> --
>> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#59263): https://lists.yoctoproject.org/g/yocto/message/59263
>> Mute This Topic: https://lists.yoctoproject.org/mt/97102802/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

