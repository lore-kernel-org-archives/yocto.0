Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC497C77B7D
	for <webhook@archiver.kernel.org>; Sat, 13 May 2023 10:09:18 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.44680.1683972552916419675
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 May 2023 03:09:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=CBBLZiLe;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-55a10577911so157517507b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 13 May 2023 03:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683972552; x=1686564552;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2QkyrMtrarEH7fmyQBYx/c676TSnYpmP6sEBNUm+AZs=;
        b=CBBLZiLe9XeltaGcoDBxL9Iks1akRaAg5epeCh7nGsz/3OJRRvvJiCt9naxVuERBE2
         MUW1gfe92MYZ5rCYqwt79UXWn6fIP71JTeKFzDgvJ5hffrCv7o8CzREHY00zXF4TkS/y
         5+f6Z5oa4bx7riBzKLAPOClgLSZUTiJ1QKdaBkeqc/7y5aNRu1RG8yB9mXVO/yioTLQm
         ZsBx45l8KOtAnCbE4oS2Fl2rFuvLWQhQZR8NnmpP/F4U+OuxkADF4O+yKk8hh5Fpo7mv
         19MnicWj6ZVh87QC9/HClmIRJMHTRJQKfh8Xq8D5Vnm5gVD8lJtuAq0OZeNLR4KQ+VTa
         FOIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683972552; x=1686564552;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2QkyrMtrarEH7fmyQBYx/c676TSnYpmP6sEBNUm+AZs=;
        b=b9dwRaeXxqKLag4OAp3Mq22a0qYdt5souPON3LmgyPwI/xTJAxSMR/U2d+6NlrHO+v
         Utf9FiH5I4xLHAVwtwHF6jyX4Q0VMQ5ZPPmTpHtmeBPWCD1zw2/Y6j0BZsuB6f6sTyMo
         4cyg3cNJ//ufvz5Ue5qmI/AO40jh1amZOkbPdqkNnrSoEEz/DR3xhKAOkK03hs5CZn53
         IYXi0lcfwxCGuww38E14CaJ4XcK2Wwu8qi2XNvTwktt/fFm7kmqTO0iRJYByVFuHfBIw
         IB5zD/y5GHRTYyqNMyZ584UMK1wPx3Hezmsv+gYgJ64In2TLPXuUWBdLhj5WXgiYRtZd
         zzdw==
X-Gm-Message-State: AC+VfDygqpTdfzSOccMYpI4gJnKRlh7oiXRAuXRMvtyYTIuwpwSbcPbP
	LNuVNcxWqsFl11gbqwK8JzA=
X-Google-Smtp-Source: ACHHUZ4KGB886WTf0sVga1ltAURd5gCavq6kKktXA7eZM2kF+2rJrzsyQP/spoSmmxVE6vxeShUlww==
X-Received: by 2002:a0d:f581:0:b0:55a:26d2:2e5 with SMTP id e123-20020a0df581000000b0055a26d202e5mr26898477ywf.23.1683972551897;
        Sat, 13 May 2023 03:09:11 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:8df5:b412:d499:5840? ([2600:1700:9190:ba10:8df5:b412:d499:5840])
        by smtp.gmail.com with ESMTPSA id m63-20020a0dfc42000000b00545a08184desm6366292ywf.110.2023.05.13.03.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 03:09:11 -0700 (PDT)
Message-ID: <b4f8fcf5-6adb-f051-3816-771572a5e7d7@gmail.com>
Date: Sat, 13 May 2023 06:09:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [meta-security][PATCH v2 0/4] Fix some issues due to IMA related
 changes
Content-Language: en-US
To: Stefan Berger <stefanb@linux.ibm.com>, yocto@lists.yoctoproject.org
Cc: quaresma.jose@gmail.com, mikko.rapeli@linaro.org
References: <20230510145125.1067280-1-stefanb@linux.ibm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230510145125.1067280-1-stefanb@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 May 2023 10:09:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60007



On 5/10/23 10:51 AM, Stefan Berger wrote:
> This patchset removes a kernel patch related to overlayfs and IMA appraisal file
> change notifictions and a squashfs xattr kernel config option.
> Further, it fixes the do_configure function and renames linux-%.bbappend to
> linux-yocto%.bbappend to avoid side-effects in build targets unrelated to
> the Linux kernel, such as kernel-firmware.
>
>     Stefan

Merged.

thanks
> Stefan Berger (4):
>    linux: overlayfs: Drop kernel patch resolving a file change
>      notification issue
>    ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=y from ima.cfg
>    integrity: Fix the do_configure function
>    integrity: Rename linux-%.bbappend to linux-yocto%.bbappend
>
>   ...linux-%.bbappend => linux-yocto%.bbappend} |  0
>   ...Increment-iversion-upon-file-changes.patch | 42 -------------------
>   .../recipes-kernel/linux/linux/ima.cfg        |  1 -
>   .../recipes-kernel/linux/linux_ima.inc        |  7 ++--
>   4 files changed, 4 insertions(+), 46 deletions(-)
>   rename meta-integrity/recipes-kernel/linux/{linux-%.bbappend => linux-yocto%.bbappend} (100%)
>   delete mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>


