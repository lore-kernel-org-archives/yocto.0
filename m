Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBA2FC7EE22
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 18:38:07 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web10.4523.1683830279840945976
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 11:37:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=OGTa9IAg;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-b9e27684b53so7964206276.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 11:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683830279; x=1686422279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BObFGqp1kySVJ/Ja2nr+XrZWKTU44jDdjJnT4hZc1wE=;
        b=OGTa9IAg5tOePkdT0g3fxl6cDsZysddrxvzFk6aeQXlOsF3hlI6J0lj4VbtwsCqgpg
         u8SlD4yalHGp2KMMWKbmASsU+zgMlIGQQhqjIZd2QNNBHwLrNMJcwkqlCLMba6AxGy42
         GPMlVr/Z1dcpe/A/TYh3+O9LYbwJqnxZ/t1xbK+CuH7hWWLHLT+1dLe+dy++JouKJRZz
         VGEsyxY9JF/Wg4oNDx3PDbJXAW6TUM16Sq/n2sD1TkKknyYNUfxZb6icjDuBSHqg4e/o
         BkJdnm6dt2rjb2FShU4uzLBnvnfcQ7ygzGqjyhaMqNdonk/ZEGAteMDgmKaGBzNvRgLZ
         8q1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683830279; x=1686422279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BObFGqp1kySVJ/Ja2nr+XrZWKTU44jDdjJnT4hZc1wE=;
        b=PqojpzPliUusmdMrm2YDHaW34ZrWDgsgh9fIi5Mr8/f9EWkcdey+gAeqbGdZ52FOxB
         V7jCVpIdGQit1yQukA4RsVT3pRheyIQib2ZMBWOtHe60jLHsVD9L65q0LdefA96kQTpv
         hOIKjuyyBoFLhegQG/kIzlXNC9wnVrA2GBJGGj/GvTNbQkiAEXvSVwiYUJwSmQexs9kl
         wf+FyhDGpQ6bXt9dVqOJ0RSBLdJK6xVwc5NWWSLeiL8adesWlxNMDpb09Yn5KeV/Ij2Q
         Gb3dRxjQq0DXNe2TO3NPqz/KKcslJyDNtDK771hY3mQEkGoy9JWgnpL13dxBI3rRNjGi
         x4dQ==
X-Gm-Message-State: AC+VfDwFiwpotjqn0O6XQKPmBlr0LcvmnxAmGLZ0Q/mJzQu5n9aFiDnZ
	EZ0wgP0Dw1xQtzE6dJlrXf8=
X-Google-Smtp-Source: ACHHUZ4i4ChI4G3PShSmMbGeS/7GMYxdFUMd9gSYuM8j0aVgZpK+BbT4ZvQG+ITxyf4WGqdx1vXX+w==
X-Received: by 2002:a25:c086:0:b0:ba1:969c:eb99 with SMTP id c128-20020a25c086000000b00ba1969ceb99mr18222376ybf.35.1683830279001;
        Thu, 11 May 2023 11:37:59 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:f345:2295:bbfb:ef27? ([2600:1700:9190:ba10:f345:2295:bbfb:ef27])
        by smtp.gmail.com with ESMTPSA id h6-20020a258a86000000b00b9a80b9e08esm4502004ybl.12.2023.05.11.11.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 11:37:58 -0700 (PDT)
Message-ID: <9d7c8b30-61ce-dc81-1eb9-f528697cf2b9@gmail.com>
Date: Thu, 11 May 2023 14:37:58 -0400
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
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 18:38:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59996



On 5/10/23 10:51 AM, Stefan Berger wrote:
> This patchset removes a kernel patch related to overlayfs and IMA appraisal file
> change notifictions and a squashfs xattr kernel config option.
> Further, it fixes the do_configure function and renames linux-%.bbappend to
> linux-yocto%.bbappend to avoid side-effects in build targets unrelated to
> the Linux kernel, such as kernel-firmware.

Thanks for the updates.

Locally this builds fine. OEQA runtime test pass and so does the 
yocto-check-layer. I am currently build on my CI for other Arches. Once 
I get a clean build I will merge to master.


BR,
Armin
>
>     Stefan
>
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


