Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46CE6C4332F
	for <webhook@archiver.kernel.org>; Thu, 29 Dec 2022 00:32:48 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.194487.1672273958685832643
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 16:32:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=kme4eoA6;
 spf=pass (domain: mistywest.com, ip: 209.85.216.46, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f46.google.com with SMTP id i12-20020a17090a4b8c00b0022632104a6eso142725pjh.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 16:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O39uQHVM9Yi5nmO48Gm/bkiiBAXVTDdYy6ooT/dzbZA=;
        b=kme4eoA6+CM5758cx7NjjIzLvfgRyWMUSAgfM092+1RYOdgKcZnw/cls8PzGPA7lDd
         eDXw1SEnzAUicHfucdAgfKFOR20yWmW107WyjGTY/WbdThIxLxWwCVUEtvwTGuBLa52V
         g6QfshLJk6qnzWKpk+ltkCrK9oW6rlHLTyzvvpRO48LGw1hvXFtx1BG6bPx0ZhHJDKeD
         ws4ieCzFoPe8tvOQTIBXMi3E4sU3quwb4NBRzfhs/+AyQm1hBKbIvZlwyD25OQVqU7gO
         gNx2k8Q4cEHm3fHAj6+G6QXQ9QWyzpuBRMzZmCl3vmJUEB3AVfnBIOP7vUBUEfiyFkNm
         NeVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O39uQHVM9Yi5nmO48Gm/bkiiBAXVTDdYy6ooT/dzbZA=;
        b=4LVfuMoR7iIGoBpqzXJ5Lvfp1la4SVP8IKyXgbjojhUX8uzLcN/94I+JVG8rjUOeFf
         9bLix1p+r1qkUoQX0kotMYx7Ok5bh7DKYa0+SWD6buado0JGrtOc+2IPR3eZJUdu0zxL
         jW1w6GKid8bWNY7UKL9SQLP0YcRbRTS45/f8DMZfSDx2jZBfguUUgx0kmosZmb4MroE4
         kbe5RCA6ozd5uCIZ/yz5aCtCDwR33CNOQvSXx7MwahoQNdaDEH5jeX3zIf8QqXqqGyEr
         77vYJerX9tIQswbHjPywCgu9fS9jjp8hcrhOKk0bM2Xyr7EizaHWQKMFW/olPm2YC2Vo
         CHOg==
X-Gm-Message-State: AFqh2koSGttjh8IGZNNpLseMRVIIUoyJ8xdHMmKBVrASgmrE2gex7GCP
	rI6wx36j3YTiuAX94pqfsL92lMmtk///D10NMdY=
X-Google-Smtp-Source: AMrXdXshWotMYg/F5fwZcj60bqXVTcrJNoCWst1lLPOIUgwLs3WsPOsgKPs29hbeojy6cgS7MG65tg==
X-Received: by 2002:a17:903:3296:b0:186:8bb2:de4b with SMTP id jh22-20020a170903329600b001868bb2de4bmr25892181plb.43.1672273957658;
        Wed, 28 Dec 2022 16:32:37 -0800 (PST)
Received: from [192.168.99.2] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id jg21-20020a17090326d500b001929827731esm1739414plb.201.2022.12.28.16.32.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 16:32:37 -0800 (PST)
Message-ID: <4fe67275-5780-ebb7-cc27-e8b9cca780ca@mistywest.com>
Date: Wed, 28 Dec 2022 16:32:35 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] DISTRO_FEATURES in custom recipe does not override
 local.conf setting
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <bdd0eba8-6eb8-a72f-85f9-bf4b316f0987@mistywest.com>
 <CANNYZj-W7NQkiP-1SXBNMpvj-GC96rEtGJDF1N2N-0Gv9PNweg@mail.gmail.com>
 <1735120FA8072B6E.27785@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <1735120FA8072B6E.27785@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Dec 2022 00:32:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58886


On 12/28/22 13:24, Mistyron via lists.yoctoproject.org wrote:
>
> On 2022-12-28 7:55 a.m., Alexander Kanavin wrote:
>> You can't. '_remove' has priority over everything else, and
>> DISTRO_FEATURES cannot be set from a recipe, only from a global
>> config.
> Oh okay, that makes sense then!
> Thank you!

Although, as soon as I added

DISTRO_FEATURES_append = " x11"

to local.conf, I'm not able to build anymore but see an error like below 
instead:

| checking for GBM... no
| configure: error: Glamor for Xorg requires gbm >= 10.2.0
| NOTE: The following config.log files may provide further information.
| NOTE: 
/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/build/config.log
| ERROR: configure failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of 
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/temp/run.do_configure.480136' 
failed with exit code 1
ERROR: Task 
(/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.20.8.bb:do_configure) 
failed with exit code '1'

I've Googled around but nbot been able to find a work around.

>> You should edit local.conf, and complain to your BSP provider
>> for using _remove instead of a direct assignment.
>>
>> Alex
>>
>> On Wed, 28 Dec 2022 at 16:51, Mistyron <ron.eggler@mistywest.com> wrote:
>>> Hi,
>>>
>>> I'm using the provided local.conf from the BSP which contains:
>>>
>>> DISTRO_FEATURES_remove = " x11"
>>>
>>> but I need to install xrandr in my image which needs x11, i.e. I set
>>>
>>> DISTRO_FEATURES_append = " x11"
>>> IMAGE_INSTALL_append = " xrandr"
>>>
>>> in my custom recipe. However, upon building, I get the following error:
>>>
>>> ERROR: Nothing RPROVIDES 'xrandr' (but
>>> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-core/images/mistysom-image.bb 
>>>
>>> RDEPENDS on or otherwise requires it)
>>> xrandr was skipped: missing required distro feature 'x11' (not in
>>> DISTRO_FEATURES)
>>> NOTE: Runtime target 'xrandr' is unbuildable, removing...
>>> Missing or unbuildable dependency chain was: ['xrandr']
>>> ERROR: Required build target 'mistysom-image' has no buildable 
>>> providers.
>>> Missing or unbuildable dependency chain was: ['mistysom-image', 
>>> 'xrandr']
>>>
>>> Can I override the setting in locl.conf from my custom recipe? How?
>>>
>>> Ron
>>>
>>>
>>>
>>>
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#58885): https://lists.yoctoproject.org/g/yocto/message/58885
>>> Mute This Topic: https://lists.yoctoproject.org/mt/95921674/7254380
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ron.eggler@mistywest.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

