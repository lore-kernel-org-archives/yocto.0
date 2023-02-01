Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A84C636CD
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 13:19:52 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
 by mx.groups.io with SMTP id smtpd.web11.22902.1675257584320705148
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 05:19:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JVQHLt/j;
 spf=pass (domain: gmail.com, ip: 209.85.161.51, mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f51.google.com with SMTP id k15-20020a4adfaf000000b00517450f9bd7so1173076ook.8
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 05:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F7cbexKsjgUPZG6/4lIh65e0F2kMrbawHeJPHSsaSdg=;
        b=JVQHLt/jMTPdRrEf5FrzBc64WUDLoRHL8Iob2lsol36OJc00W++fa0lHnhRV2DjJAt
         ClM/rN6XIjfnYeP7ylD+eqOCE4wn41NK73ILmjCGiptiR/0z1Z7Stb23Vx2B0kG0kFJE
         Sdv3Vaiyact+DE9VbGxa0YeaGbs8YXbgTJZrH8x0lvdFDIQ/us56VseIWQ/1fduRDxC7
         aguy1/tQS3cZJ+/si/vfgf+R4qmeYi8N62bTwqHCmRiGhlYWL19nv0N+m9lrBNsxuJLq
         Ikf95Zjr9XQk7OsZQpg3zmuxru3n8d0vVxrAUpVy7iwHkjWiuLoSt7j7vCP1eV639ZAp
         ulKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F7cbexKsjgUPZG6/4lIh65e0F2kMrbawHeJPHSsaSdg=;
        b=P54iGk3EKguydFKjz0+P62uJaicrF5/9Ojsbin6jHxA9+G4QzgfxZiRO+NqC7eXDd2
         zAh6V9iB+EqtUisrSmLTK4GGwtEzpKlzwvroTnaAd3EWssPekS7hm5mPoWxm8VNf42bK
         C8YHF25m3BoSqj0dpWn4v5LHqQOOZ2Pba0OJxBOhbqKhB+dSXFIYSXMo+LS9ZaN1NhbC
         NHQ/hN5QZ/Eg+XLEgjtQhvpnKugRYt48uHxtzZURow9dnSrnJCm8HSwCHey0RLWRN2O8
         u6+jQk8zxNMpmhXw2IPYeVNTldE6w9PPEpnd8gd3Ln5DpLcvsZWEB1Y/vCpxZIWALEcw
         niDg==
X-Gm-Message-State: AO0yUKUZGuKspVZQ+v4u5SVxlah952N8BPkdmRQsq654o6Le4aN9r6Jk
	oEc7Rh/qNRCrj88VrehC73Y=
X-Google-Smtp-Source: AK7set9UJgU/fED3zoIOLrK9yHs5ALlbg1wSyFnaR2XolJ2bzqy10ngbaGSbdc0KUFBjqsTOmd5qNg==
X-Received: by 2002:a05:6820:1892:b0:517:5714:8355 with SMTP id bm18-20020a056820189200b0051757148355mr1311141oob.9.1675257583535;
        Wed, 01 Feb 2023 05:19:43 -0800 (PST)
Received: from ?IPV6:2600:1700:9190:ba10:47a4:b49a:4424:1351? ([2600:1700:9190:ba10:47a4:b49a:4424:1351])
        by smtp.gmail.com with ESMTPSA id b4-20020a4ab484000000b004fca8a11c61sm7187926ooo.3.2023.02.01.05.19.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 05:19:43 -0800 (PST)
Message-ID: <87c2bde7-c0d8-a61b-f6da-5557f3347ced@gmail.com>
Date: Wed, 1 Feb 2023 08:19:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [meta-security][PATCH] linux-yocto: drop version from
 bbappends
Content-Language: en-US
To: Mikko Rapeli <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org
References: <20230130110106.4002198-1-mikko.rapeli@linaro.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230130110106.4002198-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 13:19:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59128



On 1/30/23 6:01 AM, Mikko Rapeli wrote:
> These bbappends apply to multiple kernel versions so no
> need to make them version dependent. Fixes recipe parsing when
> using meta-security master branch on kirkstone. In our custom layer we
> set layer compatibility for kirkstone and I understand why meta-security
> upstream would not want to do that:
>
> LAYERSERIES_COMPAT_security-layer += 'kirkstone'
> LAYERSERIES_COMPAT_parsec-layer += 'kirkstone'
> LAYERSERIES_COMPAT_tpm-layer += 'kirkstone'
>
> While I work towards supporting also yocto master branch and newer
> releases than kirkstone, I would appreciate if I would not have to
> branch off layers over minor details like this.

Is this a dup of the one sent earlier?

-armin
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>   .../linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend}    | 0
>   .../linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend}    | 0
>   2 files changed, 0 insertions(+), 0 deletions(-)
>   rename meta-tpm/recipes-kernel/linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend} (100%)
>   rename recipes-kernel/linux/{linux-yocto_6.%.bbappend => linux-yocto_%.bbappend} (100%)
>
> diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_%.bbappend
> similarity index 100%
> rename from meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend
> rename to meta-tpm/recipes-kernel/linux/linux-yocto_%.bbappend
> diff --git a/recipes-kernel/linux/linux-yocto_6.%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
> similarity index 100%
> rename from recipes-kernel/linux/linux-yocto_6.%.bbappend
> rename to recipes-kernel/linux/linux-yocto_%.bbappend
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59099): https://lists.yoctoproject.org/g/yocto/message/59099
> Mute This Topic: https://lists.yoctoproject.org/mt/96625229/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


