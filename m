Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5998BC433FE
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 04:20:02 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web08.498.1667794797907677913
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 20:19:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=1Vic73op;
 spf=pass (domain: mistywest.com, ip: 209.85.216.51, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f51.google.com with SMTP id f5-20020a17090a4a8500b002131bb59d61so11701251pjh.1
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 20:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JrGNPsowk5wlA4mULMQ72OlkqiYwOVZL7OJpVNE6sgQ=;
        b=1Vic73opG75ZbyvbZrK0aEkkoy5+dMiZ+pnzSHYh+mtrkLBUDcAQRV+gdIjmzAnODb
         0GVvta7Z56O6XgROFqAUB6ZtNuS7Ed7KilvTG8o4dcAN4lni7SOiNawBIzdnvG2v/i7M
         KTLxf8FIcbXdvBX7KiOcw7dJnX8s2hetaSXcDXA/eQvmWchtds8df+rzGlI4AI/u2Si+
         6WvyclNwenVPpNjlQgAmf6F3311H/LQwmpYY1Nbf86w9OaK9LQrROintV25UmEOH2dCC
         fS/1BXdEtKMdCD6IQqKDw0B5DsSnZ4VVKhYmhgTl+27T3v0qTNRgsl66p+zMbx2NsgG3
         Oo5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JrGNPsowk5wlA4mULMQ72OlkqiYwOVZL7OJpVNE6sgQ=;
        b=FtrTZPTpXz1UvTh+AmtoSN6p75rPT971I/VKXxnX3hRyP1bFIhyFCNaym8+uw17sV6
         Hv/zBIg0aMpEGwHC1pMtbGndZapqhKDn+gDEEP0orWldPzWYHe0A9jCcGkwhXnv4e41o
         7gVfGJR0pU4+a/keWcOx4BsDCLwL/Rj1mcPDXndDpDOlaGJFEE8pvNh5y/DZ4FIFpvEJ
         zr9KYewU1wIU8/UYjT3ct9dwUUaOwnRnhg0p+WLfKsyC8TMtYAEor5f8PH3BwWIJuDxI
         eluP+kzbid+Arq2Zi0jo8/AAn/9OvL3lpszhaN5Ti52BqnzQg8Whkss4cHKvg4NY8C7m
         5tXA==
X-Gm-Message-State: ACrzQf1wVI/WIQmBwj11JpjfZHN15iwX+AkHp57sIvSmuhrjUks6DM6z
	qVJwmQFNLaQxchCUzuc0KaMn5X/zEGZi8lEl
X-Google-Smtp-Source: AMsMyM70DoJWs8Mlth3BzXRT7DXA7p/me6NUkq/vOULHc3TCxJ5+UBYrqv9rbXodFTBqyWV0rbBSRA==
X-Received: by 2002:a17:902:b201:b0:187:1acf:249b with SMTP id t1-20020a170902b20100b001871acf249bmr41417893plr.174.1667794796738;
        Sun, 06 Nov 2022 20:19:56 -0800 (PST)
Received: from [192.168.99.2] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id u10-20020a170902e5ca00b0017f64ab80e5sm3837501plf.179.2022.11.06.20.19.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 20:19:56 -0800 (PST)
Message-ID: <cae13328-859b-8f32-be96-56ca1f194647@mistywest.com>
Date: Sun, 6 Nov 2022 20:19:53 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
 <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <CAMKF1srJcmZsM+Gr=8nGrhTdnGJdgZii+-1vmqdyZQFuGDwo3Q@mail.gmail.com>
 <CAMKF1son6juOfbvEbcaXTb5uFyL2jB2hzgkTyXJFocRhgFtaCA@mail.gmail.com>
 <17252C937E759BD8.12191@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <17252C937E759BD8.12191@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 04:20:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58508


On 11/6/22 18:30, Mistyron via lists.yoctoproject.org wrote:
>
> On 11/6/22 18:16, Khem Raj wrote:
>> On Sun, Nov 6, 2022 at 5:00 PM Khem Raj <raj.khem@gmail.com> wrote:
>>> On Sun, Nov 6, 2022 at 8:02 AM Mistyron <ron.eggler@mistywest.com> 
>>> wrote:
>>>> On 11/6/22 02:26, Anders Montonen wrote:
>>>>> On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I'm working with dunfell and want to compile and install the 
>>>>>> drivers for the Laird LWB5+ module (available from 
>>>>>> https://github.com/LairdCP/meta-laird-cp).
>>>>>> I have included the path to the layer in meta-laird-cp-pre-3.4 in 
>>>>>> my `bblayers.conf` and since I need the networkmanager and with 
>>>>>> information from their support team (don't trust the README 
>>>>>> apparently), I've added `lrd-networkmanager-sterling` to the 
>>>>>> `IMAGE_INSTALL` list in `sample-image-cp-lwb5plus.bb`. When I 
>>>>>> invoke `$ bitbake sample-image-cp-lwb5plus`, I keep getting:
>>>>>>
>>>>>>       | 
>>>>>> /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: 
>>>>>> undefined reference to `rl_echo_signal_char'
>>>>>>
>>>>>> even though I've added `readline` to the `DEPENDS` list. Why is 
>>>>>> this? I expected the `rl_echo_signal_char` dependency to be 
>>>>>> resolved, any hints?
>>>>> Are you using meta-gplv2? That function doesn’t exist yet in the 
>>>>> version of readline provided by that layer.
>>>> I see, yes my project is using "meta-gplv2".
>>>>
>>>> Should removal of that layer help, or would you recommend that I 
>>>> update
>>>> the readline version within it to the latest? (and provide an upstream
>>>> patch to: https://github.com/lgirdk/meta-gplv2 ?
>>>>
>>> you can also look into replacing readline with editline and see if
>>> this would work for your package needs. That will be one less package
>>> needed from meta-gpl2
>> I should have said libedit and not editline
> libedit is the editline library under meta-devtools: 
> https://git.yoctoproject.org/poky/plain/meta/recipes-devtools/libedit/
> I'll give this a shot!

I replaced replaced readline with libedit in 
meta-gplv2/recipes-support/gnupg/gnupg_1.4.7.bb, invoked bitbake and got:

| 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/lrd-networkmanager-sterling/10.4.0.10-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/8.3.0/ar: 
`u' modifier ignored since `D' is the default (see `U')
| aarch64-poky-linux-libtool: link: aarch64-poky-linux-gcc-ranlib 
src/core/.libs/libNetworkManager.a
| aarch64-poky-linux-libtool: link: rm -fr 
src/core/.libs/libNetworkManager.lax
| aarch64-poky-linux-libtool: link: ( cd "src/core/.libs" && rm -f 
"libNetworkManager.la" && ln -s "../libNetworkManager.la" 
"libNetworkManager.la" )
| make[2]: Leaving directory 
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/lrd-networkmanager-sterling/10.4.0.10-r0/build'
| make[1]: *** [Makefile:18508: all-recursive] Error 1
| make[1]: Leaving directory 
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/lrd-networkmanager-sterling/10.4.0.10-r0/build'
| make: *** [Makefile:8521: all] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of 
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/lrd-networkmanager-sterling/10.4.0.10-r0/temp/run.do_compile.78849' 
failed with exit code 1
ERROR: Task 
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-mistylwb5p/meta-laird-cp-pre-3.4/recipes-packages/lrd-networkmanager/lrd-networkmanager-sterling.bb:do_compile) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3706 tasks of which 3702 didn't need to 
be rerun and 1 failed.

Summary: 1 task failed:
/home/yocto/rzv_vlp_v3.0.0/build/../meta-mistylwb5p/meta-laird-cp-pre-3.4/recipes-packages/lrd-networkmanager/lrd-networkmanager-sterling.bb:do_compile
Summary: There were 4 WARNING messages shown.
Summary: There were 7 ERROR messages shown, returning a non-zero exit code.
yocto@933e43234703:~/rzv_vlp_v3.0.0/build$

And I have troubles to decode what exactly is causing the error in 
libNetworkManager.a - can anyone help me to shed some light onto this? 
I'm not sure about how to fix the the `u' modifier problem either nor do 
I know what it really means.

-- 

Ron


