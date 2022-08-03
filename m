Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EED26C19F2B
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 20:26:40 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web08.474.1659558394852128702
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 13:26:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IDLm9/O2;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 t2-20020a17090a4e4200b001f21572f3a4so3346424pjl.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 13:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=njLvvxHTG/gtA1m3ydvO9XqvA2w9iGlf10YpenS6gsk=;
        b=IDLm9/O2+rdcS5oOU5DhVXIDiCjdmXKIjv4p7lgMMEGwLpHMiVQE+JZU/a8TDq6xo3
         qzc7r8k4QqJu/i8ogVh1n4PLLt+sa5nW/gvbSHgjE+Tw1u75WC00wTYw+WM5QJSMfJ21
         0mSECA0hOUjjxhMbGBP6RdgNjo2me0urLo5gOgwaqi7gbhlf0qGNg1GcowqqqdbDMRjH
         vTwk5u2DKLoFpTGzvO2um1Rqdqu+GdCd/a+kuBix4kOKRn2OGRg7zRs+VLLsu8F9skD9
         TsxPBpnuB8hQTLmPwDJQ13vKHIkeH6uQFv7YJRBfO/riitdYC30kIWacOoC+l3/WjYci
         h9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=njLvvxHTG/gtA1m3ydvO9XqvA2w9iGlf10YpenS6gsk=;
        b=QyDeFvSprl5GvQa3U69NPn0pNKurmnOpppYShweN7BL1vZhjUY5wV9aAmaMZBOOUjV
         C0/B1Hyz1xe/mpkFMBoGZ6drWllX6Z5tzBY5gi+ICXs9g/TjsYchUUmNBkvCD+hsaW+b
         30sXqn9Fs/YrCAYVVfuaZxfZvVv6jeG6bfFtnC5Iux7AoKZ57OLLzIUhBRi7dN2cV6uc
         JPtzHPowVk2nkYqzQvGDaUos1uMNWtB/xnDZNPKVoK1zKRUfsm2cZ4KF+1SwSHtbyOT0
         J6mXuNM8m6ExLuEmlf2c8xicPFG7R4tD1UGweMTy2NlhkFQm3SF2Nm5lGKmNtZridBS4
         dZVg==
X-Gm-Message-State: ACgBeo3ffKGX/QgFxE8KnAkIAsbIKXa+HCtUAYm/qODb2cGBLdR/C31y
	0mcqX78cnpVNGspCR+8QxLA=
X-Google-Smtp-Source: 
 AA6agR68Xo03EiXEEW7h92oS76r/qk3LE/suUN6zw9M632g5RaNvKiaG7V8zbeWROFng75oYrrRmrQ==
X-Received: by 2002:a17:90a:8a8d:b0:1f3:155:3324 with SMTP id
 x13-20020a17090a8a8d00b001f301553324mr6496107pjn.89.1659558394171;
        Wed, 03 Aug 2022 13:26:34 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 z28-20020aa7991c000000b0052d96fb3366sm6470562pff.207.2022.08.03.13.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 13:26:33 -0700 (PDT)
Message-ID: <0b50f8da-dee0-4060-b9b5-f488df13d46c@gmail.com>
Date: Wed, 3 Aug 2022 13:24:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] wireguard fails with "exports duplicate symbol
 blake2s_final (owned by kernel)" in latest poky / meta-openembedded #dunfell
Content-Language: en-US
To: c.finck@enlyze.com
References: <CswA.1659543156268567471.pbrp@lists.yoctoproject.org>
Cc: yocto@lists.yoctoproject.org
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <CswA.1659543156268567471.pbrp@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 20:26:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57774

Colin,


On 8/3/22 09:12, Colin Finck wrote:
> Hi all,
>
> I've just upgraded to latest poky and meta-openembedded and deployed a build to one of our devices.
> Unfortunately, wireguard no longer works. It fails with
>
>      wireguard: exports duplicate symbol blake2s_final (owned by kernel)

This wireguard commit appears to address the issue.

https://git.zx2c4.com/wireguard-linux-compat/commit/?id=52978fcc265c472773b0b334d31705573ae8cb98

can you try this and send a patch if it works?

-armin
>
> when the module is loaded.
>
> Judging from the message, it looks like https://git.yoctoproject.org/poky/commit/?h=dunfell&id=387d23c02ea0e59ea31d52a40917556648389e96 is related.
> Could someone have a look?
>
> Thanks!
>
> Colin
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57771): https://lists.yoctoproject.org/g/yocto/message/57771
> Mute This Topic: https://lists.yoctoproject.org/mt/92795671/3616698
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


