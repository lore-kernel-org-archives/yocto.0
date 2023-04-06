Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBB7C7618D
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 12:38:55 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web10.157146.1680784725650145631
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 05:38:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SmRKCkjC;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: akuster808@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-17aa62d0a4aso42157870fac.4
        for <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 05:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680784725; x=1683376725;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EAD+ENlqFo18CLvA+Z1LVvCPwxOvttj/gReWRog9yFk=;
        b=SmRKCkjCUW05uBjCSauGvwvaCLZHTAGowIJSb1xTTPmS/fpLt/KiQaYIS1CX6Ee10I
         ZkDRcHCeWiFIsPe0U+iRknEoK4bNOYQl7cwdYxBsVp92HqayPlqcIPmiu56r0xIxJRFF
         CjszNDNCpkmetSulCimN0WCK7tsY6XUTJ1uDvsDC7t52kKjb5BFBeAIk2s2+wWG2RNrT
         6WYg9ZFsj+pLQephI32fVLValD9xMr+Iu/EzRfK6cOkNBY6PWfJRqOocPHeKxN49WN0v
         8iOWh0pEljs5he3PrdL4FgTmyh6FA6vq+O3330AvdWHe6bw0vo6D79JTjvXhBPI8fme7
         W/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680784725; x=1683376725;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EAD+ENlqFo18CLvA+Z1LVvCPwxOvttj/gReWRog9yFk=;
        b=y/woYx0D79EFjswuRrN+Ne2nhC56xoelwDIPwEq9tav4RSpP5KJVSVWOVPjd4UsEJT
         RC20GQSzNP9ImDCkqMHjZ5CGNkrdN9HHDbgqC71rGTEOm7pq5rL/rHsC8qHQYNoG/aQ4
         cEkt8rJouOBqu6e73xTZxDXK/jHWsWDPwORvQJuU7hpf5GhR2rhgm8JVFdWu/GgJ9H0+
         iShADOo/PtUMxKhON4qjUeJy4Hc6cWY5NAO7ADp/61VPBY+gU2u6HldAuKaiKLkeeDBC
         8xPwqXqz7oNMSb3qfDWmRpiaRxAtPuSs0Yaw3iR0MVn83zWgWXnuapm2S1A57nRbL11o
         P9Gg==
X-Gm-Message-State: AAQBX9cZZH3oPIXDnsSINGD+TDwdmDu0rGFoBDBwZO8/3mCD8skj0/Oo
	d+xeTbaGg6ppD+11KPVI/WU=
X-Google-Smtp-Source: AKy350YIs2tr8uDlh433RRkoUs6VY8DRVoiWtEegI+pr4d8i6NmdNr36BV0JFwGejGycRGqIISNa2A==
X-Received: by 2002:a05:6870:e30c:b0:177:a9ae:d73 with SMTP id z12-20020a056870e30c00b00177a9ae0d73mr5236577oad.42.1680784724884;
        Thu, 06 Apr 2023 05:38:44 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:3249:c5b2:756:1575? ([2600:1700:9190:ba10:3249:c5b2:756:1575])
        by smtp.gmail.com with ESMTPSA id tc20-20020a056871871400b0017aa2cd117asm614459oab.13.2023.04.06.05.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 05:38:44 -0700 (PDT)
Message-ID: <23455dab-7b92-09d5-da3f-9293ae4fa584@gmail.com>
Date: Thu, 6 Apr 2023 08:38:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [meta-security][PATCH v3] parsec-service: update from
 1.1.0 to 1.2.0-rc1
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <deecd5c0-3ca1-b40b-83f7-6de4fa657ba9@gmail.com>
 <24425.1680519199347121026@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <24425.1680519199347121026@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 12:38:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59628



On 4/3/23 6:53 AM, Anton Antonov wrote:
> On Sat, Apr 1, 2023 at 05:50 AM, Armin Kuster wrote:
>
>         parsec-service 1.1.0 fails to compile with latest tpm2-tss update
>         in meta-security:
>
>     Thanks for the update.
>     This patch is currently in a test build.
>     Just a note. If this version ends up being the official one being
>     supported in the upcoming 4.2 release, when parsec-service 1.2.0
>     official drops and is added, we will need to us "EPOCH" as I
>     believe "-rc1" being dropped will signal the version going backwards.
>
> I think Parsec would fail to be built with this patch after these 
> patches in OE-core:
>
> https://git.yoctoproject.org/poky/commit/?id=2b12c58724d250d1faf24072128e2de75dfe2c15
>
> https://git.yoctoproject.org/poky/commit/?id=4d9886e1435dba3785973cc920865f8ab67e644d
>
> Updates for cargo-update-recipe-crates are under review and the 1.2.0 
> release recipe would solve the issue.
>

1.2.0 released yesterday. Is someone planning on sending  a new series. 
If not, I can give it a shot.

- Armin
>
> Cheers,
>
> Anton
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59596): https://lists.yoctoproject.org/g/yocto/message/59596
> Mute This Topic: https://lists.yoctoproject.org/mt/97876594/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


