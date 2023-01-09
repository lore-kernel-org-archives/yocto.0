Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A691C5479D
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 12:07:58 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.70020.1673266069216440133
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 04:07:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20210112.gappssmtp.com header.s=20210112 header.b=Fp3HTvYU;
 spf=pass (domain: smile.fr, ip: 209.85.128.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f52.google.com with SMTP id g10so6102097wmo.1
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 04:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Q9a2h90/sHas0X6/72sRcOHu5aXW4tBdwB+G0RTIkb8=;
        b=Fp3HTvYUlbYELG6QcxXn9mzTO/8pgiXJsVLdivQu/qK5VGlpZmQZXeS0Fvm6H9BOgz
         3wYl+j4UT8PLIhMqj/lmAp/uWzt2eaIvwV+5017BjLqsTxotfLezRt8HVlrtdQAfjaFI
         Jfm/6uvzlRERyvgu3Uma8zC28NA0Bn0NhpztNP/WIWdOCpdhnzQLWKbGDyvy3GOzeMWg
         XZlsdPp4lElM6VUaVdj9ae0IXQZsvgrhetkZlEtlK/4luITXRnSWsKZiVln0z7GarO9y
         P7AmRU0jAH/583sF3tav/pVbd/x2v/NJwmJ/wko/whRsbL1gLxpMZGX02XC/HUssGqx2
         Lk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q9a2h90/sHas0X6/72sRcOHu5aXW4tBdwB+G0RTIkb8=;
        b=xHXSgcLcTV59o+7NVi2CqiRftTDmtFg1tD7J35sUyKDJLNeFn/Oun5+tKoVq73EK4E
         cSJjFUjkPU93ir0Qc5m6JbMJ9vBle5ltLytqqqR8AGDNoNBkr/lHvDzCaSWXmXSBQUn8
         qzS9obE5TTlblc7E3f9Y7DPOBNi4lnqRo0+3nHGN3NUsFMDymOGffbnWxgIdlJQVL7Ny
         UQBSllvUeXRRe6TGIuMIq6ncWWEpJlXw36VFA+xSvnX01IifmwDlmzNwJNikz2Q/8fcM
         Az4hAU8SCOvFJ+RKXx6a0ixigK6wzYD7QBLfRbPPpQiTi+r9eByP2+UuEgYtGjRWTm2j
         QNFQ==
X-Gm-Message-State: AFqh2kre3qADUhUf4Qn5PGXUSBr2lOJNRSvVDQ8ePjKWiduoMcMXT8xI
	+UFPCMSWv6EAn9ulnjclpSIPWA==
X-Google-Smtp-Source: AMrXdXt8mh10YTRykT6WRhS1AHHuY8x0mPtq8VsfwxfXN3MSTAojGVzhL75RQfXRUxdY8zrbXG/kQg==
X-Received: by 2002:a05:600c:1f0e:b0:3cf:497c:c59e with SMTP id bd14-20020a05600c1f0e00b003cf497cc59emr47039787wmb.6.1673266067429;
        Mon, 09 Jan 2023 04:07:47 -0800 (PST)
Received: from [192.168.0.28] (89-159-1-53.rev.numericable.fr. [89.159.1.53])
        by smtp.gmail.com with ESMTPSA id o21-20020a1c7515000000b003d995a704fdsm11181708wmc.33.2023.01.09.04.07.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 04:07:47 -0800 (PST)
Message-ID: <09830d5e-a4c8-ae78-a161-0e93cbd85c1a@smile.fr>
Date: Mon, 9 Jan 2023 13:07:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [yocto] Git repo setup for Yocto upstream contribution
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>
References: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
 <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 12:07:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58946

On 1/9/23 10:29, Alexander Kanavin wrote:
> I've been making patches against an integrated poky checkout for many
> years, including bitbake patches. They're usually correctly picked up
> and applied; you only need to ensure you route them to correct mailing
> lists.

Ok, I'll keep it that way.

Thanks!

> 
> Alex
> 
> On Sat, 7 Jan 2023 at 14:05, Yoann Congal <yoann.congal@smile.fr> wrote:
>>
>> Hi,
>>
>> Since I plan to work regularly on upstream Yocto and contributing, I
>> wonder about the best way to best setup my git repos to do that...
>>
>> I've started with the upstream poky repo but when I make a commit on,
>> for example, bitbake, my patch applies on a bitbake/some-path file which
>> does not exist in the bitbake repo (only "some-path" exists in the
>> bitbake repo).
>>
>> Is this something I should address ? I found some patches for bitbake in
>> the mailing list that are for "bitbake/..." paths... So, maybe, basing
>> my patches on the poky repo is totally OK for now...?
>>
>> To the Yocto maintainers, how do you manage this (poky repo, combo-layer
>> and individual bitbake/doc/meta-yocto repo) ?
>>
>> Note: I have found the "combo-layer splitpatch" tool but it does not
>> look like a full solution... Maybe I'm missing something?
>>
>> Thanks!
>> --
>> Yoann Congal ("yocton" on IRC)
>> Smile ECS - Tech Expert

-- 
Yoann Congal
Smile ECS - Tech Expert

