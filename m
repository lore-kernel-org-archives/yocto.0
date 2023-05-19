Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45E14C77B7F
	for <webhook@archiver.kernel.org>; Fri, 19 May 2023 14:59:29 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.28533.1684508360069319584
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 May 2023 07:59:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=qLgbsenp;
 spf=pass (domain: gmail.com, ip: 209.85.219.172, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-ba81ded8d3eso4864266276.3
        for <yocto@lists.yoctoproject.org>; Fri, 19 May 2023 07:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684508359; x=1687100359;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rup1+b0ZVe2K0Mh2s/9qh+QdeWBfpusTZbHQ/d+G+eM=;
        b=qLgbsenpPKVOWezI2Q5AWFAj5mP+J3yv1Z/N6QMcewttzAGV2ykz4qI2hmPVI+BtBt
         xTPJEex5QW+p0pjpCm6NeASu8nzL8zKdsCOU3kFu9hI+O6HLcoT006Y73x/vQvZLOR4y
         r9d/e65vvIk5eYbTfp1gXbX4XPbIw9fPI3h0Ol9BMWCKHWP4X1Ih5ZOfmjQLaMGmhCVw
         l6c6Rhq/E2ZJY3wCDFdixQ81tmAXjYcZw4ggwbUGlSpdPGSkCEik+97xAZFRtE8youQK
         aoKS/864uM5BLgMsOkQnzkOuLTqtSJsKTi3L0WpReD/GNTzujpsKwyDahC+dYVCJHeEH
         yPkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684508359; x=1687100359;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rup1+b0ZVe2K0Mh2s/9qh+QdeWBfpusTZbHQ/d+G+eM=;
        b=SX2fefzm7WGFU1OSSIo+7D3nA6E9p91AoWhx+w/8jJlGW7o38jjoXF81Z6uKXFLhBY
         Lm4zgI/jvdMvkR9o3nu7azGxeUSulXxnM8dpI9Ur5WNW6OuZqAdf4VdSvUWfjgJ5UHxW
         kjaYNze1yxOVcioIeZ3ce8dFZVVqrhamCUEQwBhTkatoM4SK7oy4fkZ5e8BMmKOBUdrv
         Fx6IBw1aapzKkJe0YOZumHbUEIgVDRR3eGk47QpjoevuXvsgIlGwoR+GZ//HGNUKeXKL
         93q4W0iyglLnsF4/NcNtG+voddkK4RnUc7yP5/BkFinA3viiXt1ynEwu13mJK97u9/xU
         5GOw==
X-Gm-Message-State: AC+VfDxq6wl1OWE0XPxLRKOjpIgeJ2Zf3wYlGXZWHwLyk9VbQLKlXVVv
	x+QihZH1BgJgQrCtuzlSvdE=
X-Google-Smtp-Source: ACHHUZ5pT3WoIGi8rj8LzM+GOS0HInUcSxM4ein6GdiGJStc0ar+mBTKcp7IM0RGHaWhtKg5bh9+6w==
X-Received: by 2002:a25:385:0:b0:ba8:54c4:3136 with SMTP id 127-20020a250385000000b00ba854c43136mr2205008ybd.52.1684508359143;
        Fri, 19 May 2023 07:59:19 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:a9ca:4979:4b00:41d4? ([2600:1700:9190:ba10:a9ca:4979:4b00:41d4])
        by smtp.gmail.com with ESMTPSA id s190-20020a2577c7000000b00ba012dbdf0asm1102740ybc.3.2023.05.19.07.59.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 07:59:18 -0700 (PDT)
Message-ID: <71433182-8142-4eca-8e21-7b70edc770c8@gmail.com>
Date: Fri, 19 May 2023 10:59:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [meta-security] proper place for recipes for kernel fuzzing
Content-Language: en-US
To: =?UTF-8?Q?Wei=c3=9f=2c_Simone?= <Simone.Weiss@elektrobit.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <a96da1ac888404dad50b57b57450aff07d193ab1.camel@elektrobit.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <a96da1ac888404dad50b57b57450aff07d193ab1.camel@elektrobit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 May 2023 14:59:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60076


Hello,

On 5/19/23 9:18 AM, Weiß, Simone wrote:
> Hi,
>
>
> I want to upstream recipes for syzkaller to provide an easy option to fuzz
> yocto-based kernel. I would like to check if meta-security could be a good
> place to add this.

The syzkaller recipe itself is in meta-oe. Are talking about adding additional recipes to enhance syzkaller?

BR,
Armin

> Let me sketch the intended change-set:
>
> 1) DISTRO_FEATURE: Add a syzkaller distribution feature.
>
> 2) Recipes for syzkaller: Of course shared code should be in an *.inc file
> - recipe for host:  This recipe builds and deploys host binaries and needed
> configuration for syzkaller. In general the host that is connected to the
> fuzzing target could be of any architecture. If the fuzzing hosts architecture
> equals your build hosts architecture, the native variant of this recipe can be
> used. If the fuzzing hosts architecture equals the fuzzing targets architecture,
> but not the build machine architecture the cross-compiled variant can be used.
> That should be a rare situation though...
> - recipe for target: the needed target part of course.
>
> Those recipes should be added to the security-*-image.bb recipes.
>
> - kernel configuration
> Syzkaller needs certain kernel configuration like CONFIG_KCOV,
> CONFIG_DEBUGS_FS,... enabled. Add those in a fragment and provide a scc.
>
>
> Would you be fine with adding sth like this to meta-security?



> Do you
> have any additional/other suggestions?
>
> Of course I would also be willing to maintain this recipe then
>
> Thanks,
> Simone
>


